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

class com_baidu_mapapi_model_inner_MapBound extends java_lang_Object with java_io_Serializable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.model.inner.MapBound';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_model_inner_MapBound> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_model_inner_MapBound__');
    final object = com_baidu_mapapi_model_inner_MapBound()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_model_inner_MapBound>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_model_inner_MapBound__', {'length': length});
  
    final List<com_baidu_mapapi_model_inner_MapBound> typedResult = resultBatch.map((result) => com_baidu_mapapi_model_inner_MapBound()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<com_baidu_mapapi_model_inner_Point> get_ptLB() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.model.inner.MapBound::get_ptLB", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<com_baidu_mapapi_model_inner_Point> get_ptRT() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.model.inner.MapBound::get_ptRT", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  //endregion

  //region setters
  Future<void> set_ptLB(com_baidu_mapapi_model_inner_Point ptLB) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::set_ptLB', {'refId': refId, "ptLB": ptLB.refId});
  
  
  }
  
  Future<void> set_ptRT(com_baidu_mapapi_model_inner_Point ptRT) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::set_ptRT', {'refId': refId, "ptRT": ptRT.refId});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_model_inner_Point> getPtLB() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.model.inner.MapBound@$refId::getPtLB([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::getPtLB', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<void> setPtLB(com_baidu_mapapi_model_inner_Point var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.model.inner.MapBound@$refId::setPtLB([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::setPtLB', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_model_inner_Point> getPtRT() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.model.inner.MapBound@$refId::getPtRT([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::getPtRT', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<void> setPtRT(com_baidu_mapapi_model_inner_Point var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.model.inner.MapBound@$refId::setPtRT([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::setPtRT', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_model_inner_MapBound_Batch on List<com_baidu_mapapi_model_inner_MapBound> {
  //region getters
  Future<List<com_baidu_mapapi_model_inner_Point>> get_ptLB_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.model.inner.MapBound::get_ptLB_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_model_inner_Point>> get_ptRT_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.model.inner.MapBound::get_ptRT_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_ptLB_batch(List<com_baidu_mapapi_model_inner_Point> ptLB) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::set_ptLB_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "ptLB": ptLB[__i__].refId}]);
  
  
  }
  
  Future<void> set_ptRT_batch(List<com_baidu_mapapi_model_inner_Point> ptRT) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::set_ptRT_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "ptRT": ptRT[__i__].refId}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_model_inner_Point>> getPtLB_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::getPtLB_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<void>> setPtLB_batch(List<com_baidu_mapapi_model_inner_Point> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::setPtLB_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_model_inner_Point>> getPtRT_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::getPtRT_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<void>> setPtRT_batch(List<com_baidu_mapapi_model_inner_Point> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.inner.MapBound::setPtRT_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
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