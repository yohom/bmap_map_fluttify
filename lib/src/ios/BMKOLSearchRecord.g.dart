// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class BMKOLSearchRecord extends NSObject  {
  //region constants
  static const String name__ = 'BMKOLSearchRecord';

  
  //endregion

  //region creators
  static Future<BMKOLSearchRecord> create__({ bool init = true /* ios only */ }) async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createBMKOLSearchRecord', {'init': init});
    final object = BMKOLSearchRecord()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<BMKOLSearchRecord>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchBMKOLSearchRecord', {'length': length, 'init': init});
  
    final List<BMKOLSearchRecord> typedResult = resultBatch.map((result) => BMKOLSearchRecord()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_cityName() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_cityName", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<int> get_size() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_size", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<int> get_cityID() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_cityID", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<int> get_cityType() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_cityType", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<List<NSObject>> get_childCities() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_childCities", {'__this__': this});
    return __result__ == null ? null : ((__result__ as List).cast<String>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList());
  }
  
  //endregion

  //region setters
  Future<void> set_cityName(String cityName) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKOLSearchRecord::set_cityName', <String, dynamic>{'__this__': this, "cityName": cityName});
  
  
  }
  
  Future<void> set_size(int size) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKOLSearchRecord::set_size', <String, dynamic>{'__this__': this, "size": size});
  
  
  }
  
  Future<void> set_cityID(int cityID) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKOLSearchRecord::set_cityID', <String, dynamic>{'__this__': this, "cityID": cityID});
  
  
  }
  
  Future<void> set_cityType(int cityType) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKOLSearchRecord::set_cityType', <String, dynamic>{'__this__': this, "cityType": cityType});
  
  
  }
  
  Future<void> set_childCities(List<NSObject> childCities) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKOLSearchRecord::set_childCities', <String, dynamic>{'__this__': this, "childCities": childCities});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension BMKOLSearchRecord_Batch on List<BMKOLSearchRecord> {
  //region getters
  Future<List<String>> get_cityName_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_cityName_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<int>> get_size_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_size_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<int>> get_cityID_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_cityID_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<int>> get_cityType_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_cityType_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<List<NSObject>>> get_childCities_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKOLSearchRecord::get_childCities_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as List).cast<String>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_cityName_batch(List<String> cityName) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKOLSearchRecord::set_cityName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "cityName": cityName[__i__]}]);
  
  
  }
  
  Future<void> set_size_batch(List<int> size) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKOLSearchRecord::set_size_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "size": size[__i__]}]);
  
  
  }
  
  Future<void> set_cityID_batch(List<int> cityID) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKOLSearchRecord::set_cityID_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "cityID": cityID[__i__]}]);
  
  
  }
  
  Future<void> set_cityType_batch(List<int> cityType) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKOLSearchRecord::set_cityType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "cityType": cityType[__i__]}]);
  
  
  }
  
  Future<void> set_childCities_batch(List<List<NSObject>> childCities) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKOLSearchRecord::set_childCities_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "childCities": childCities[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}