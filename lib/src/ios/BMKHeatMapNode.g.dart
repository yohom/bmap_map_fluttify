// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class BMKHeatMapNode extends NSObject  {
  //region constants
  static const String name__ = 'BMKHeatMapNode';

  
  //endregion

  //region creators
  static Future<BMKHeatMapNode> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKHeatMapNode');
    final object = BMKHeatMapNode()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKHeatMapNode>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKHeatMapNode', {'length': length});
  
    final List<BMKHeatMapNode> typedResult = resultBatch.map((result) => BMKHeatMapNode()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<double> get_intensity() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKHeatMapNode::get_intensity", {'refId': refId});
  
    return __result__;
  }
  
  Future<CLLocationCoordinate2D> get_pt() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKHeatMapNode::get_pt", {'refId': refId});
    kNativeObjectPool.add(CLLocationCoordinate2D()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return CLLocationCoordinate2D()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  //endregion

  //region setters
  Future<void> set_intensity(double intensity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKHeatMapNode::set_intensity', {'refId': refId, "intensity": intensity});
  
  
  }
  
  Future<void> set_pt(CLLocationCoordinate2D pt) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKHeatMapNode::set_pt', {'refId': refId, "pt": pt.refId});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension BMKHeatMapNode_Batch on List<BMKHeatMapNode> {
  //region getters
  Future<List<double>> get_intensity_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKHeatMapNode::get_intensity_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<CLLocationCoordinate2D>> get_pt_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKHeatMapNode::get_pt_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => CLLocationCoordinate2D()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_intensity_batch(List<double> intensity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKHeatMapNode::set_intensity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "intensity": intensity[__i__]}]);
  
  
  }
  
  Future<void> set_pt_batch(List<CLLocationCoordinate2D> pt) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKHeatMapNode::set_pt_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "pt": pt[__i__].refId}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}