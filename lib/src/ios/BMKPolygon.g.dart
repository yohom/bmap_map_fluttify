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

class BMKPolygon extends BMKMultiPoint with BMKOverlay, BMKAnnotation {
  //region constants
  static const String name__ = 'BMKPolygon';

  
  //endregion

  //region creators
  static Future<BMKPolygon> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKPolygon');
    final object = BMKPolygon()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKPolygon>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKPolygon', {'length': length});
  
    final List<BMKPolygon> typedResult = resultBatch.map((result) => BMKPolygon()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<BMKPolygon> polygonWithPoints_count(List<BMKMapPoint> points, int count) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: BMKPolygon::polygonWithPoints([\'count\':$count])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKPolygon::polygonWithPoints_count', {"points": points.map((__it__) => __it__.refId).toList(), "count": count});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.add(BMKPolygon()..refId = __result__..tag__ = 'bmap_map_fluttify');
      return BMKPolygon()..refId = __result__..tag__ = 'bmap_map_fluttify';
    }
  }
  
  
  static Future<BMKPolygon> polygonWithCoordinates_count(List<CLLocationCoordinate2D> coords, int count) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: BMKPolygon::polygonWithCoordinates([\'count\':$count])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKPolygon::polygonWithCoordinates_count', {"coords": coords.map((__it__) => __it__.refId).toList(), "count": count});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.add(BMKPolygon()..refId = __result__..tag__ = 'bmap_map_fluttify');
      return BMKPolygon()..refId = __result__..tag__ = 'bmap_map_fluttify';
    }
  }
  
  
  Future<bool> setPolygonWithPoints_count(List<BMKMapPoint> points, int count) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: BMKPolygon@$refId::setPolygonWithPoints([\'count\':$count])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKPolygon::setPolygonWithPoints_count', {"points": points.map((__it__) => __it__.refId).toList(), "count": count, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  
  Future<bool> setPolygonWithCoordinates_count(List<CLLocationCoordinate2D> coords, int count) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: BMKPolygon@$refId::setPolygonWithCoordinates([\'count\':$count])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKPolygon::setPolygonWithCoordinates_count', {"coords": coords.map((__it__) => __it__.refId).toList(), "count": count, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  //endregion
}

extension BMKPolygon_Batch on List<BMKPolygon> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<BMKPolygon>> polygonWithPoints_count_batch(List<List<BMKMapPoint>> points, List<int> count) async {
    if (points.length != count.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKPolygon::polygonWithPoints_count_batch', [for (int __i__ = 0; __i__ < points.length; __i__++) {"points": points[__i__].map((it) => it.refId).toList(), "count": count[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKPolygon()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<BMKPolygon>> polygonWithCoordinates_count_batch(List<List<CLLocationCoordinate2D>> coords, List<int> count) async {
    if (coords.length != count.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKPolygon::polygonWithCoordinates_count_batch', [for (int __i__ = 0; __i__ < coords.length; __i__++) {"coords": coords[__i__].map((it) => it.refId).toList(), "count": count[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKPolygon()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<bool>> setPolygonWithPoints_count_batch(List<List<BMKMapPoint>> points, List<int> count) async {
    if (points.length != count.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKPolygon::setPolygonWithPoints_count_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"points": points[__i__].map((it) => it.refId).toList(), "count": count[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> setPolygonWithCoordinates_count_batch(List<List<CLLocationCoordinate2D>> coords, List<int> count) async {
    if (coords.length != count.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKPolygon::setPolygonWithCoordinates_count_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"coords": coords[__i__].map((it) => it.refId).toList(), "count": count[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  //endregion
}