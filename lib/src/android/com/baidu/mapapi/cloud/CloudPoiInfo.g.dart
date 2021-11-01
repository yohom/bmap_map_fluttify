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

class com_baidu_mapapi_cloud_CloudPoiInfo extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.cloud.CloudPoiInfo';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_cloud_CloudPoiInfo> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_cloud_CloudPoiInfo__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_cloud_CloudPoiInfo>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_cloud_CloudPoiInfo>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_cloud_CloudPoiInfo__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_cloud_CloudPoiInfo>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<int> get_uid() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_uid", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_poiId() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_poiId", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_geotableId() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_geotableId", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_title() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_title", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_address() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_address", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_province() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_province", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_city() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_city", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_district() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_district", {'__this__': this});
    return __result__;
  }
  
  Future<double> get_latitude() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_latitude", {'__this__': this});
    return __result__;
  }
  
  Future<double> get_longitude() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_longitude", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_tags() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_tags", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_distance() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_distance", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_direction() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_direction", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_weight() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_weight", {'__this__': this});
    return __result__;
  }
  
  Future<Map<String,Object>> get_extras() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_extras", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_uid(int uid) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_uid', <String, dynamic>{'__this__': this, "uid": uid});
  
  
  }
  
  Future<void> set_poiId(String poiId) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_poiId', <String, dynamic>{'__this__': this, "poiId": poiId});
  
  
  }
  
  Future<void> set_geotableId(int geotableId) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_geotableId', <String, dynamic>{'__this__': this, "geotableId": geotableId});
  
  
  }
  
  Future<void> set_title(String title) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_title', <String, dynamic>{'__this__': this, "title": title});
  
  
  }
  
  Future<void> set_address(String address) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_address', <String, dynamic>{'__this__': this, "address": address});
  
  
  }
  
  Future<void> set_province(String province) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_province', <String, dynamic>{'__this__': this, "province": province});
  
  
  }
  
  Future<void> set_city(String city) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_city', <String, dynamic>{'__this__': this, "city": city});
  
  
  }
  
  Future<void> set_district(String district) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_district', <String, dynamic>{'__this__': this, "district": district});
  
  
  }
  
  Future<void> set_latitude(double latitude) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_latitude', <String, dynamic>{'__this__': this, "latitude": latitude});
  
  
  }
  
  Future<void> set_longitude(double longitude) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_longitude', <String, dynamic>{'__this__': this, "longitude": longitude});
  
  
  }
  
  Future<void> set_tags(String tags) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_tags', <String, dynamic>{'__this__': this, "tags": tags});
  
  
  }
  
  Future<void> set_distance(int distance) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_distance', <String, dynamic>{'__this__': this, "distance": distance});
  
  
  }
  
  Future<void> set_direction(String direction) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_direction', <String, dynamic>{'__this__': this, "direction": direction});
  
  
  }
  
  Future<void> set_weight(int weight) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_weight', <String, dynamic>{'__this__': this, "weight": weight});
  
  
  }
  
  Future<void> set_extras(Map<String,Object> extras) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_extras', <String, dynamic>{'__this__': this, "extras": extras});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_cloud_CloudPoiInfo{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_cloud_CloudPoiInfo_Batch on List<com_baidu_mapapi_cloud_CloudPoiInfo> {
  //region getters
  Future<List<int>> get_uid_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_uid_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<String>> get_poiId_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_poiId_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<int>> get_geotableId_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_geotableId_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<String>> get_title_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_title_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_address_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_address_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_province_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_province_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_city_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_city_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_district_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_district_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<double>> get_latitude_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_latitude_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<double>> get_longitude_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_longitude_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<String>> get_tags_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_tags_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<int>> get_distance_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_distance_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<String>> get_direction_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_direction_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<int>> get_weight_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_weight_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<Map<String,Object>>> get_extras_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.cloud.CloudPoiInfo::get_extras_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<Map<String,Object>>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_uid_batch(List<int> uid) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_uid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "uid": uid[__i__]}]);
  
  
  }
  
  Future<void> set_poiId_batch(List<String> poiId) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_poiId_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "poiId": poiId[__i__]}]);
  
  
  }
  
  Future<void> set_geotableId_batch(List<int> geotableId) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_geotableId_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "geotableId": geotableId[__i__]}]);
  
  
  }
  
  Future<void> set_title_batch(List<String> title) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_title_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "title": title[__i__]}]);
  
  
  }
  
  Future<void> set_address_batch(List<String> address) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_address_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "address": address[__i__]}]);
  
  
  }
  
  Future<void> set_province_batch(List<String> province) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_province_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "province": province[__i__]}]);
  
  
  }
  
  Future<void> set_city_batch(List<String> city) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "city": city[__i__]}]);
  
  
  }
  
  Future<void> set_district_batch(List<String> district) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_district_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "district": district[__i__]}]);
  
  
  }
  
  Future<void> set_latitude_batch(List<double> latitude) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_latitude_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "latitude": latitude[__i__]}]);
  
  
  }
  
  Future<void> set_longitude_batch(List<double> longitude) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_longitude_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "longitude": longitude[__i__]}]);
  
  
  }
  
  Future<void> set_tags_batch(List<String> tags) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_tags_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "tags": tags[__i__]}]);
  
  
  }
  
  Future<void> set_distance_batch(List<int> distance) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_distance_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "distance": distance[__i__]}]);
  
  
  }
  
  Future<void> set_direction_batch(List<String> direction) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_direction_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "direction": direction[__i__]}]);
  
  
  }
  
  Future<void> set_weight_batch(List<int> weight) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_weight_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "weight": weight[__i__]}]);
  
  
  }
  
  Future<void> set_extras_batch(List<Map<String,Object>> extras) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudPoiInfo::set_extras_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "extras": extras[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}