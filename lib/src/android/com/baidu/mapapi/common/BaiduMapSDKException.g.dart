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

class com_baidu_mapapi_common_BaiduMapSDKException extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.common.BaiduMapSDKException';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_common_BaiduMapSDKException> create__() async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createcom_baidu_mapapi_common_BaiduMapSDKException__', );
    final object = com_baidu_mapapi_common_BaiduMapSDKException()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<com_baidu_mapapi_common_BaiduMapSDKException> create__String(String var1) async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createcom_baidu_mapapi_common_BaiduMapSDKException__String', {"var1": var1});
    final object = com_baidu_mapapi_common_BaiduMapSDKException()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<com_baidu_mapapi_common_BaiduMapSDKException>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_common_BaiduMapSDKException__', {'length': length});
  
    final List<com_baidu_mapapi_common_BaiduMapSDKException> typedResult = resultBatch.map((result) => com_baidu_mapapi_common_BaiduMapSDKException()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  static Future<List<com_baidu_mapapi_common_BaiduMapSDKException>> create_batch__String(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_common_BaiduMapSDKException__String', [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__]}]);
  
    final List<com_baidu_mapapi_common_BaiduMapSDKException> typedResult = resultBatch.map((result) => com_baidu_mapapi_common_BaiduMapSDKException()..refId = result..tag__ = 'bmap_map_fluttify').toList();
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

extension com_baidu_mapapi_common_BaiduMapSDKException_Batch on List<com_baidu_mapapi_common_BaiduMapSDKException> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}