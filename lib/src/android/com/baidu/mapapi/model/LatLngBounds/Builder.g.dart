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

class com_baidu_mapapi_model_LatLngBounds_Builder extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.model.LatLngBounds.Builder';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_model_LatLngBounds_Builder> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_model_LatLngBounds_Builder__');
    final object = com_baidu_mapapi_model_LatLngBounds_Builder()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_model_LatLngBounds_Builder>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_model_LatLngBounds_Builder__', {'length': length});
  
    final List<com_baidu_mapapi_model_LatLngBounds_Builder> typedResult = resultBatch.map((result) => com_baidu_mapapi_model_LatLngBounds_Builder()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_model_LatLngBounds> build() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.model.LatLngBounds.Builder@$refId::build([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.LatLngBounds.Builder::build', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_model_LatLngBounds()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_model_LatLngBounds_Builder> include__com_baidu_mapapi_model_LatLng(com_baidu_mapapi_model_LatLng var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.model.LatLngBounds.Builder@$refId::include([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.LatLngBounds.Builder::include__com_baidu_mapapi_model_LatLng', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_model_LatLngBounds_Builder()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_model_LatLngBounds_Builder> include__List_com_baidu_mapapi_model_LatLng_(List<com_baidu_mapapi_model_LatLng> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.model.LatLngBounds.Builder@$refId::include([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.LatLngBounds.Builder::include__List_com_baidu_mapapi_model_LatLng_', {"var1": var1.map((__it__) => __it__?.refId).toList(), "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_model_LatLngBounds_Builder()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_model_LatLngBounds_Builder_Batch on List<com_baidu_mapapi_model_LatLngBounds_Builder> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_model_LatLngBounds>> build_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.LatLngBounds.Builder::build_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLngBounds()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_model_LatLngBounds_Builder>> include__com_baidu_mapapi_model_LatLng_batch(List<com_baidu_mapapi_model_LatLng> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.LatLngBounds.Builder::include__com_baidu_mapapi_model_LatLng_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLngBounds_Builder()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_model_LatLngBounds_Builder>> include__List_com_baidu_mapapi_model_LatLng__batch(List<List<com_baidu_mapapi_model_LatLng>> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.LatLngBounds.Builder::include__List_com_baidu_mapapi_model_LatLng__batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].map((it) => it.refId).toList(), "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLngBounds_Builder()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}