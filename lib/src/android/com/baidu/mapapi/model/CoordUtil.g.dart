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

class com_baidu_mapapi_model_CoordUtil extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.model.CoordUtil';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_model_CoordUtil> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_model_CoordUtil__');
    final object = com_baidu_mapapi_model_CoordUtil()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_model_CoordUtil>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_model_CoordUtil__', {'length': length});
  
    final List<com_baidu_mapapi_model_CoordUtil> typedResult = resultBatch.map((result) => com_baidu_mapapi_model_CoordUtil()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<com_baidu_mapapi_model_LatLng> mc2ll(com_baidu_mapapi_model_inner_GeoPoint var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::mc2ll([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::mc2ll', {"var0": var0.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify');
      return com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify';
    }
  }
  
  
  static Future<com_baidu_mapapi_model_inner_GeoPoint> ll2mc(com_baidu_mapapi_model_LatLng var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::ll2mc([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::ll2mc', {"var0": var0.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_baidu_mapapi_model_inner_GeoPoint()..refId = __result__..tag__ = 'bmap_map_fluttify');
      return com_baidu_mapapi_model_inner_GeoPoint()..refId = __result__..tag__ = 'bmap_map_fluttify';
    }
  }
  
  
  static Future<com_baidu_mapapi_model_inner_Point> ll2point(com_baidu_mapapi_model_LatLng var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::ll2point([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::ll2point', {"var0": var0.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify');
      return com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify';
    }
  }
  
  
  static Future<int> getMCDistanceByOneLatLngAndRadius(com_baidu_mapapi_model_LatLng var0, int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::getMCDistanceByOneLatLngAndRadius([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::getMCDistanceByOneLatLngAndRadius', {"var0": var0.refId, "var1": var1});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
    
      return __result__;
    }
  }
  
  
  static Future<com_baidu_mapapi_model_LatLng> decodeLocation(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::decodeLocation([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::decodeLocation', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify');
      return com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify';
    }
  }
  
  
  static Future<com_baidu_mapapi_model_LatLng> decodeNodeLocation(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::decodeNodeLocation([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::decodeNodeLocation', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify');
      return com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify';
    }
  }
  
  
  static Future<List<com_baidu_mapapi_model_LatLng>> decodeLocationList(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::decodeLocationList([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::decodeLocationList', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => com_baidu_mapapi_model_LatLng()..refId = __it__..tag__ = 'bmap_map_fluttify').toList());
      return (__result__ as List).cast<int>().map((__it__) => com_baidu_mapapi_model_LatLng()..refId = __it__..tag__ = 'bmap_map_fluttify').toList();
    }
  }
  
  
  static Future<com_baidu_mapapi_model_LatLng> Coordinate_encryptEx(double var0, double var1, String var2) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::Coordinate_encryptEx([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::Coordinate_encryptEx', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify');
      return com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify';
    }
  }
  
  
  static Future<double> getDistance(com_baidu_mapapi_model_inner_Point var0, com_baidu_mapapi_model_inner_Point var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.baidu.mapapi.model.CoordUtil::getDistance([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::getDistance', {"var0": var0.refId, "var1": var1.refId});
  
  
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

extension com_baidu_mapapi_model_CoordUtil_Batch on List<com_baidu_mapapi_model_CoordUtil> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<com_baidu_mapapi_model_LatLng>> mc2ll_batch(List<com_baidu_mapapi_model_inner_GeoPoint> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::mc2ll_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_model_inner_GeoPoint>> ll2mc_batch(List<com_baidu_mapapi_model_LatLng> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::ll2mc_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_inner_GeoPoint()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_model_inner_Point>> ll2point_batch(List<com_baidu_mapapi_model_LatLng> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::ll2point_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_inner_Point()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<int>> getMCDistanceByOneLatLngAndRadius_batch(List<com_baidu_mapapi_model_LatLng> var0, List<int> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::getMCDistanceByOneLatLngAndRadius_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId, "var1": var1[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_model_LatLng>> decodeLocation_batch(List<String> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::decodeLocation_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_model_LatLng>> decodeNodeLocation_batch(List<String> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::decodeNodeLocation_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<List<com_baidu_mapapi_model_LatLng>>> decodeLocationList_batch(List<String> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::decodeLocationList_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => com_baidu_mapapi_model_LatLng()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
      kNativeObjectPool.addAll(typedResult.expand((e) => e));
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_model_LatLng>> Coordinate_encryptEx_batch(List<double> var0, List<double> var1, List<String> var2) async {
    if (var0.length != var1.length || var1.length != var2.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::Coordinate_encryptEx_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__], "var1": var1[__i__], "var2": var2[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<double>> getDistance_batch(List<com_baidu_mapapi_model_inner_Point> var0, List<com_baidu_mapapi_model_inner_Point> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.model.CoordUtil::getDistance_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__].refId, "var1": var1[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  //endregion
}