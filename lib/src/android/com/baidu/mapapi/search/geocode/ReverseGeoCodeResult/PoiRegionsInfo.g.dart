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

class com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<String> get_directionDesc() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::get_directionDesc", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_regionName() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::get_regionName", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_regionTag() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::get_regionTag", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_directionDesc(String directionDesc) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::set_directionDesc', <String, dynamic>{'__this__': this, "directionDesc": directionDesc});
  
  
  }
  
  Future<void> set_regionName(String regionName) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::set_regionName', <String, dynamic>{'__this__': this, "regionName": regionName});
  
  
  }
  
  Future<void> set_regionTag(String regionTag) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::set_regionTag', <String, dynamic>{'__this__': this, "regionTag": regionTag});
  
  
  }
  
  //endregion

  //region methods
  
  Future<String> getDirectionDesc() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo@$refId::getDirectionDesc([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::getDirectionDesc', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setDirectionDesc(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo@$refId::setDirectionDesc([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::setDirectionDesc', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getRegionName() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo@$refId::getRegionName([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::getRegionName', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setRegionName(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo@$refId::setRegionName([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::setRegionName', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getRegionTag() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo@$refId::getRegionTag([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::getRegionTag', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setRegionTag(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo@$refId::setRegionTag([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::setRegionTag', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo_Batch on List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo> {
  //region getters
  Future<List<String>> get_directionDesc_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::get_directionDesc_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_regionName_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::get_regionName_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_regionTag_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::get_regionTag_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_directionDesc_batch(List<String> directionDesc) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::set_directionDesc_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "directionDesc": directionDesc[__i__]}]);
  
  
  }
  
  Future<void> set_regionName_batch(List<String> regionName) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::set_regionName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "regionName": regionName[__i__]}]);
  
  
  }
  
  Future<void> set_regionTag_batch(List<String> regionTag) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::set_regionTag_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "regionTag": regionTag[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<String>> getDirectionDesc_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::getDirectionDesc_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setDirectionDesc_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::setDirectionDesc_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getRegionName_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::getRegionName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setRegionName_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::setRegionName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getRegionTag_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::getRegionTag_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setRegionTag_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult.PoiRegionsInfo::setRegionTag_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}