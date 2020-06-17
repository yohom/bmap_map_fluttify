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

class com_baidu_mapapi_search_route_MassTransitRoutePlanOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.MassTransitRoutePlanOption';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_route_MassTransitRoutePlanOption__');
    final object = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_route_MassTransitRoutePlanOption__', {'length': length});
  
    final List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<com_baidu_mapapi_search_route_PlanNode> get_mFrom() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mFrom", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<com_baidu_mapapi_search_route_PlanNode> get_mTo() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mTo", {'refId': refId});
    kNativeObjectPool.add(com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<String> get_mCoordType() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mCoordType", {'refId': refId});
  
    return __result__;
  }
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIncity> get_mTacticsIncity() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mTacticsIncity", {'refId': refId});
  
    return com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIncity.values[__result__];
  }
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIntercity> get_mTacticsIntercity() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mTacticsIntercity", {'refId': refId});
  
    return com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIntercity.values[__result__];
  }
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TransTypeIntercity> get_mTransTypeIntercity() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mTransTypeIntercity", {'refId': refId});
  
    return com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TransTypeIntercity.values[__result__];
  }
  
  Future<int> get_mPageSize() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mPageSize", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_mPageIndex() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mPageIndex", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_mFrom(com_baidu_mapapi_search_route_PlanNode mFrom) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mFrom', {'refId': refId, "mFrom": mFrom.refId});
  
  
  }
  
  Future<void> set_mTo(com_baidu_mapapi_search_route_PlanNode mTo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mTo', {'refId': refId, "mTo": mTo.refId});
  
  
  }
  
  Future<void> set_mCoordType(String mCoordType) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mCoordType', {'refId': refId, "mCoordType": mCoordType});
  
  
  }
  
  Future<void> set_mTacticsIncity(com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIncity mTacticsIncity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mTacticsIncity', {'refId': refId, "mTacticsIncity": mTacticsIncity.index});
  
  
  }
  
  Future<void> set_mTacticsIntercity(com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIntercity mTacticsIntercity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mTacticsIntercity', {'refId': refId, "mTacticsIntercity": mTacticsIntercity.index});
  
  
  }
  
  Future<void> set_mTransTypeIntercity(com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TransTypeIntercity mTransTypeIntercity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mTransTypeIntercity', {'refId': refId, "mTransTypeIntercity": mTransTypeIntercity.index});
  
  
  }
  
  Future<void> set_mPageSize(int mPageSize) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mPageSize', {'refId': refId, "mPageSize": mPageSize});
  
  
  }
  
  Future<void> set_mPageIndex(int mPageIndex) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mPageIndex', {'refId': refId, "mPageIndex": mPageIndex});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> from(com_baidu_mapapi_search_route_PlanNode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.MassTransitRoutePlanOption@$refId::from([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::from', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> to(com_baidu_mapapi_search_route_PlanNode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.MassTransitRoutePlanOption@$refId::to([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::to', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  @deprecated
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> coordType(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.MassTransitRoutePlanOption@$refId::coordType([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::coordType', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> tacticsIncity(com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIncity var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.MassTransitRoutePlanOption@$refId::tacticsIncity([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::tacticsIncity', {"var1": var1.index + 0, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> tacticsIntercity(com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIntercity var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.MassTransitRoutePlanOption@$refId::tacticsIntercity([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::tacticsIntercity', {"var1": var1.index + 0, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> transtypeintercity(com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TransTypeIntercity var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.MassTransitRoutePlanOption@$refId::transtypeintercity([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::transtypeintercity', {"var1": var1.index + 0, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> pageSize(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.MassTransitRoutePlanOption@$refId::pageSize([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::pageSize', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> pageIndex(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.MassTransitRoutePlanOption@$refId::pageIndex([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::pageIndex', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_search_route_MassTransitRoutePlanOption_Batch on List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> {
  //region getters
  Future<List<com_baidu_mapapi_search_route_PlanNode>> get_mFrom_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mFrom_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_PlanNode>> get_mTo_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mTo_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<String>> get_mCoordType_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mCoordType_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIncity>> get_mTacticsIncity_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mTacticsIncity_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIncity.values[__result__]).toList();
  
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIntercity>> get_mTacticsIntercity_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mTacticsIntercity_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIntercity.values[__result__]).toList();
  
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TransTypeIntercity>> get_mTransTypeIntercity_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mTransTypeIntercity_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TransTypeIntercity.values[__result__]).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_mPageSize_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mPageSize_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_mPageIndex_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.route.MassTransitRoutePlanOption::get_mPageIndex_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_mFrom_batch(List<com_baidu_mapapi_search_route_PlanNode> mFrom) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mFrom_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mFrom": mFrom[__i__].refId}]);
  
  
  }
  
  Future<void> set_mTo_batch(List<com_baidu_mapapi_search_route_PlanNode> mTo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mTo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mTo": mTo[__i__].refId}]);
  
  
  }
  
  Future<void> set_mCoordType_batch(List<String> mCoordType) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mCoordType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mCoordType": mCoordType[__i__]}]);
  
  
  }
  
  Future<void> set_mTacticsIncity_batch(List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIncity> mTacticsIncity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mTacticsIncity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mTacticsIncity": mTacticsIncity[__i__].index}]);
  
  
  }
  
  Future<void> set_mTacticsIntercity_batch(List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIntercity> mTacticsIntercity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mTacticsIntercity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mTacticsIntercity": mTacticsIntercity[__i__].index}]);
  
  
  }
  
  Future<void> set_mTransTypeIntercity_batch(List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TransTypeIntercity> mTransTypeIntercity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mTransTypeIntercity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mTransTypeIntercity": mTransTypeIntercity[__i__].index}]);
  
  
  }
  
  Future<void> set_mPageSize_batch(List<int> mPageSize) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mPageSize_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mPageSize": mPageSize[__i__]}]);
  
  
  }
  
  Future<void> set_mPageIndex_batch(List<int> mPageIndex) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::set_mPageIndex_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mPageIndex": mPageIndex[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> from_batch(List<com_baidu_mapapi_search_route_PlanNode> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::from_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> to_batch(List<com_baidu_mapapi_search_route_PlanNode> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::to_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  @deprecated
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> coordType_batch(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::coordType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> tacticsIncity_batch(List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIncity> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::tacticsIncity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].index, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> tacticsIntercity_batch(List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TacticsIntercity> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::tacticsIntercity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].index, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> transtypeintercity_batch(List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption_TransTypeIntercity> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::transtypeintercity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].index, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> pageSize_batch(List<int> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::pageSize_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption>> pageIndex_batch(List<int> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.MassTransitRoutePlanOption::pageIndex_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_MassTransitRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}