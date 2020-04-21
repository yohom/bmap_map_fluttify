// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_baidu_mapapi_utils_poi_BaiduMapPoiSearch extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.utils.poi.BaiduMapPoiSearch';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_utils_poi_BaiduMapPoiSearch> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_utils_poi_BaiduMapPoiSearch__');
    final object = com_baidu_mapapi_utils_poi_BaiduMapPoiSearch()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_utils_poi_BaiduMapPoiSearch>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_utils_poi_BaiduMapPoiSearch__', {'length': length});
  
    final List<com_baidu_mapapi_utils_poi_BaiduMapPoiSearch> typedResult = resultBatch.map((result) => com_baidu_mapapi_utils_poi_BaiduMapPoiSearch()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<void> setSupportWebPoi(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::setSupportWebPoi([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::setSupportWebPoi', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  
  static Future<bool> openBaiduMapPoiDetialsPage(com_baidu_mapapi_utils_poi_PoiParaOption var0, android_content_Context var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPoiDetialsPage([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPoiDetialsPage', {"var0": var0.refId, "var1": var1.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  
  static Future<bool> openBaiduMapPoiNearbySearch(com_baidu_mapapi_utils_poi_PoiParaOption var0, android_content_Context var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPoiNearbySearch([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPoiNearbySearch', {"var0": var0.refId, "var1": var1.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  
  static Future<void> openBaiduMapPanoShow(String var0, android_content_Context var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPanoShow([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPanoShow', {"var0": var0, "var1": var1.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  
  static Future<bool> dispatchPoiToBaiduMap(List<com_baidu_mapapi_utils_poi_DispathcPoiData> var0, android_content_Context var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::dispatchPoiToBaiduMap([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::dispatchPoiToBaiduMap', {"var0": var0.map((__it__) => __it__.refId).toList(), "var1": var1.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  
  static Future<void> finish(android_content_Context var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::finish([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::finish', {"var0": var0.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_utils_poi_BaiduMapPoiSearch_Batch on List<com_baidu_mapapi_utils_poi_BaiduMapPoiSearch> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<void>> setSupportWebPoi_batch(List<bool> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::setSupportWebPoi_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  static Future<List<bool>> openBaiduMapPoiDetialsPage_batch(List<com_baidu_mapapi_utils_poi_PoiParaOption> var0, List<android_content_Context> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPoiDetialsPage_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId, "var1": var1[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  static Future<List<bool>> openBaiduMapPoiNearbySearch_batch(List<com_baidu_mapapi_utils_poi_PoiParaOption> var0, List<android_content_Context> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPoiNearbySearch_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId, "var1": var1[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  static Future<List<void>> openBaiduMapPanoShow_batch(List<String> var0, List<android_content_Context> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::openBaiduMapPanoShow_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__], "var1": var1[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  static Future<List<bool>> dispatchPoiToBaiduMap_batch(List<List<com_baidu_mapapi_utils_poi_DispathcPoiData>> var0, List<android_content_Context> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::dispatchPoiToBaiduMap_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].map((it) => it.refId).toList(), "var1": var1[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  static Future<List<void>> finish_batch(List<android_content_Context> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.utils.poi.BaiduMapPoiSearch::finish_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  //endregion
}