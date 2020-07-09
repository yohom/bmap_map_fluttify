// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_baidu_mapapi_search_route_IndoorRoutePlanOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.IndoorRoutePlanOption';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_route_IndoorRoutePlanOption> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_route_IndoorRoutePlanOption__');
    final object = com_baidu_mapapi_search_route_IndoorRoutePlanOption()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_route_IndoorRoutePlanOption>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_route_IndoorRoutePlanOption__', {'length': length});
  
    final List<com_baidu_mapapi_search_route_IndoorRoutePlanOption> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_route_IndoorRoutePlanOption()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<com_baidu_mapapi_search_route_IndoorPlanNode> get_mFrom() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.IndoorRoutePlanOption::get_mFrom", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_search_route_IndoorPlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_search_route_IndoorPlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<com_baidu_mapapi_search_route_IndoorPlanNode> get_mTo() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.IndoorRoutePlanOption::get_mTo", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_search_route_IndoorPlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_search_route_IndoorPlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  //endregion

  //region setters
  Future<void> set_mFrom(com_baidu_mapapi_search_route_IndoorPlanNode mFrom) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.IndoorRoutePlanOption::set_mFrom', {'refId': refId, "mFrom": mFrom.refId});
  
  
  }
  
  Future<void> set_mTo(com_baidu_mapapi_search_route_IndoorPlanNode mTo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.IndoorRoutePlanOption::set_mTo', {'refId': refId, "mTo": mTo.refId});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_route_IndoorRoutePlanOption> from(com_baidu_mapapi_search_route_IndoorPlanNode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.IndoorRoutePlanOption@$refId::from([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.IndoorRoutePlanOption::from', {"var1": var1 is Ref ? (var1 as Ref)?.refId : var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_IndoorRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_IndoorRoutePlanOption> to(com_baidu_mapapi_search_route_IndoorPlanNode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.IndoorRoutePlanOption@$refId::to([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.IndoorRoutePlanOption::to', {"var1": var1 is Ref ? (var1 as Ref)?.refId : var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_IndoorRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_search_route_IndoorRoutePlanOption_Batch on List<com_baidu_mapapi_search_route_IndoorRoutePlanOption> {
  //region getters
  Future<List<com_baidu_mapapi_search_route_IndoorPlanNode>> get_mFrom_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.IndoorRoutePlanOption::get_mFrom_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_IndoorPlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_IndoorPlanNode>> get_mTo_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.IndoorRoutePlanOption::get_mTo_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_IndoorPlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_mFrom_batch(List<com_baidu_mapapi_search_route_IndoorPlanNode> mFrom) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.IndoorRoutePlanOption::set_mFrom_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mFrom": mFrom[__i__].refId}]);
  
  
  }
  
  Future<void> set_mTo_batch(List<com_baidu_mapapi_search_route_IndoorPlanNode> mTo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.IndoorRoutePlanOption::set_mTo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mTo": mTo[__i__].refId}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_route_IndoorRoutePlanOption>> from_batch(List<com_baidu_mapapi_search_route_IndoorPlanNode> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.IndoorRoutePlanOption::from_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_IndoorRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_IndoorRoutePlanOption>> to_batch(List<com_baidu_mapapi_search_route_IndoorPlanNode> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.IndoorRoutePlanOption::to_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_IndoorRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}