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

class BMKHeatMap extends NSObject  {
  //region constants
  static const String name__ = 'BMKHeatMap';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<BMKHeatMap> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createBMKHeatMap',
      {'init': init}
    );
    return BmapMapFluttifyIOSAs<BMKHeatMap>(__result__);
  }
  
  static Future<List<BMKHeatMap>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchBMKHeatMap',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyIOSAs<BMKHeatMap>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<int> get_mRadius() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKHeatMap::get_mRadius", {'__this__': this});
    return __result__;
  }
  
  Future<BMKGradient> get_mGradient() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKHeatMap::get_mGradient", {'__this__': this});
    return BmapMapFluttifyIOSAs<BMKGradient>(__result__);
  }
  
  Future<double> get_mOpacity() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKHeatMap::get_mOpacity", {'__this__': this});
    return __result__;
  }
  
  Future<List<dynamic>> get_mData() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKHeatMap::get_mData", {'__this__': this});
    return (__result__ as List)?.cast<dynamic>();
  }
  
  //endregion

  //region setters
  Future<void> set_mRadius(int mRadius) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKHeatMap::set_mRadius', <String, dynamic>{'__this__': this, "mRadius": mRadius});
  
  
  }
  
  Future<void> set_mGradient(BMKGradient mGradient) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKHeatMap::set_mGradient', <String, dynamic>{'__this__': this, "mGradient": mGradient});
  
  
  }
  
  Future<void> set_mOpacity(double mOpacity) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKHeatMap::set_mOpacity', <String, dynamic>{'__this__': this, "mOpacity": mOpacity});
  
  
  }
  
  Future<void> set_mData(List<dynamic> mData) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKHeatMap::set_mData', <String, dynamic>{'__this__': this, "mData": mData});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'BMKHeatMap{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension BMKHeatMap_Batch on List<BMKHeatMap> {
  //region getters
  Future<List<int>> get_mRadius_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKHeatMap::get_mRadius_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<BMKGradient>> get_mGradient_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKHeatMap::get_mGradient_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => BmapMapFluttifyIOSAs<BMKGradient>(__result__))?.cast<BMKGradient>()?.toList();
  }
  
  Future<List<double>> get_mOpacity_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKHeatMap::get_mOpacity_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<List<dynamic>>> get_mData_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKHeatMap::get_mData_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as List)?.cast<dynamic>())?.cast<List<dynamic>>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_mRadius_batch(List<int> mRadius) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKHeatMap::set_mRadius_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mRadius": mRadius[__i__]}]);
  
  
  }
  
  Future<void> set_mGradient_batch(List<BMKGradient> mGradient) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKHeatMap::set_mGradient_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mGradient": mGradient[__i__]}]);
  
  
  }
  
  Future<void> set_mOpacity_batch(List<double> mOpacity) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKHeatMap::set_mOpacity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mOpacity": mOpacity[__i__]}]);
  
  
  }
  
  Future<void> set_mData_batch(List<List<dynamic>> mData) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKHeatMap::set_mData_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mData": mData[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}