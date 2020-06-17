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

class com_baidu_mapapi_search_geocode_GeoCodeOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.geocode.GeoCodeOption';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_geocode_GeoCodeOption> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_geocode_GeoCodeOption__');
    final object = com_baidu_mapapi_search_geocode_GeoCodeOption()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_geocode_GeoCodeOption>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_geocode_GeoCodeOption__', {'length': length});
  
    final List<com_baidu_mapapi_search_geocode_GeoCodeOption> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_geocode_GeoCodeOption()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_mCity() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.geocode.GeoCodeOption::get_mCity", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_mAddress() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.geocode.GeoCodeOption::get_mAddress", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_mCity(String mCity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::set_mCity', {'refId': refId, "mCity": mCity});
  
  
  }
  
  Future<void> set_mAddress(String mAddress) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::set_mAddress', {'refId': refId, "mAddress": mAddress});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_geocode_GeoCodeOption> city(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.GeoCodeOption@$refId::city([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::city', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_geocode_GeoCodeOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<com_baidu_mapapi_search_geocode_GeoCodeOption> address(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.GeoCodeOption@$refId::address([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::address', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_search_geocode_GeoCodeOption()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__result__ is Ref) kNativeObjectPool.add(__return__ as Ref);
      return __return__;
    }
  }
  
  
  Future<String> getAddress() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.GeoCodeOption@$refId::getAddress([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::getAddress', {"refId": refId});
  
  
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

extension com_baidu_mapapi_search_geocode_GeoCodeOption_Batch on List<com_baidu_mapapi_search_geocode_GeoCodeOption> {
  //region getters
  Future<List<String>> get_mCity_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.geocode.GeoCodeOption::get_mCity_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_mAddress_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("com.baidu.mapapi.search.geocode.GeoCodeOption::get_mAddress_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_mCity_batch(List<String> mCity) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::set_mCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mCity": mCity[__i__]}]);
  
  
  }
  
  Future<void> set_mAddress_batch(List<String> mAddress) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::set_mAddress_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "mAddress": mAddress[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_geocode_GeoCodeOption>> city_batch(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_geocode_GeoCodeOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<com_baidu_mapapi_search_geocode_GeoCodeOption>> address_batch(List<String> var1) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::address_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => com_baidu_mapapi_search_geocode_GeoCodeOption()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  Future<List<String>> getAddress_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::getAddress_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
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