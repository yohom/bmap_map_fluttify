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

class com_baidu_mapapi_navi_NaviParaOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.navi.NaviParaOption';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_navi_NaviParaOption> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_navi_NaviParaOption__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_navi_NaviParaOption>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_navi_NaviParaOption__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_navi_NaviParaOption> startPoint(com_baidu_mapapi_model_LatLng var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.navi.NaviParaOption@$refId::startPoint([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::startPoint', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_navi_NaviParaOption> startName(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.navi.NaviParaOption@$refId::startName([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::startName', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_navi_NaviParaOption> endPoint(com_baidu_mapapi_model_LatLng var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.navi.NaviParaOption@$refId::endPoint([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::endPoint', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_navi_NaviParaOption> endName(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.navi.NaviParaOption@$refId::endName([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::endName', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_model_LatLng> getStartPoint() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.navi.NaviParaOption@$refId::getStartPoint([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::getStartPoint', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(__result__);
  }
  
  
  Future<com_baidu_mapapi_model_LatLng> getEndPoint() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.navi.NaviParaOption@$refId::getEndPoint([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::getEndPoint', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(__result__);
  }
  
  
  Future<String> getStartName() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.navi.NaviParaOption@$refId::getStartName([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::getStartName', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getEndName() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.navi.NaviParaOption@$refId::getEndName([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::getEndName', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_navi_NaviParaOption{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_navi_NaviParaOption_Batch on List<com_baidu_mapapi_navi_NaviParaOption> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_navi_NaviParaOption>> startPoint_batch(List<com_baidu_mapapi_model_LatLng> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::startPoint_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__)).cast<com_baidu_mapapi_navi_NaviParaOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_navi_NaviParaOption>> startName_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::startName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__)).cast<com_baidu_mapapi_navi_NaviParaOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_navi_NaviParaOption>> endPoint_batch(List<com_baidu_mapapi_model_LatLng> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::endPoint_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__)).cast<com_baidu_mapapi_navi_NaviParaOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_navi_NaviParaOption>> endName_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::endName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_navi_NaviParaOption>(__result__)).cast<com_baidu_mapapi_navi_NaviParaOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_model_LatLng>> getStartPoint_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::getStartPoint_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(__result__)).cast<com_baidu_mapapi_model_LatLng>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_model_LatLng>> getEndPoint_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::getEndPoint_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(__result__)).cast<com_baidu_mapapi_model_LatLng>().toList();
  }
  
  
  Future<List<String>> getStartName_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::getStartName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<String>> getEndName_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.navi.NaviParaOption::getEndName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  //endregion
}