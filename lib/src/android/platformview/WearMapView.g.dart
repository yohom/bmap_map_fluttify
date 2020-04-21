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

typedef void WearMapViewCreatedCallback(com_baidu_mapapi_map_WearMapView controller);
typedef Future<void> _OnAndroidViewDispose();

class com_baidu_mapapi_map_WearMapView_Android extends StatefulWidget {
  const com_baidu_mapapi_map_WearMapView_Android({
    Key key,
    this.onViewCreated,
    this.onDispose,
    this.var2,
  }) : super(key: key);

  final WearMapViewCreatedCallback onViewCreated;
  final _OnAndroidViewDispose onDispose;

  final com_baidu_mapapi_map_BaiduMapOptions var2;

  @override
  _com_baidu_mapapi_map_WearMapView_AndroidState createState() => _com_baidu_mapapi_map_WearMapView_AndroidState();
}

class _com_baidu_mapapi_map_WearMapView_AndroidState extends State<com_baidu_mapapi_map_WearMapView_Android> {
  com_baidu_mapapi_map_WearMapView _controller;

  @override
  Widget build(BuildContext context) {
    final gestureRecognizers = <Factory<OneSequenceGestureRecognizer>>[
      Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
    ].toSet();

    final messageCodec = StandardMessageCodec();
    return AndroidView(
      viewType: 'com.fluttify/com.baidu.mapapi.map.WearMapView',
      gestureRecognizers: gestureRecognizers,
      onPlatformViewCreated: _onViewCreated,
      creationParamsCodec: messageCodec,
      creationParams: {"var2": widget.var2?.refId ?? -1},
    );
  }

  void _onViewCreated(int id) {
    // 碰到一个对象返回的hashCode为0的情况, 造成和这个id冲突了, 这里用一个magic number避免一下
    _controller = com_baidu_mapapi_map_WearMapView()..refId = 2147483647 - id;
    if (widget.onViewCreated != null) {
      widget.onViewCreated(_controller);
    }
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose().then((_) => _controller.release__());
    }
    super.dispose();
  }
}
