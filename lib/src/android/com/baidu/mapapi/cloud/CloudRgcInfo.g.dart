// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_baidu_mapapi_cloud_CloudRgcInfo extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.cloud.CloudRgcInfo';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_cloud_CloudRgcInfo> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_cloud_CloudRgcInfo__');
    final object = com_baidu_mapapi_cloud_CloudRgcInfo()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_cloud_CloudRgcInfo>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_cloud_CloudRgcInfo__', {'length': length});
  
    final List<com_baidu_mapapi_cloud_CloudRgcInfo> typedResult = resultBatch.map((result) => com_baidu_mapapi_cloud_CloudRgcInfo()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_location() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcInfo::get_location", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_geoTableId() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcInfo::get_geoTableId", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_location(String location) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcInfo::set_location', {'refId': refId, "location": location});
  
  
  }
  
  Future<void> set_geoTableId(int geoTableId) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcInfo::set_geoTableId', {'refId': refId, "geoTableId": geoTableId});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension com_baidu_mapapi_cloud_CloudRgcInfo_Batch on List<com_baidu_mapapi_cloud_CloudRgcInfo> {
  //region getters
  Future<List<String>> get_location_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcInfo::get_location_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_geoTableId_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcInfo::get_geoTableId_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_location_batch(List<String> location) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcInfo::set_location_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "location": location[__i__]}]);
  
  
  }
  
  Future<void> set_geoTableId_batch(List<int> geoTableId) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcInfo::set_geoTableId_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "geoTableId": geoTableId[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}