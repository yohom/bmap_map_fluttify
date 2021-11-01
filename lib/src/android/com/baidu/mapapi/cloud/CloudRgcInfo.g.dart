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

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_cloud_CloudRgcInfo> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_cloud_CloudRgcInfo__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_cloud_CloudRgcInfo>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_cloud_CloudRgcInfo>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_cloud_CloudRgcInfo__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_cloud_CloudRgcInfo>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<String> get_location() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudRgcInfo::get_location", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_geoTableId() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudRgcInfo::get_geoTableId", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_location(String location) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudRgcInfo::set_location', <String, dynamic>{'__this__': this, "location": location});
  
  
  }
  
  Future<void> set_geoTableId(int geoTableId) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudRgcInfo::set_geoTableId', <String, dynamic>{'__this__': this, "geoTableId": geoTableId});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_cloud_CloudRgcInfo{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_cloud_CloudRgcInfo_Batch on List<com_baidu_mapapi_cloud_CloudRgcInfo> {
  //region getters
  Future<List<String>> get_location_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudRgcInfo::get_location_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<int>> get_geoTableId_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudRgcInfo::get_geoTableId_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_location_batch(List<String> location) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudRgcInfo::set_location_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "location": location[__i__]}]);
  
  
  }
  
  Future<void> set_geoTableId_batch(List<int> geoTableId) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudRgcInfo::set_geoTableId_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "geoTableId": geoTableId[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}