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
  Widget _widgetLayer = Container();
  final _markerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Stack(
        children: <Widget>[
          RepaintBoundary(key: _markerKey, child: _widgetLayer),
          com_baidu_mapapi_map_TextureMapView_Android(
            onDispose: _onPlatformViewDispose,
            onViewCreated: (controller) async {
              _controller = BmapController.android(controller, this);

              final bundle = await android_os_Bundle.create();
              final context = await android_app_Activity.get();
              await controller.onCreate(context, bundle);

              if (widget.onMapCreated != null) {
                await widget.onMapCreated(_controller);
              }
              await bundle.release__();
            },
          ),
        ],
      );
    } else if (Platform.isIOS) {
      return Stack(
        children: <Widget>[
          RepaintBoundary(key: _markerKey, child: _widgetLayer),
          // 经测试如果不延迟加载会有1/2左右的概率奔溃 看日志是metal的奔溃
          FutureBuilder<bool>(
            initialData: false,
            future: Future.delayed(Duration(seconds: 1), () => true),
            builder: (context, snapshot) {
              if (snapshot.data) {
                return BMKMapView_iOS(
                  onDispose: _onPlatformViewDispose,
                  onViewCreated: (controller) async {
                    _controller = BmapController.ios(controller, this);
                    await controller.viewWillAppear();

                    if (widget.onMapCreated != null) {
                      await widget.onMapCreated(_controller);
                    }
                  },
                );
              } else {
                return Center(child: CupertinoActivityIndicator());
              }
            },
          ),
        ],
      );
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }

  Future<Uint8List> widgetToImageData(Widget marker) {
    final completer = Completer<Uint8List>();
    setState(() {
      _widgetLayer = marker;
    });

    // 等待一帧结束再获取图片数据
    WidgetsBinding.instance.addPostFrameCallback((duration) {
      RenderRepaintBoundary boundary =
          _markerKey.currentContext.findRenderObject();

      boundary
          .toImage(pixelRatio: MediaQuery.of(context).devicePixelRatio)
          .then((image) => image.toByteData(format: ImageByteFormat.png))
          .then((byteData) => byteData.buffer.asUint8List())
          .then((data) => completer.complete(data));
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
    await _controller.dispose();
  }
}
