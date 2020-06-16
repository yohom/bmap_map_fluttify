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

class com_baidu_mapsdkplatform_comjni_tools_BundleKeySet extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapsdkplatform.comjni.tools.BundleKeySet';

  
  //endregion

  //region creators
  static Future<com_baidu_mapsdkplatform_comjni_tools_BundleKeySet> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapsdkplatform_comjni_tools_BundleKeySet__');
    final object = com_baidu_mapsdkplatform_comjni_tools_BundleKeySet()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapsdkplatform_comjni_tools_BundleKeySet>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapsdkplatform_comjni_tools_BundleKeySet__', {'length': length});
  
    final List<com_baidu_mapsdkplatform_comjni_tools_BundleKeySet> typedResult = resultBatch.map((result) => com_baidu_mapsdkplatform_comjni_tools_BundleKeySet()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<String>> getBundleKeys(android_os_Bundle var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapsdkplatform.comjni.tools.BundleKeySet@$refId::getBundleKeys([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapsdkplatform.comjni.tools.BundleKeySet::getBundleKeys', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = (__result__ as List).cast<String>();
    
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapsdkplatform_comjni_tools_BundleKeySet_Batch on List<com_baidu_mapsdkplatform_comjni_tools_BundleKeySet> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<List<String>>> getBundleKeys_batch(List<android_os_Bundle> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapsdkplatform.comjni.tools.BundleKeySet::getBundleKeys_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<List<String>>().map((__result__) => (__result__ as List).cast<String>()).toList();
    
      return typedResult;
    }
  }
  
  //endregion
}