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

class com_baidu_mapapi_search_core_CityInfo extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.core.CityInfo';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_core_CityInfo> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_core_CityInfo__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_CityInfo>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_core_CityInfo>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_core_CityInfo__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_CityInfo>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<String> get_city() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.core.CityInfo::get_city", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_num() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.core.CityInfo::get_num", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_city(String city) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.core.CityInfo::set_city', <String, dynamic>{'__this__': this, "city": city});
  
  
  }
  
  Future<void> set_num(int num) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.core.CityInfo::set_num', <String, dynamic>{'__this__': this, "num": num});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_core_CityInfo{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_core_CityInfo_Batch on List<com_baidu_mapapi_search_core_CityInfo> {
  //region getters
  Future<List<String>> get_city_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.core.CityInfo::get_city_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<int>> get_num_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.core.CityInfo::get_num_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_city_batch(List<String> city) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.core.CityInfo::set_city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "city": city[__i__]}]);
  
  
  }
  
  Future<void> set_num_batch(List<int> num) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.core.CityInfo::set_num_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "num": num[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}