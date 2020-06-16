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

class BMKArcline extends BMKMultiPoint with BMKOverlay, BMKAnnotation {
  //region constants
  static const String name__ = 'BMKArcline';

  
  //endregion

  //region creators
  static Future<BMKArcline> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKArcline');
    final object = BMKArcline()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKArcline>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKArcline', {'length': length});
  
    final List<BMKArcline> typedResult = resultBatch.map((result) => BMKArcline()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<BMKArcline> arclineWithPoints(List<BMKMapPoint> points) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKArcline::arclineWithPoints([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKArcline::arclineWithPoints', {"points": points.map((__it__) => __it__?.refId).toList()});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = BMKArcline()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  static Future<BMKArcline> arclineWithCoordinates(List<CLLocationCoordinate2D> coords) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKArcline::arclineWithCoordinates([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKArcline::arclineWithCoordinates', {"coords": coords.map((__it__) => __it__?.refId).toList()});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = BMKArcline()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<bool> setArclineWithPoints(List<BMKMapPoint> points) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKArcline@$refId::setArclineWithPoints([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKArcline::setArclineWithPoints', {"points": points.map((__it__) => __it__?.refId).toList(), "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> setArclineWithCoordinates(List<CLLocationCoordinate2D> coords) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKArcline@$refId::setArclineWithCoordinates([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKArcline::setArclineWithCoordinates', {"coords": coords.map((__it__) => __it__?.refId).toList(), "refId": refId});
  
  
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

extension BMKArcline_Batch on List<BMKArcline> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<BMKArcline>> arclineWithPoints_batch(List<List<BMKMapPoint>> points) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKArcline::arclineWithPoints_batch', [for (int __i__ = 0; __i__ < points.length; __i__++) {"points": points[__i__].map((it) => it.refId).toList()}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKArcline()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<BMKArcline>> arclineWithCoordinates_batch(List<List<CLLocationCoordinate2D>> coords) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKArcline::arclineWithCoordinates_batch', [for (int __i__ = 0; __i__ < coords.length; __i__++) {"coords": coords[__i__].map((it) => it.refId).toList()}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKArcline()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<bool>> setArclineWithPoints_batch(List<List<BMKMapPoint>> points) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKArcline::setArclineWithPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"points": points[__i__].map((it) => it.refId).toList(), "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> setArclineWithCoordinates_batch(List<List<CLLocationCoordinate2D>> coords) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKArcline::setArclineWithCoordinates_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"coords": coords[__i__].map((it) => it.refId).toList(), "refId": this[__i__].refId}]);
  
  
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