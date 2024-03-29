// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:convert';
import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

typedef MapViewCreatedCallback = void Function(com_baidu_mapapi_map_MapView controller);
typedef _OnAndroidViewDispose = Future<void> Function();

class com_baidu_mapapi_map_MapView_Android extends StatefulWidget {
  const com_baidu_mapapi_map_MapView_Android({
    Key key,
    this.onViewCreated,
    this.onDispose,
    this.params = const <String, dynamic>{},
    this.gestureRecognizers,
    this.hybridComposition = false,
  }) : super(key: key);

  final MapViewCreatedCallback onViewCreated;
  final _OnAndroidViewDispose onDispose;
  final Map<String, dynamic> params;
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers;
  final bool hybridComposition;

  @override
  _com_baidu_mapapi_map_MapView_AndroidState createState() => _com_baidu_mapapi_map_MapView_AndroidState();
}

class _com_baidu_mapapi_map_MapView_AndroidState extends State<com_baidu_mapapi_map_MapView_Android> {
  com_baidu_mapapi_map_MapView _controller;

  @override
  Widget build(BuildContext context) {
    final gestureRecognizers = widget.gestureRecognizers ?? <Factory<OneSequenceGestureRecognizer>>{
      Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
    };

    // hybrid composition version.
    if (widget.hybridComposition) {
      return PlatformViewLink(
        viewType: 'me.yohom/com.baidu.mapapi.map.MapView',
        surfaceFactory: (
          BuildContext context,
          PlatformViewController controller,
        ) {
          return AndroidViewSurface(
            controller: controller,
            gestureRecognizers: gestureRecognizers,
            hitTestBehavior: PlatformViewHitTestBehavior.opaque,
          );
        },
        onCreatePlatformView: (PlatformViewCreationParams params) {
          return PlatformViewsService.initSurfaceAndroidView(
            id: params.id,
            viewType: 'me.yohom/com.baidu.mapapi.map.MapView',
            layoutDirection: TextDirection.ltr,
            creationParams: widget.params,
            creationParamsCodec: kBmapMapFluttifyMessageCodec,
          )
            ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
            ..addOnPlatformViewCreatedListener((id) => _onViewCreated(id))
            ..create();
        },
      );
    } else {
      return AndroidView(
        viewType: 'me.yohom/com.baidu.mapapi.map.MapView',
        gestureRecognizers: gestureRecognizers,
        onPlatformViewCreated: _onViewCreated,
        creationParamsCodec: kBmapMapFluttifyMessageCodec,
        creationParams: widget.params,
      );
    }
  }

  void _onViewCreated(int id) async {
    // 碰到一个对象返回的hashCode为0的情况, 造成和这个id冲突了, 这里用一个magic number避免一下
    // 把viewId转换为refId再使用, 使其与其他对象统一
    final refId = await viewId2RefId((2147483647 - id).toString());
    _controller = com_baidu_mapapi_map_MapView()..refId = 'com.baidu.mapapi.map.MapView:$refId';
    if (widget.onViewCreated != null) {
      widget.onViewCreated(_controller);
    }
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose().whenComplete(() => _controller.release__());
    } else {
      _controller.release__();
    }
    super.dispose();
  }
}
