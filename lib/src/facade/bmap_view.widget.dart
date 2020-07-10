import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bmap_core_fluttify/bmap_core_fluttify.dart';
import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'bmap_location.dart';
import 'enums.dart';
import 'extensions.dart';
import 'models.dart';

part 'bmap_controller.dart';

typedef Future<void> _OnMapCreated(BmapController controller);

/// 百度地图 Widget
class BmapView extends StatefulWidget {
  const BmapView({
    Key key,
    this.onMapCreated,
    this.zoomLevel,
    this.centerCoordinate,
  }) : super(key: key);

  /// 地图创建完成回调
  final _OnMapCreated onMapCreated;

  /// 缩放级别
  ///
  /// 地图的缩放级别一共分为 17 级，从 3 到 19. 数字越大，展示的图面信息越精细
  final double zoomLevel;

  /// 中心点坐标
  final LatLng centerCoordinate;

  @override
  _BmapViewState createState() => _BmapViewState();
}

class _BmapViewState extends State<BmapView> {
  BmapController _controller;
  Widget _mask = Container();
  Widget _widgetLayer;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Stack(
        children: <Widget>[
          if (_widgetLayer != null) _widgetLayer,
          com_baidu_mapapi_map_TextureMapView_Android(
            onDispose: _onPlatformViewDispose,
            onViewCreated: (controller) async {
              _controller = BmapController.android(controller, this);

              // 调用onCreate方法会造成内存泄露! 且官方文档的例子中也没有调用onCreate了
              await controller.onResume();

              if (widget.onMapCreated != null) {
                await widget.onMapCreated(_controller);
              }
            },
          ),
        ],
      );
    } else if (Platform.isIOS) {
      return Stack(
        children: <Widget>[
          if (_widgetLayer != null) _widgetLayer,
          BMKMapView_iOS(
            onDispose: _onPlatformViewDispose,
            onViewCreated: (controller) async {
              _controller = BmapController.ios(controller, this);
              await controller.viewWillAppear();

              if (widget.onMapCreated != null) {
                await widget.onMapCreated(_controller);
              }
            },
          ),
        ],
      );
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }

  Future<List<Uint8List>> widgetToImageData(List<Widget> markerList) async {
    final completer = Completer<List<Uint8List>>();
    final ratio = MediaQuery.of(context).devicePixelRatio;

    final globalKeyList = <GlobalKey>[];
    for (int i = 0; i < markerList.length; i++) globalKeyList.add(GlobalKey());

    setState(() {
      _widgetLayer = Stack(
        children: [
          for (int i = 0; i < markerList.length; i++)
            RepaintBoundary(key: globalKeyList[i], child: markerList[i])
        ],
      );
    });

    // 等待一帧结束再获取图片数据
    WidgetsBinding.instance.addPostFrameCallback((duration) async {
      final result = <Uint8List>[];

      await Future.wait([
        for (final key in globalKeyList)
          (key.currentContext.findRenderObject() as RenderRepaintBoundary)
              .toImage(pixelRatio: ratio)
              .then((image) => image.toByteData(format: ImageByteFormat.png))
              .then((byteData) => byteData.buffer.asUint8List())
              .then((data) => result.add(data))
      ]);

      completer.complete(result);

      // 清空
      setState(() {
        _widgetLayer = null;
      });
    });

    return completer.future;
  }

  @override
  void dispose() {
    final isCurrentPlugin = (Ref it) => it.tag__ == 'bmap_map_fluttify';
    kNativeObjectPool
        .where(isCurrentPlugin)
        .release_batch()
        .then((_) => kNativeObjectPool.removeWhere(isCurrentPlugin));
    super.dispose();
  }

  Future<void> _onPlatformViewDispose() async {
    await _controller?.dispose();
  }
}
