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

class com_baidu_mapapi_search_poi_PoiSearch extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.poi.PoiSearch';

  
  //endregion

  //region creators
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<void> setOnGetPoiSearchResultListener(com_baidu_mapapi_search_poi_OnGetPoiSearchResultListener var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiSearch@$refId::setOnGetPoiSearchResultListener([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::setOnGetPoiSearchResultListener', {"refId": refId});
  
  
    // handle native call
    MethodChannel('com.baidu.mapapi.search.poi.PoiSearch::setOnGetPoiSearchResultListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          switch (methodCall.method) {
            case 'Callback::com.baidu.mapapi.search.poi.OnGetPoiSearchResultListener::onGetPoiResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetPoiResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetPoiResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_poi_PoiResult>());
              break;
            case 'Callback::com.baidu.mapapi.search.poi.OnGetPoiSearchResultListener::onGetPoiDetailResult__com_baidu_mapapi_search_poi_PoiDetailResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetPoiDetailResult__com_baidu_mapapi_search_poi_PoiDetailResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetPoiDetailResult__com_baidu_mapapi_search_poi_PoiDetailResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_poi_PoiDetailResult>());
              break;
            case 'Callback::com.baidu.mapapi.search.poi.OnGetPoiSearchResultListener::onGetPoiDetailResult__com_baidu_mapapi_search_poi_PoiDetailSearchResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetPoiDetailResult__com_baidu_mapapi_search_poi_PoiDetailSearchResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetPoiDetailResult__com_baidu_mapapi_search_poi_PoiDetailSearchResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_poi_PoiDetailSearchResult>());
              break;
            case 'Callback::com.baidu.mapapi.search.poi.OnGetPoiSearchResultListener::onGetPoiIndoorResult':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onGetPoiIndoorResult([\'var1\':${args['var1']}])');
              }
        
              // handle the native call
              var1?.onGetPoiIndoorResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_poi_PoiIndoorResult>());
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
  
  
  Future<bool> searchInCity(com_baidu_mapapi_search_poi_PoiCitySearchOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiSearch@$refId::searchInCity([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchInCity', {"var1": var1 is Ref ? (var1 as Ref)?.refId : var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> searchNearby(com_baidu_mapapi_search_poi_PoiNearbySearchOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiSearch@$refId::searchNearby([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchNearby', {"var1": var1 is Ref ? (var1 as Ref)?.refId : var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> searchInBound(com_baidu_mapapi_search_poi_PoiBoundSearchOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiSearch@$refId::searchInBound([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchInBound', {"var1": var1 is Ref ? (var1 as Ref)?.refId : var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> searchPoiDetail(com_baidu_mapapi_search_poi_PoiDetailSearchOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiSearch@$refId::searchPoiDetail([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchPoiDetail', {"var1": var1 is Ref ? (var1 as Ref)?.refId : var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> searchPoiIndoor(com_baidu_mapapi_search_poi_PoiIndoorOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiSearch@$refId::searchPoiIndoor([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchPoiIndoor', {"var1": var1 is Ref ? (var1 as Ref)?.refId : var1, "refId": refId});
  
  
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
      debugPrint('fluttify-dart: com.baidu.mapapi.search.poi.PoiSearch@$refId::destroy([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::destroy', {"refId": refId});
  
  
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

extension com_baidu_mapapi_search_poi_PoiSearch_Batch on List<com_baidu_mapapi_search_poi_PoiSearch> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<bool>> searchInCity_batch(List<com_baidu_mapapi_search_poi_PoiCitySearchOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchInCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> searchNearby_batch(List<com_baidu_mapapi_search_poi_PoiNearbySearchOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchNearby_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> searchInBound_batch(List<com_baidu_mapapi_search_poi_PoiBoundSearchOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchInBound_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> searchPoiDetail_batch(List<com_baidu_mapapi_search_poi_PoiDetailSearchOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchPoiDetail_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> searchPoiIndoor_batch(List<com_baidu_mapapi_search_poi_PoiIndoorOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::searchPoiIndoor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].refId, "refId": this[__i__].refId}]);
  
  
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
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.poi.PoiSearch::destroy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
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