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

class com_baidu_mapapi_cloud_CloudRgcResult_PoiInfo extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo';

  
  //endregion

  //region creators
  
  //endregion

  //region getters
  Future<String> get_name() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_name", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_uid() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_uid", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_address() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_address", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_tag() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_tag", {'refId': refId});
  
    return __result__;
  }
  
  Future<com_baidu_mapapi_model_LatLng> get_location() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_location", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<String> get_direction() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_direction", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_distance() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_distance", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_name(String name) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_name', {'refId': refId, "name": name});
  
  
  }
  
  Future<void> set_uid(String uid) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_uid', {'refId': refId, "uid": uid});
  
  
  }
  
  Future<void> set_address(String address) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_address', {'refId': refId, "address": address});
  
  
  }
  
  Future<void> set_tag(String tag) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_tag', {'refId': refId, "tag": tag});
  
  
  }
  
  Future<void> set_location(com_baidu_mapapi_model_LatLng location) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_location', {'refId': refId, "location": location.refId});
  
  
  }
  
  Future<void> set_direction(String direction) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_direction', {'refId': refId, "direction": direction});
  
  
  }
  
  Future<void> set_distance(int distance) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_distance', {'refId': refId, "distance": distance});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension com_baidu_mapapi_cloud_CloudRgcResult_PoiInfo_Batch on List<com_baidu_mapapi_cloud_CloudRgcResult_PoiInfo> {
  //region getters
  Future<List<String>> get_name_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_name_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_uid_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_uid_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_address_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_address_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_tag_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_tag_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_model_LatLng>> get_location_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_location_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<String>> get_direction_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_direction_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_distance_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::get_distance_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_name_batch(List<String> name) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_name_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "name": name[__i__]}]);
  
  
  }
  
  Future<void> set_uid_batch(List<String> uid) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_uid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "uid": uid[__i__]}]);
  
  
  }
  
  Future<void> set_address_batch(List<String> address) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_address_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "address": address[__i__]}]);
  
  
  }
  
  Future<void> set_tag_batch(List<String> tag) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_tag_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "tag": tag[__i__]}]);
  
  
  }
  
  Future<void> set_location_batch(List<com_baidu_mapapi_model_LatLng> location) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_location_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "location": location[__i__].refId}]);
  
  
  }
  
  Future<void> set_direction_batch(List<String> direction) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_direction_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "direction": direction[__i__]}]);
  
  
  }
  
  Future<void> set_distance_batch(List<int> distance) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.cloud.CloudRgcResult.PoiInfo::set_distance_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "distance": distance[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}