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

class BMKBaseIndoorMapInfo extends NSObject  {
  //region constants
  static const String name__ = 'BMKBaseIndoorMapInfo';

  
  //endregion

  //region creators
  static Future<BMKBaseIndoorMapInfo> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKBaseIndoorMapInfo');
    final object = BMKBaseIndoorMapInfo()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKBaseIndoorMapInfo>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKBaseIndoorMapInfo', {'length': length});
  
    final List<BMKBaseIndoorMapInfo> typedResult = resultBatch.map((result) => BMKBaseIndoorMapInfo()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_strID() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKBaseIndoorMapInfo::get_strID", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_strFloor() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKBaseIndoorMapInfo::get_strFloor", {'refId': refId});
  
    return __result__;
  }
  
  Future<List<NSObject>> get_arrStrFloors() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKBaseIndoorMapInfo::get_arrStrFloors", {'refId': refId});
    kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => BMKGradient()..refId = __it__..tag__ = 'bmap_map_fluttify').toList());
    return (__result__ as List).cast<int>().map((__it__) => BMKGradient()..refId = __it__..tag__ = 'bmap_map_fluttify').toList();
  }
  
  //endregion

  //region setters
  Future<void> set_strID(String strID) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKBaseIndoorMapInfo::set_strID', {'refId': refId, "strID": strID});
  
  
  }
  
  Future<void> set_strFloor(String strFloor) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKBaseIndoorMapInfo::set_strFloor', {'refId': refId, "strFloor": strFloor});
  
  
  }
  
  Future<void> set_arrStrFloors(List<NSObject> arrStrFloors) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKBaseIndoorMapInfo::set_arrStrFloors', {'refId': refId, "arrStrFloors": arrStrFloors.map((it) => it.refId).toList()});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension BMKBaseIndoorMapInfo_Batch on List<BMKBaseIndoorMapInfo> {
  //region getters
  Future<List<String>> get_strID_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKBaseIndoorMapInfo::get_strID_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_strFloor_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKBaseIndoorMapInfo::get_strFloor_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<List<NSObject>>> get_arrStrFloors_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKBaseIndoorMapInfo::get_arrStrFloors_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => BMKGradient()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
    kNativeObjectPool.addAll(typedResult.expand((e) => e));
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_strID_batch(List<String> strID) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKBaseIndoorMapInfo::set_strID_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "strID": strID[__i__]}]);
  
  
  }
  
  Future<void> set_strFloor_batch(List<String> strFloor) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKBaseIndoorMapInfo::set_strFloor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "strFloor": strFloor[__i__]}]);
  
  
  }
  
  Future<void> set_arrStrFloors_batch(List<List<NSObject>> arrStrFloors) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKBaseIndoorMapInfo::set_arrStrFloors_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "arrStrFloors": arrStrFloors[__i__].map((it) => it.refId).toList()}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}