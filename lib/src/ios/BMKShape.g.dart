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

class BMKShape extends NSObject with BMKAnnotation {
  //region constants
  static const String name__ = 'BMKShape';

  
  //endregion

  //region creators
  static Future<BMKShape> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKShape');
    final object = BMKShape()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKShape>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKShape', {'length': length});
  
    final List<BMKShape> typedResult = resultBatch.map((result) => BMKShape()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_title() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKShape::get_title", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_subtitle() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKShape::get_subtitle", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_title(String title) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKShape::set_title', {'refId': refId, "title": title});
  
  
  }
  
  Future<void> set_subtitle(String subtitle) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKShape::set_subtitle', {'refId': refId, "subtitle": subtitle});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension BMKShape_Batch on List<BMKShape> {
  //region getters
  Future<List<String>> get_title_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKShape::get_title_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_subtitle_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKShape::get_subtitle_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_title_batch(List<String> title) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKShape::set_title_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "title": title[__i__]}]);
  
  
  }
  
  Future<void> set_subtitle_batch(List<String> subtitle) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKShape::set_subtitle_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "subtitle": subtitle[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}