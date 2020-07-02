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

class com_baidu_mapapi_search_route_RoutePlanSearch extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.RoutePlanSearch';

  
  //endregion

  //region creators
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<com_baidu_mapapi_search_route_RoutePlanSearch> newInstance() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch::newInstance([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::newInstance', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_route_RoutePlanSearch()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<void> setOnGetRoutePlanResultListener(com_baidu_mapapi_search_route_OnGetRoutePlanResultListener var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch@$refId::setOnGetRoutePlanResultListener([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::setOnGetRoutePlanResultListener', {"refId": refId});
  
  
    // handle native call
    MethodChannel('com.baidu.mapapi.search.route.RoutePlanSearch::setOnGetRoutePlanResultListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          switch (methodCall.method) {
            case 'Callback::com.baidu.mapapi.search.route.OnGetRoutePlanResultListener::onGetWalkingRouteResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetWalkingRouteResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetWalkingRouteResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_route_WalkingRouteResult>());
              break;
            case 'Callback::com.baidu.mapapi.search.route.OnGetRoutePlanResultListener::onGetTransitRouteResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetTransitRouteResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetTransitRouteResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_route_TransitRouteResult>());
              break;
            case 'Callback::com.baidu.mapapi.search.route.OnGetRoutePlanResultListener::onGetMassTransitRouteResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetMassTransitRouteResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetMassTransitRouteResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_route_MassTransitRouteResult>());
              break;
            case 'Callback::com.baidu.mapapi.search.route.OnGetRoutePlanResultListener::onGetDrivingRouteResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetDrivingRouteResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetDrivingRouteResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_route_DrivingRouteResult>());
              break;
            case 'Callback::com.baidu.mapapi.search.route.OnGetRoutePlanResultListener::onGetIndoorRouteResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetIndoorRouteResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetIndoorRouteResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_route_IndoorRouteResult>());
              break;
            case 'Callback::com.baidu.mapapi.search.route.OnGetRoutePlanResultListener::onGetBikingRouteResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetBikingRouteResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetBikingRouteResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_route_BikingRouteResult>());
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> transitSearch(com_baidu_mapapi_search_route_TransitRoutePlanOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch@$refId::transitSearch([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::transitSearch', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> masstransitSearch(com_baidu_mapapi_search_route_MassTransitRoutePlanOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch@$refId::masstransitSearch([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::masstransitSearch', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> walkingSearch(com_baidu_mapapi_search_route_WalkingRoutePlanOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch@$refId::walkingSearch([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::walkingSearch', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> walkingIndoorSearch(com_baidu_mapapi_search_route_IndoorRoutePlanOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch@$refId::walkingIndoorSearch([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::walkingIndoorSearch', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> drivingSearch(com_baidu_mapapi_search_route_DrivingRoutePlanOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch@$refId::drivingSearch([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::drivingSearch', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> bikingSearch(com_baidu_mapapi_search_route_BikingRoutePlanOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch@$refId::bikingSearch([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::bikingSearch', {"var1": var1?.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> destroy() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.RoutePlanSearch@$refId::destroy([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::destroy', {"refId": refId});
  
  
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

extension com_baidu_mapapi_search_route_RoutePlanSearch_Batch on List<com_baidu_mapapi_search_route_RoutePlanSearch> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<com_baidu_mapapi_search_route_RoutePlanSearch>> newInstance_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::newInstance_batch', );
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_route_RoutePlanSearch()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<bool>> transitSearch_batch(List<com_baidu_mapapi_search_route_TransitRoutePlanOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::transitSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> masstransitSearch_batch(List<com_baidu_mapapi_search_route_MassTransitRoutePlanOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::masstransitSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> walkingSearch_batch(List<com_baidu_mapapi_search_route_WalkingRoutePlanOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::walkingSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> walkingIndoorSearch_batch(List<com_baidu_mapapi_search_route_IndoorRoutePlanOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::walkingIndoorSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> drivingSearch_batch(List<com_baidu_mapapi_search_route_DrivingRoutePlanOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::drivingSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> bikingSearch_batch(List<com_baidu_mapapi_search_route_BikingRoutePlanOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::bikingSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<void>> destroy_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.route.RoutePlanSearch::destroy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
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