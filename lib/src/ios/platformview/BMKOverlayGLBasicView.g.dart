// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:convert';
import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

typedef BMKOverlayGLBasicViewCreatedCallback = void Function(BMKOverlayGLBasicView controller);
typedef _OnUiKitViewDispose = Future<void> Function();

class BMKOverlayGLBasicView_iOS extends StatefulWidget {
  const BMKOverlayGLBasicView_iOS({
    Key key,
    this.onViewCreated,
    this.onDispose,
    this.params = const <String, dynamic>{},
    this.gestureRecognizers,
  }) : super(key: key);

  final BMKOverlayGLBasicViewCreatedCallback onViewCreated;
  final _OnUiKitViewDispose onDispose;
  final Map<String, dynamic> params;
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers;

  @override
  _BMKOverlayGLBasicView_iOSState createState() => _BMKOverlayGLBasicView_iOSState();
}

class _BMKOverlayGLBasicView_iOSState extends State<BMKOverlayGLBasicView_iOS> {
  BMKOverlayGLBasicView _controller;

  @override
  Widget build(BuildContext context) {
    final gestureRecognizers = widget.gestureRecognizers ?? <Factory<OneSequenceGestureRecognizer>>{
      Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
    };

    return UiKitView(
      viewType: 'me.yohom/BMKOverlayGLBasicView',
      gestureRecognizers: gestureRecognizers,
      onPlatformViewCreated: _onViewCreated,
      creationParamsCodec: kBmapMapFluttifyMessageCodec,
      creationParams: widget.params,
    );
  }

  void _onViewCreated(int id) async {
    // 碰到一个对象返回的hashCode为0的情况, 造成和这个id冲突了, 这里用一个magic number避免一下
    // 把viewId转换为refId再使用, 使其与其他对象统一
    final refId = await viewId2RefId((2147483647 - id).toString());
    _controller = BMKOverlayGLBasicView()..refId = 'BMKOverlayGLBasicView:$refId';
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
