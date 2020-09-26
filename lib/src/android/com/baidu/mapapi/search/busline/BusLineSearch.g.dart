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

class com_baidu_mapapi_search_busline_BusLineSearch extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.busline.BusLineSearch';

  
  //endregion

  //region creators
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<com_baidu_mapapi_search_busline_BusLineSearch> newInstance() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.busline.BusLineSearch::newInstance([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.busline.BusLineSearch::newInstance', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_busline_BusLineSearch()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  Future<bool> searchBusLine(com_baidu_mapapi_search_busline_BusLineSearchOption var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.busline.BusLineSearch@$refId::searchBusLine([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.busline.BusLineSearch::searchBusLine', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
      return __return__;
    }
  }
  
  
  Future<void> setOnGetBusLineSearchResultListener(com_baidu_mapapi_search_busline_OnGetBusLineSearchResultListener var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.busline.BusLineSearch@$refId::setOnGetBusLineSearchResultListener([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.busline.BusLineSearch::setOnGetBusLineSearchResultListener', {"__this__": this});
  
  
    // handle native call
    MethodChannel('com.baidu.mapapi.search.busline.BusLineSearch::setOnGetBusLineSearchResultListener::Callback@$refId', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify')))
        .setMethodCallHandler((methodCall) async {
          try {
            final args = methodCall.arguments as Map;
            switch (methodCall.method) {
              case 'Callback::com.baidu.mapapi.search.busline.OnGetBusLineSearchResultListener::onGetBusLineResult':
                // print log
                if (fluttifyLogEnabled) {
                  debugPrint('fluttify-dart-callback: onGetBusLineResult([\'var1\':${args['var1']}])');
                }
          
                // handle the native call
                var1?.onGetBusLineResult(TypeOpBmapMapFluttifyAndroid((args['var1'] as Object))?.as__<com_baidu_mapapi_search_busline_BusLineResult>());
                break;
              default:
                break;
            }
          } catch (e) {
            debugPrint(e);
            throw e;
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
  
  
  Future<void> destroy() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.busline.BusLineSearch@$refId::destroy([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.busline.BusLineSearch::destroy', {"__this__": this});
  
  
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

extension com_baidu_mapapi_search_busline_BusLineSearch_Batch on List<com_baidu_mapapi_search_busline_BusLineSearch> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<com_baidu_mapapi_search_busline_BusLineSearch>> newInstance_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.busline.BusLineSearch::newInstance_batch', );
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_search_busline_BusLineSearch()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  Future<List<bool>> searchBusLine_batch(List<com_baidu_mapapi_search_busline_BusLineSearchOption> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.busline.BusLineSearch::searchBusLine_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
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
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.busline.BusLineSearch::destroy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
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