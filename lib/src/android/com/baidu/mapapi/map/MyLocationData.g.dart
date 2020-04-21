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

class com_baidu_mapapi_map_MyLocationData extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.map.MyLocationData';

  
  //endregion

  //region creators
  
  //endregion

  //region getters
  Future<double> get_latitude() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_latitude", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_longitude() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_longitude", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_speed() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_speed", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_direction() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_direction", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_accuracy() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_accuracy", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_satellitesNum() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_satellitesNum", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}

extension com_baidu_mapapi_map_MyLocationData_Batch on List<com_baidu_mapapi_map_MyLocationData> {
  //region getters
  Future<List<double>> get_latitude_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_latitude_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_longitude_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_longitude_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_speed_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_speed_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_direction_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_direction_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_accuracy_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_accuracy_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_satellitesNum_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.map.MyLocationData::get_satellitesNum_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}