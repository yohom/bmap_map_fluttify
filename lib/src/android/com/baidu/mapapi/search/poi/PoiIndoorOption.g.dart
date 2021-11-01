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

class com_baidu_mapapi_search_poi_PoiIndoorOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.poi.PoiIndoorOption';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_poi_PoiIndoorOption> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_poi_PoiIndoorOption__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_poi_PoiIndoorOption>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_poi_PoiIndoorOption__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<String> get_bid() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_bid", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_wd() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_wd", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_floor() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_floor", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_currentPage() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_currentPage", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_pageSize() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_pageSize", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_bid(String bid) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_bid', <String, dynamic>{'__this__': this, "bid": bid});
  
  
  }
  
  Future<void> set_wd(String wd) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_wd', <String, dynamic>{'__this__': this, "wd": wd});
  
  
  }
  
  Future<void> set_floor(String floor) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_floor', <String, dynamic>{'__this__': this, "floor": floor});
  
  
  }
  
  Future<void> set_currentPage(int currentPage) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_currentPage', <String, dynamic>{'__this__': this, "currentPage": currentPage});
  
  
  }
  
  Future<void> set_pageSize(int pageSize) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_pageSize', <String, dynamic>{'__this__': this, "pageSize": pageSize});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_poi_PoiIndoorOption> poiIndoorBid(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiIndoorOption@$refId::poiIndoorBid([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiIndoorBid', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiIndoorOption> poiIndoorWd(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiIndoorOption@$refId::poiIndoorWd([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiIndoorWd', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiIndoorOption> poiCurrentPage(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiIndoorOption@$refId::poiCurrentPage([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiCurrentPage', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiIndoorOption> poiPageSize(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiIndoorOption@$refId::poiPageSize([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiPageSize', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiIndoorOption> poiFloor(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiIndoorOption@$refId::poiFloor([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiFloor', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__);
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_poi_PoiIndoorOption{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_poi_PoiIndoorOption_Batch on List<com_baidu_mapapi_search_poi_PoiIndoorOption> {
  //region getters
  Future<List<String>> get_bid_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_bid_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_wd_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_wd_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_floor_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_floor_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<int>> get_currentPage_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_currentPage_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<int>> get_pageSize_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorOption::get_pageSize_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_bid_batch(List<String> bid) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_bid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "bid": bid[__i__]}]);
  
  
  }
  
  Future<void> set_wd_batch(List<String> wd) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_wd_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "wd": wd[__i__]}]);
  
  
  }
  
  Future<void> set_floor_batch(List<String> floor) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_floor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "floor": floor[__i__]}]);
  
  
  }
  
  Future<void> set_currentPage_batch(List<int> currentPage) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_currentPage_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "currentPage": currentPage[__i__]}]);
  
  
  }
  
  Future<void> set_pageSize_batch(List<int> pageSize) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::set_pageSize_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "pageSize": pageSize[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_poi_PoiIndoorOption>> poiIndoorBid_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiIndoorBid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__)).cast<com_baidu_mapapi_search_poi_PoiIndoorOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiIndoorOption>> poiIndoorWd_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiIndoorWd_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__)).cast<com_baidu_mapapi_search_poi_PoiIndoorOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiIndoorOption>> poiCurrentPage_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiCurrentPage_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__)).cast<com_baidu_mapapi_search_poi_PoiIndoorOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiIndoorOption>> poiPageSize_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiPageSize_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__)).cast<com_baidu_mapapi_search_poi_PoiIndoorOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiIndoorOption>> poiFloor_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorOption::poiFloor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_poi_PoiIndoorOption>(__result__)).cast<com_baidu_mapapi_search_poi_PoiIndoorOption>().toList();
  }
  
  //endregion
}