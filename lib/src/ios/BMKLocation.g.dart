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

class BMKLocation extends NSObject  {
  //region constants
  static const String name__ = 'BMKLocation';

  
  //endregion

  //region creators
  static Future<BMKLocation> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKLocation');
    final object = BMKLocation()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKLocation>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKLocation', {'length': length});
  
    final List<BMKLocation> typedResult = resultBatch.map((result) => BMKLocation()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<CLLocation> get_location() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_location", {'refId': refId});
    kNativeObjectPool.add(CLLocation()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return CLLocation()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<BMKLocationReGeocode> get_rgcData() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_rgcData", {'refId': refId});
    kNativeObjectPool.add(BMKLocationReGeocode()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return BMKLocationReGeocode()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<BMKLocationProvider> get_provider() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_provider", {'refId': refId});
  
    return BMKLocationProvider.values[__result__];
  }
  
  Future<String> get_locationID() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_locationID", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_floorString() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_floorString", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_buildingID() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_buildingID", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_buildingName() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_buildingName", {'refId': refId});
  
    return __result__;
  }
  
  Future<Map> get_extraInfo() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_extraInfo", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_rgcData(BMKLocationReGeocode rgcData) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocation::set_rgcData', {'refId': refId, "rgcData": rgcData.refId});
  
  
  }
  
  Future<void> set_provider(BMKLocationProvider provider) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocation::set_provider', {'refId': refId, "provider": provider.index});
  
  
  }
  
  Future<void> set_locationID(String locationID) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocation::set_locationID', {'refId': refId, "locationID": locationID});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension BMKLocation_Batch on List<BMKLocation> {
  //region getters
  Future<List<CLLocation>> get_location_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_location_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => CLLocation()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<BMKLocationReGeocode>> get_rgcData_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_rgcData_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKLocationReGeocode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<BMKLocationProvider>> get_provider_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_provider_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKLocationProvider.values[__result__]).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_locationID_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_locationID_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_floorString_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_floorString_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_buildingID_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_buildingID_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_buildingName_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_buildingName_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<Map>> get_extraInfo_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocation::get_extraInfo_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<Map>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_rgcData_batch(List<BMKLocationReGeocode> rgcData) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocation::set_rgcData_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "rgcData": rgcData[__i__].refId}]);
  
  
  }
  
  Future<void> set_provider_batch(List<BMKLocationProvider> provider) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocation::set_provider_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "provider": provider[__i__].index}]);
  
  
  }
  
  Future<void> set_locationID_batch(List<String> locationID) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocation::set_locationID_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "locationID": locationID[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}