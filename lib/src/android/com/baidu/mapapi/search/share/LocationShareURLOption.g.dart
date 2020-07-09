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

class com_baidu_mapapi_search_share_LocationShareURLOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.share.LocationShareURLOption';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_share_LocationShareURLOption> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_share_LocationShareURLOption__');
    final object = com_baidu_mapapi_search_share_LocationShareURLOption()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_share_LocationShareURLOption>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_share_LocationShareURLOption__', {'length': length});
  
    final List<com_baidu_mapapi_search_share_LocationShareURLOption> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_share_LocationShareURLOption()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<com_baidu_mapapi_model_LatLng> get_mLocation() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.share.LocationShareURLOption::get_mLocation", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<String> get_mName() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.share.LocationShareURLOption::get_mName", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_mSnippet() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.share.LocationShareURLOption::get_mSnippet", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_mLocation(com_baidu_mapapi_model_LatLng mLocation) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::set_mLocation', {'refId': refId, "mLocation": mLocation.refId});
  
  
  }
  
  Future<void> set_mName(String mName) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::set_mName', {'refId': refId, "mName": mName});
  
  
  }
  
  Future<void> set_mSnippet(String mSnippet) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::set_mSnippet', {'refId': refId, "mSnippet": mSnippet});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_share_LocationShareURLOption> location(com_baidu_mapapi_model_LatLng var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.share.LocationShareURLOption@$refId::location([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::location', {"var1": var1 is Ref ? (var1 as Ref)?.refId : var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_share_LocationShareURLOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_share_LocationShareURLOption> name(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.share.LocationShareURLOption@$refId::name([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::name', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_share_LocationShareURLOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_share_LocationShareURLOption> snippet(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.share.LocationShareURLOption@$refId::snippet([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::snippet', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_share_LocationShareURLOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_search_share_LocationShareURLOption_Batch on List<com_baidu_mapapi_search_share_LocationShareURLOption> {
  //region getters
  Future<List<com_baidu_mapapi_model_LatLng>> get_mLocation_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.share.LocationShareURLOption::get_mLocation_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<String>> get_mName_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.share.LocationShareURLOption::get_mName_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_mSnippet_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.share.LocationShareURLOption::get_mSnippet_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_mLocation_batch(List<com_baidu_mapapi_model_LatLng> mLocation) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::set_mLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mLocation": mLocation[__i__].refId}]);
  
  
  }
  
  Future<void> set_mName_batch(List<String> mName) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::set_mName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mName": mName[__i__]}]);
  
  
  }
  
  Future<void> set_mSnippet_batch(List<String> mSnippet) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::set_mSnippet_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mSnippet": mSnippet[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_share_LocationShareURLOption>> location_batch(List<com_baidu_mapapi_model_LatLng> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::location_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_share_LocationShareURLOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_share_LocationShareURLOption>> name_batch(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::name_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_share_LocationShareURLOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_share_LocationShareURLOption>> snippet_batch(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.share.LocationShareURLOption::snippet_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_share_LocationShareURLOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}