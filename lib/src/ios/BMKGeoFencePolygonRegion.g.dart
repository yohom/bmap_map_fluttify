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

class BMKGeoFencePolygonRegion extends BMKGeoFenceRegion with NSCopying {
  //region constants
  static const String name__ = 'BMKGeoFencePolygonRegion';

  
  //endregion

  //region creators
  static Future<BMKGeoFencePolygonRegion> create__({ bool init = true /* ios only */ }) async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createBMKGeoFencePolygonRegion', {'init': init});
    final object = BMKGeoFencePolygonRegion()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<BMKGeoFencePolygonRegion>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchBMKGeoFencePolygonRegion', {'length': length, 'init': init});
  
    final List<BMKGeoFencePolygonRegion> typedResult = resultBatch.map((result) => BMKGeoFencePolygonRegion()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<List<CLLocationCoordinate2D>> get_coordinates() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGeoFencePolygonRegion::get_coordinates", {'__this__': this});
    return __result__ == null ? null : ((__result__ as List).cast<String>().map((__it__) => CLLocationCoordinate2D()..refId = __it__..tag__ = 'bmap_map_fluttify').toList());
  }
  
  Future<int> get_count() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGeoFencePolygonRegion::get_count", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<dynamic> initWithCustomID_identityID_coor_count_coor(String customid, String identityid, List<CLLocationCoordinate2D> coor, int count, BMKLocationCoordinateType type) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKGeoFencePolygonRegion@$refId::initWithCustomID([\'customid\':$customid, \'identityid\':$identityid, \'count\':$count])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGeoFencePolygonRegion::initWithCustomID_identityID_coor_count_coor', {"customid": customid, "identityid": identityid, "coor": coor, "count": count, "type": type.toValue(), "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
      return __return__;
    }
  }
  
  //endregion
}

extension BMKGeoFencePolygonRegion_Batch on List<BMKGeoFencePolygonRegion> {
  //region getters
  Future<List<List<CLLocationCoordinate2D>>> get_coordinates_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGeoFencePolygonRegion::get_coordinates_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as List).cast<String>().map((__it__) => CLLocationCoordinate2D()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
    return typedResult;
  }
  
  Future<List<int>> get_count_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGeoFencePolygonRegion::get_count_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<dynamic>> initWithCustomID_identityID_coor_count_coor_batch(List<String> customid, List<String> identityid, List<List<CLLocationCoordinate2D>> coor, List<int> count, List<BMKLocationCoordinateType> type) async {
    if (customid.length != identityid.length || identityid.length != coor.length || coor.length != count.length || count.length != type.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGeoFencePolygonRegion::initWithCustomID_identityID_coor_count_coor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"customid": customid[__i__], "identityid": identityid[__i__], "coor": coor[__i__], "count": count[__i__], "type": type[__i__].toValue(), "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
      return typedResult;
    }
  }
  
  //endregion
}