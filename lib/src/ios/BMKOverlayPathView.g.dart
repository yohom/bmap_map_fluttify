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

class BMKOverlayPathView extends BMKOverlayView  {
  //region constants
  static const String name__ = 'BMKOverlayPathView';

  
  //endregion

  //region creators
  static Future<BMKOverlayPathView> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKOverlayPathView');
    final object = BMKOverlayPathView()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKOverlayPathView>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKOverlayPathView', {'length': length});
  
    final List<BMKOverlayPathView> typedResult = resultBatch.map((result) => BMKOverlayPathView()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<UIColor> get_fillColor({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_fillColor", {'refId': refId});
    kNativeObjectPool.add(UIColor()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return UIColor()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<UIColor> get_strokeColor({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_strokeColor", {'refId': refId});
    kNativeObjectPool.add(UIColor()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return UIColor()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<double> get_lineWidth({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_lineWidth", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_miterLimit({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_miterLimit", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_lineDashPhase({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_lineDashPhase", {'refId': refId});
  
    return __result__;
  }
  
  Future<List<NSObject>> get_lineDashPattern({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_lineDashPattern", {'refId': refId});
    kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList());
    return (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList();
  }
  
  //endregion

  //region setters
  Future<void> set_fillColor(UIColor fillColor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_fillColor', {'refId': refId, "fillColor": fillColor.refId});
  
  
  }
  
  Future<void> set_strokeColor(UIColor strokeColor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_strokeColor', {'refId': refId, "strokeColor": strokeColor.refId});
  
  
  }
  
  Future<void> set_lineWidth(double lineWidth, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_lineWidth', {'refId': refId, "lineWidth": lineWidth});
  
  
  }
  
  Future<void> set_miterLimit(double miterLimit, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_miterLimit', {'refId': refId, "miterLimit": miterLimit});
  
  
  }
  
  Future<void> set_lineDashPhase(double lineDashPhase, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_lineDashPhase', {'refId': refId, "lineDashPhase": lineDashPhase});
  
  
  }
  
  Future<void> set_lineDashPattern(List<NSObject> lineDashPattern, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_lineDashPattern', {'refId': refId, "lineDashPattern": lineDashPattern.map((it) => it.refId).toList()});
  
  
  }
  
  //endregion

  //region methods
  
  Future<void> createPath({bool viewChannel = true}) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOverlayPathView@$refId::createPath([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::createPath', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> invalidatePath({bool viewChannel = true}) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOverlayPathView@$refId::invalidatePath([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::invalidatePath', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  //endregion
}

extension BMKOverlayPathView_Batch on List<BMKOverlayPathView> {
  //region getters
  Future<List<UIColor>> get_fillColor_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_fillColor_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => UIColor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<UIColor>> get_strokeColor_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_strokeColor_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => UIColor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<double>> get_lineWidth_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_lineWidth_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_miterLimit_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_miterLimit_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_lineDashPhase_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_lineDashPhase_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<List<NSObject>>> get_lineDashPattern_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKOverlayPathView::get_lineDashPattern_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
    kNativeObjectPool.addAll(typedResult.expand((e) => e));
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_fillColor_batch(List<UIColor> fillColor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_fillColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "fillColor": fillColor[__i__].refId}]);
  
  
  }
  
  Future<void> set_strokeColor_batch(List<UIColor> strokeColor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_strokeColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "strokeColor": strokeColor[__i__].refId}]);
  
  
  }
  
  Future<void> set_lineWidth_batch(List<double> lineWidth, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_lineWidth_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "lineWidth": lineWidth[__i__]}]);
  
  
  }
  
  Future<void> set_miterLimit_batch(List<double> miterLimit, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_miterLimit_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "miterLimit": miterLimit[__i__]}]);
  
  
  }
  
  Future<void> set_lineDashPhase_batch(List<double> lineDashPhase, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_lineDashPhase_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "lineDashPhase": lineDashPhase[__i__]}]);
  
  
  }
  
  Future<void> set_lineDashPattern_batch(List<List<NSObject>> lineDashPattern, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::set_lineDashPattern_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "lineDashPattern": lineDashPattern[__i__].map((it) => it.refId).toList()}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<void>> createPath_batch({bool viewChannel = true}) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::createPath_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> invalidatePath_batch({bool viewChannel = true}) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKOverlayPathView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKOverlayPathView::invalidatePath_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  //endregion
}