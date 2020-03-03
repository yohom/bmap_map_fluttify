import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

part 'bmap_controller.dart';

typedef Future<void> _OnMapCreated(BmapController controller);

/// 百度地图 Widget
class BmapView extends StatefulWidget {
  const BmapView({
    Key key,
    this.onMapCreated,
  }) : super(key: key);

  /// 地图创建完成回调
  final _OnMapCreated onMapCreated;

  @override
  _BmapViewState createState() => _BmapViewState();
}

class _BmapViewState extends State<BmapView> {
  BmapController _controller;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return com_baidu_mapapi_map_MapView_Android(
        onDispose: _onPlatformViewDispose,
        onViewCreated: (controller) async {
          _controller = BmapController.android(controller, this);

          final bundle = await android_os_Bundle.create();
          final context = await android_app_Activity.get();
          await controller.onCreate(context, bundle);

          if (widget.onMapCreated != null) {
            await widget.onMapCreated(_controller);
          }
          await bundle.release();
        },
      );
    } else if (Platform.isIOS) {
      return BMKMapView_iOS(
        onDispose: _onPlatformViewDispose,
        onViewCreated: (controller) async {
          _controller = BmapController.ios(controller, this);

          if (widget.onMapCreated != null) {
            await widget.onMapCreated(_controller);
          }
        },
      );
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }

  @override
  void dispose() {
    final isCurrentPlugin = (it) => it.tag == 'bmap_map_fluttify';
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
