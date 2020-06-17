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

class com_baidu_platform_domain_HttpsEnable extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.platform.domain.HttpsEnable';

  
  //endregion

  //region creators
  static Future<com_baidu_platform_domain_HttpsEnable> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_platform_domain_HttpsEnable__');
    final object = com_baidu_platform_domain_HttpsEnable()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_platform_domain_HttpsEnable>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_platform_domain_HttpsEnable__', {'length': length});
  
    final List<com_baidu_platform_domain_HttpsEnable> typedResult = resultBatch.map((result) => com_baidu_platform_domain_HttpsEnable()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}

extension com_baidu_platform_domain_HttpsEnable_Batch on List<com_baidu_platform_domain_HttpsEnable> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}