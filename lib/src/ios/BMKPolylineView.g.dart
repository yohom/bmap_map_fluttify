// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class BMKPolylineView extends BMKOverlayGLBasicView  {
  //region constants
  static const String name__ = 'BMKPolylineView';

  
  //endregion

  //region creators
  static Future<BMKPolylineView> create__({ bool init = true /* ios only */ }) async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createBMKPolylineView', {'init': init});
    final object = BMKPolylineView()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<BMKPolylineView>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchBMKPolylineView', {'length': length, 'init': init});
  
    final List<BMKPolylineView> typedResult = resultBatch.map((result) => BMKPolylineView()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<BMKPolyline> get_polyline({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKPolylineView' : 'com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKPolylineView::get_polyline", {'__this__': this});
    return __result__ == null ? null : (BMKPolyline()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<bool> get_isFocus({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKPolylineView' : 'com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKPolylineView::get_isFocus", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  //endregion

  //region setters
  Future<void> set_isFocus(bool isFocus, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKPolylineView' : 'com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKPolylineView::set_isFocus', <String, dynamic>{'__this__': this, "isFocus": isFocus});
  
  
  }
  
  //endregion

  //region methods
  
  Future<dynamic> initWithPolyline(BMKPolyline polyline, {bool viewChannel = true}) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKPolylineView@$refId::initWithPolyline([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKPolylineView' : 'com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKPolylineView::initWithPolyline', {"polyline": polyline, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = Ref()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  //endregion
}

extension BMKPolylineView_Batch on List<BMKPolylineView> {
  //region getters
  Future<List<BMKPolyline>> get_polyline_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKPolylineView' : 'com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKPolylineView::get_polyline_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => BMKPolyline()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<bool>> get_isFocus_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKPolylineView' : 'com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKPolylineView::get_isFocus_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_isFocus_batch(List<bool> isFocus, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKPolylineView' : 'com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKPolylineView::set_isFocus_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "isFocus": isFocus[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<dynamic>> initWithPolyline_batch(List<BMKPolyline> polyline, {bool viewChannel = true}) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKPolylineView' : 'com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKPolylineView::initWithPolyline_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"polyline": polyline[__i__], "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => Ref()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  //endregion
}