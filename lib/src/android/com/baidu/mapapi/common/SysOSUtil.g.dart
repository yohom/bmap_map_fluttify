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

class com_baidu_mapapi_common_SysOSUtil extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.common.SysOSUtil';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_common_SysOSUtil> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_common_SysOSUtil__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_common_SysOSUtil>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_common_SysOSUtil>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_common_SysOSUtil__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_common_SysOSUtil>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<int> getDensityDpi() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.common.SysOSUtil::getDensityDpi([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getDensityDpi', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<double> getDensity() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.common.SysOSUtil::getDensity([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getDensity', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<String> getModuleFileName() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.common.SysOSUtil::getModuleFileName([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getModuleFileName', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<String> getDeviceID() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.common.SysOSUtil::getDeviceID([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getDeviceID', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<int> getScreenSizeX() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.common.SysOSUtil::getScreenSizeX([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getScreenSizeX', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<int> getScreenSizeY() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.common.SysOSUtil::getScreenSizeY([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getScreenSizeY', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<String> getPhoneType() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.common.SysOSUtil::getPhoneType([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getPhoneType', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_common_SysOSUtil{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_common_SysOSUtil_Batch on List<com_baidu_mapapi_common_SysOSUtil> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<int>> getDensityDpi_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getDensityDpi_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  static Future<List<double>> getDensity_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getDensity_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  
  static Future<List<String>> getModuleFileName_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getModuleFileName_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  static Future<List<String>> getDeviceID_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getDeviceID_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  static Future<List<int>> getScreenSizeX_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getScreenSizeX_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  static Future<List<int>> getScreenSizeY_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getScreenSizeY_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  static Future<List<String>> getPhoneType_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.common.SysOSUtil::getPhoneType_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  //endregion
}