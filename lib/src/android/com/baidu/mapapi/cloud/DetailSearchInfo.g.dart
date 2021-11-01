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

class com_baidu_mapapi_cloud_DetailSearchInfo extends com_baidu_mapapi_cloud_BaseSearchInfo  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.cloud.DetailSearchInfo';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_cloud_DetailSearchInfo> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_cloud_DetailSearchInfo__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_cloud_DetailSearchInfo>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_cloud_DetailSearchInfo>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_cloud_DetailSearchInfo__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_cloud_DetailSearchInfo>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<int> get_uid() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.DetailSearchInfo::get_uid", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_poiId() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.DetailSearchInfo::get_poiId", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_uid(int uid) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.DetailSearchInfo::set_uid', <String, dynamic>{'__this__': this, "uid": uid});
  
  
  }
  
  Future<void> set_poiId(String poiId) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.DetailSearchInfo::set_poiId', <String, dynamic>{'__this__': this, "poiId": poiId});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_cloud_DetailSearchInfo{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_cloud_DetailSearchInfo_Batch on List<com_baidu_mapapi_cloud_DetailSearchInfo> {
  //region getters
  Future<List<int>> get_uid_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.DetailSearchInfo::get_uid_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<String>> get_poiId_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.DetailSearchInfo::get_poiId_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_uid_batch(List<int> uid) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.DetailSearchInfo::set_uid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "uid": uid[__i__]}]);
  
  
  }
  
  Future<void> set_poiId_batch(List<String> poiId) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.DetailSearchInfo::set_poiId_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "poiId": poiId[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}