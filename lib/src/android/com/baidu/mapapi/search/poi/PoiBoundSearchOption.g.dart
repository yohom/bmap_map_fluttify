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

class com_baidu_mapapi_search_poi_PoiBoundSearchOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.poi.PoiBoundSearchOption';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_poi_PoiBoundSearchOption> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_poi_PoiBoundSearchOption__');
    final object = com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_poi_PoiBoundSearchOption>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_poi_PoiBoundSearchOption__', {'length': length});
  
    final List<com_baidu_mapapi_search_poi_PoiBoundSearchOption> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<com_baidu_mapapi_model_LatLngBounds> get_mBound() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mBound", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_model_LatLngBounds()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_model_LatLngBounds()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<String> get_mKeyword() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mKeyword", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_mPageNum() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mPageNum", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_mPageCapacity() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mPageCapacity", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_mTag() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mTag", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_mScope() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mScope", {'refId': refId});
  
    return __result__;
  }
  
  Future<com_baidu_mapapi_search_poi_PoiFilter> get_mPoiFilter() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mPoiFilter", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_search_poi_PoiFilter()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_search_poi_PoiFilter()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  //endregion

  //region setters
  Future<void> set_mBound(com_baidu_mapapi_model_LatLngBounds mBound) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mBound', {'refId': refId, "mBound": mBound.refId});
  
  
  }
  
  Future<void> set_mKeyword(String mKeyword) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mKeyword', {'refId': refId, "mKeyword": mKeyword});
  
  
  }
  
  Future<void> set_mPageNum(int mPageNum) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mPageNum', {'refId': refId, "mPageNum": mPageNum});
  
  
  }
  
  Future<void> set_mPageCapacity(int mPageCapacity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mPageCapacity', {'refId': refId, "mPageCapacity": mPageCapacity});
  
  
  }
  
  Future<void> set_mTag(String mTag) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mTag', {'refId': refId, "mTag": mTag});
  
  
  }
  
  Future<void> set_mScope(int mScope) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mScope', {'refId': refId, "mScope": mScope});
  
  
  }
  
  Future<void> set_mPoiFilter(com_baidu_mapapi_search_poi_PoiFilter mPoiFilter) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mPoiFilter', {'refId': refId, "mPoiFilter": mPoiFilter.refId});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_poi_PoiBoundSearchOption> keyword(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiBoundSearchOption@$refId::keyword([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::keyword', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiBoundSearchOption> bound(com_baidu_mapapi_model_LatLngBounds var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiBoundSearchOption@$refId::bound([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::bound', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiBoundSearchOption> pageNum(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiBoundSearchOption@$refId::pageNum([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::pageNum', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiBoundSearchOption> pageCapacity(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiBoundSearchOption@$refId::pageCapacity([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::pageCapacity', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiBoundSearchOption> tag(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiBoundSearchOption@$refId::tag([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::tag', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiBoundSearchOption> scope(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiBoundSearchOption@$refId::scope([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::scope', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_poi_PoiBoundSearchOption> poiFilter(com_baidu_mapapi_search_poi_PoiFilter var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiBoundSearchOption@$refId::poiFilter([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::poiFilter', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_search_poi_PoiBoundSearchOption_Batch on List<com_baidu_mapapi_search_poi_PoiBoundSearchOption> {
  //region getters
  Future<List<com_baidu_mapapi_model_LatLngBounds>> get_mBound_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mBound_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLngBounds()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<String>> get_mKeyword_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mKeyword_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_mPageNum_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mPageNum_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_mPageCapacity_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mPageCapacity_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_mTag_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mTag_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_mScope_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mScope_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_poi_PoiFilter>> get_mPoiFilter_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.poi.PoiBoundSearchOption::get_mPoiFilter_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_poi_PoiFilter()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_mBound_batch(List<com_baidu_mapapi_model_LatLngBounds> mBound) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mBound_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mBound": mBound[__i__].refId}]);
  
  
  }
  
  Future<void> set_mKeyword_batch(List<String> mKeyword) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mKeyword_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mKeyword": mKeyword[__i__]}]);
  
  
  }
  
  Future<void> set_mPageNum_batch(List<int> mPageNum) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mPageNum_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mPageNum": mPageNum[__i__]}]);
  
  
  }
  
  Future<void> set_mPageCapacity_batch(List<int> mPageCapacity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mPageCapacity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mPageCapacity": mPageCapacity[__i__]}]);
  
  
  }
  
  Future<void> set_mTag_batch(List<String> mTag) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mTag_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mTag": mTag[__i__]}]);
  
  
  }
  
  Future<void> set_mScope_batch(List<int> mScope) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mScope_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mScope": mScope[__i__]}]);
  
  
  }
  
  Future<void> set_mPoiFilter_batch(List<com_baidu_mapapi_search_poi_PoiFilter> mPoiFilter) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::set_mPoiFilter_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mPoiFilter": mPoiFilter[__i__].refId}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_poi_PoiBoundSearchOption>> keyword_batch(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::keyword_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiBoundSearchOption>> bound_batch(List<com_baidu_mapapi_model_LatLngBounds> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::bound_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiBoundSearchOption>> pageNum_batch(List<int> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::pageNum_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiBoundSearchOption>> pageCapacity_batch(List<int> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::pageCapacity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiBoundSearchOption>> tag_batch(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::tag_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiBoundSearchOption>> scope_batch(List<int> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::scope_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_poi_PoiBoundSearchOption>> poiFilter_batch(List<com_baidu_mapapi_search_poi_PoiFilter> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiBoundSearchOption::poiFilter_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_poi_PoiBoundSearchOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}