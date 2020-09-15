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

class com_baidu_mapapi_search_route_BikingRoutePlanOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.BikingRoutePlanOption';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_route_BikingRoutePlanOption> create__() async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_route_BikingRoutePlanOption__', );
    final object = com_baidu_mapapi_search_route_BikingRoutePlanOption()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_route_BikingRoutePlanOption>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_route_BikingRoutePlanOption__', {'length': length});
  
    final List<com_baidu_mapapi_search_route_BikingRoutePlanOption> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_route_BikingRoutePlanOption()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<com_baidu_mapapi_search_route_PlanNode> get_mFrom() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.BikingRoutePlanOption::get_mFrom", {'__this__': this});
    return __result__ == null ? null : (com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<com_baidu_mapapi_search_route_PlanNode> get_mTo() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.BikingRoutePlanOption::get_mTo", {'__this__': this});
    return __result__ == null ? null : (com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<int> get_mRidingType() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.BikingRoutePlanOption::get_mRidingType", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  //endregion

  //region setters
  Future<void> set_mFrom(com_baidu_mapapi_search_route_PlanNode mFrom) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::set_mFrom', <String, dynamic>{'__this__': this, "mFrom": mFrom});
  
  
  }
  
  Future<void> set_mTo(com_baidu_mapapi_search_route_PlanNode mTo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::set_mTo', <String, dynamic>{'__this__': this, "mTo": mTo});
  
  
  }
  
  Future<void> set_mRidingType(int mRidingType) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::set_mRidingType', <String, dynamic>{'__this__': this, "mRidingType": mRidingType});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_route_BikingRoutePlanOption> from(com_baidu_mapapi_search_route_PlanNode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.BikingRoutePlanOption@$refId::from([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::from', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_BikingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_BikingRoutePlanOption> ridingType(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.BikingRoutePlanOption@$refId::ridingType([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::ridingType', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_BikingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_search_route_BikingRoutePlanOption_Batch on List<com_baidu_mapapi_search_route_BikingRoutePlanOption> {
  //region getters
  Future<List<com_baidu_mapapi_search_route_PlanNode>> get_mFrom_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.BikingRoutePlanOption::get_mFrom_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_PlanNode>> get_mTo_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.BikingRoutePlanOption::get_mTo_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<int>> get_mRidingType_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.BikingRoutePlanOption::get_mRidingType_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_mFrom_batch(List<com_baidu_mapapi_search_route_PlanNode> mFrom) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::set_mFrom_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mFrom": mFrom[__i__]}]);
  
  
  }
  
  Future<void> set_mTo_batch(List<com_baidu_mapapi_search_route_PlanNode> mTo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::set_mTo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mTo": mTo[__i__]}]);
  
  
  }
  
  Future<void> set_mRidingType_batch(List<int> mRidingType) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::set_mRidingType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mRidingType": mRidingType[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_route_BikingRoutePlanOption>> from_batch(List<com_baidu_mapapi_search_route_PlanNode> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::from_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_BikingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_BikingRoutePlanOption>> ridingType_batch(List<int> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.BikingRoutePlanOption::ridingType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_BikingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  //endregion
}