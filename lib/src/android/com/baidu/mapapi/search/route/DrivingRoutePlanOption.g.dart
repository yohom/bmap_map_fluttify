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

class com_baidu_mapapi_search_route_DrivingRoutePlanOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.DrivingRoutePlanOption';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_route_DrivingRoutePlanOption> create__() async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_route_DrivingRoutePlanOption__', );
    final object = com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_route_DrivingRoutePlanOption>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_route_DrivingRoutePlanOption__', {'length': length});
  
    final List<com_baidu_mapapi_search_route_DrivingRoutePlanOption> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<com_baidu_mapapi_search_route_PlanNode> get_mFrom() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mFrom", {'__this__': this});
    return __result__ == null ? null : (com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<com_baidu_mapapi_search_route_PlanNode> get_mTo() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mTo", {'__this__': this});
    return __result__ == null ? null : (com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<String> get_mCityName() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mCityName", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy> get_mPolicy() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mPolicy", {'__this__': this});
    return __result__ == null ? null : ((__result__ as int).tocom_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy());
  }
  
  Future<List<com_baidu_mapapi_search_route_PlanNode>> get_mWayPoints() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mWayPoints", {'__this__': this});
    return __result__ == null ? null : ((__result__ as List).cast<String>().map((__it__) => com_baidu_mapapi_search_route_PlanNode()..refId = __it__..tag__ = 'bmap_map_fluttify').toList());
  }
  
  Future<com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy> get_mtrafficPolicy() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mtrafficPolicy", {'__this__': this});
    return __result__ == null ? null : ((__result__ as int).tocom_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy());
  }
  
  //endregion

  //region setters
  Future<void> set_mFrom(com_baidu_mapapi_search_route_PlanNode mFrom) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mFrom', <String, dynamic>{'__this__': this, "mFrom": mFrom});
  
  
  }
  
  Future<void> set_mTo(com_baidu_mapapi_search_route_PlanNode mTo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mTo', <String, dynamic>{'__this__': this, "mTo": mTo});
  
  
  }
  
  Future<void> set_mCityName(String mCityName) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mCityName', <String, dynamic>{'__this__': this, "mCityName": mCityName});
  
  
  }
  
  Future<void> set_mPolicy(com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy mPolicy) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mPolicy', <String, dynamic>{'__this__': this, "mPolicy": mPolicy.toValue()});
  
  
  }
  
  Future<void> set_mWayPoints(List<com_baidu_mapapi_search_route_PlanNode> mWayPoints) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mWayPoints', <String, dynamic>{'__this__': this, "mWayPoints": mWayPoints});
  
  
  }
  
  Future<void> set_mtrafficPolicy(com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy mtrafficPolicy) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mtrafficPolicy', <String, dynamic>{'__this__': this, "mtrafficPolicy": mtrafficPolicy.toValue()});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_route_DrivingRoutePlanOption> from(com_baidu_mapapi_search_route_PlanNode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRoutePlanOption@$refId::from([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::from', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_DrivingRoutePlanOption> currentCity(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRoutePlanOption@$refId::currentCity([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::currentCity', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_DrivingRoutePlanOption> passBy(List<com_baidu_mapapi_search_route_PlanNode> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRoutePlanOption@$refId::passBy([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::passBy', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_DrivingRoutePlanOption> trafficPolicy(com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRoutePlanOption@$refId::trafficPolicy([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::trafficPolicy', {"var1": var1.toValue(), "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_route_DrivingRoutePlanOption> policy(com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRoutePlanOption@$refId::policy([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::policy', {"var1": var1.toValue(), "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_search_route_DrivingRoutePlanOption_Batch on List<com_baidu_mapapi_search_route_DrivingRoutePlanOption> {
  //region getters
  Future<List<com_baidu_mapapi_search_route_PlanNode>> get_mFrom_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mFrom_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_PlanNode>> get_mTo_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mTo_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_PlanNode()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<String>> get_mCityName_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mCityName_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy>> get_mPolicy_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mPolicy_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as int).tocom_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy()).toList();
    return typedResult;
  }
  
  Future<List<List<com_baidu_mapapi_search_route_PlanNode>>> get_mWayPoints_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mWayPoints_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as List).cast<String>().map((__it__) => com_baidu_mapapi_search_route_PlanNode()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy>> get_mtrafficPolicy_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.route.DrivingRoutePlanOption::get_mtrafficPolicy_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as int).tocom_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy()).toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_mFrom_batch(List<com_baidu_mapapi_search_route_PlanNode> mFrom) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mFrom_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mFrom": mFrom[__i__]}]);
  
  
  }
  
  Future<void> set_mTo_batch(List<com_baidu_mapapi_search_route_PlanNode> mTo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mTo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mTo": mTo[__i__]}]);
  
  
  }
  
  Future<void> set_mCityName_batch(List<String> mCityName) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mCityName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mCityName": mCityName[__i__]}]);
  
  
  }
  
  Future<void> set_mPolicy_batch(List<com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy> mPolicy) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mPolicy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mPolicy": mPolicy[__i__].toValue()}]);
  
  
  }
  
  Future<void> set_mWayPoints_batch(List<List<com_baidu_mapapi_search_route_PlanNode>> mWayPoints) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mWayPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mWayPoints": mWayPoints[__i__]}]);
  
  
  }
  
  Future<void> set_mtrafficPolicy_batch(List<com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy> mtrafficPolicy) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::set_mtrafficPolicy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mtrafficPolicy": mtrafficPolicy[__i__].toValue()}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_route_DrivingRoutePlanOption>> from_batch(List<com_baidu_mapapi_search_route_PlanNode> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::from_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_DrivingRoutePlanOption>> currentCity_batch(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::currentCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_DrivingRoutePlanOption>> passBy_batch(List<List<com_baidu_mapapi_search_route_PlanNode>> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::passBy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_DrivingRoutePlanOption>> trafficPolicy_batch(List<com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::trafficPolicy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].toValue(), "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_route_DrivingRoutePlanOption>> policy_batch(List<com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.route.DrivingRoutePlanOption::policy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].toValue(), "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_route_DrivingRoutePlanOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  //endregion
}