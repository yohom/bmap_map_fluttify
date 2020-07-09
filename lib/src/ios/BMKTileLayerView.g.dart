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

class BMKTileLayerView extends BMKOverlayView  {
  //region constants
  static const String name__ = 'BMKTileLayerView';

  
  //endregion

  //region creators
  static Future<BMKTileLayerView> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKTileLayerView');
    final object = BMKTileLayerView()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKTileLayerView>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKTileLayerView', {'length': length});
  
    final List<BMKTileLayerView> typedResult = resultBatch.map((result) => BMKTileLayerView()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<BMKTileLayer> get_tileLayer({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKTileLayerView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKTileLayerView::get_tileLayer", {'refId': refId});
    kNativeObjectPool.add(BMKTileLayer()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return BMKTileLayer()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<dynamic> initWithTileLayer(BMKTileLayer tileLayer, {bool viewChannel = true}) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKTileLayerView@$refId::initWithTileLayer([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKTileLayerView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKTileLayerView::initWithTileLayer', {"tileLayer": tileLayer is Ref ? (tileLayer as Ref)?.refId : tileLayer, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = Ref()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension BMKTileLayerView_Batch on List<BMKTileLayerView> {
  //region getters
  Future<List<BMKTileLayer>> get_tileLayer_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKTileLayerView' : 'com.fluttify/bmap_map_fluttify').invokeMethod("BMKTileLayerView::get_tileLayer_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKTileLayer()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<dynamic>> initWithTileLayer_batch(List<BMKTileLayer> tileLayer, {bool viewChannel = true}) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel(viewChannel ? 'com.fluttify/bmap_map_fluttify/BMKTileLayerView' : 'com.fluttify/bmap_map_fluttify').invokeMethod('BMKTileLayerView::initWithTileLayer_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"tileLayer": tileLayer[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => Ref()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}