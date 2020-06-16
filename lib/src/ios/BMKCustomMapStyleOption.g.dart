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

class BMKCustomMapStyleOption extends NSObject  {
  //region constants
  static const String name__ = 'BMKCustomMapStyleOption';

  
  //endregion

  //region creators
  static Future<BMKCustomMapStyleOption> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKCustomMapStyleOption');
    final object = BMKCustomMapStyleOption()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKCustomMapStyleOption>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKCustomMapStyleOption', {'length': length});
  
    final List<BMKCustomMapStyleOption> typedResult = resultBatch.map((result) => BMKCustomMapStyleOption()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_customMapStyleID() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKCustomMapStyleOption::get_customMapStyleID", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_customMapStyleFilePath() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKCustomMapStyleOption::get_customMapStyleFilePath", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_customMapStyleID(String customMapStyleID) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKCustomMapStyleOption::set_customMapStyleID', {'refId': refId, "customMapStyleID": customMapStyleID});
  
  
  }
  
  Future<void> set_customMapStyleFilePath(String customMapStyleFilePath) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKCustomMapStyleOption::set_customMapStyleFilePath', {'refId': refId, "customMapStyleFilePath": customMapStyleFilePath});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension BMKCustomMapStyleOption_Batch on List<BMKCustomMapStyleOption> {
  //region getters
  Future<List<String>> get_customMapStyleID_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKCustomMapStyleOption::get_customMapStyleID_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_customMapStyleFilePath_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKCustomMapStyleOption::get_customMapStyleFilePath_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_customMapStyleID_batch(List<String> customMapStyleID) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKCustomMapStyleOption::set_customMapStyleID_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "customMapStyleID": customMapStyleID[__i__]}]);
  
  
  }
  
  Future<void> set_customMapStyleFilePath_batch(List<String> customMapStyleFilePath) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKCustomMapStyleOption::set_customMapStyleFilePath_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "customMapStyleFilePath": customMapStyleFilePath[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}