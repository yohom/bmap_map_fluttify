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

class com_baidu_mapapi_animation_SingleScaleAnimation extends com_baidu_mapapi_animation_Animation  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.animation.SingleScaleAnimation';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_animation_SingleScaleAnimation> create__com_baidu_mapapi_animation_SingleScaleAnimation_ScaleType__float(com_baidu_mapapi_animation_SingleScaleAnimation_ScaleType var1, double var2) async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_animation_SingleScaleAnimation__com_baidu_mapapi_animation_SingleScaleAnimation_ScaleType__float', {"var1": var1.index, "var2": var2});
    final object = com_baidu_mapapi_animation_SingleScaleAnimation()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_animation_SingleScaleAnimation>> create_batch__com_baidu_mapapi_animation_SingleScaleAnimation_ScaleType__float(List<com_baidu_mapapi_animation_SingleScaleAnimation_ScaleType> var1, List<double> var2) async {
    if (var1.length != var2.length) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_animation_SingleScaleAnimation__com_baidu_mapapi_animation_SingleScaleAnimation_ScaleType__float', [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__].index, "var2": var2[__i__]}]);
  
    final List<com_baidu_mapapi_animation_SingleScaleAnimation> typedResult = resultBatch.map((result) => com_baidu_mapapi_animation_SingleScaleAnimation()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<void> setRepeatMode(com_baidu_mapapi_animation_Animation_RepeatMode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.animation.SingleScaleAnimation@$refId::setRepeatMode([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.animation.SingleScaleAnimation::setRepeatMode', {"var1": var1.toValue(), "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setRepeatCount(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.animation.SingleScaleAnimation@$refId::setRepeatCount([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.animation.SingleScaleAnimation::setRepeatCount', {"var1": var1, "refId": refId});
  
  
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

extension com_baidu_mapapi_animation_SingleScaleAnimation_Batch on List<com_baidu_mapapi_animation_SingleScaleAnimation> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<void>> setRepeatMode_batch(List<com_baidu_mapapi_animation_Animation_RepeatMode> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.animation.SingleScaleAnimation::setRepeatMode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].toValue(), "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> setRepeatCount_batch(List<int> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.animation.SingleScaleAnimation::setRepeatCount_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
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