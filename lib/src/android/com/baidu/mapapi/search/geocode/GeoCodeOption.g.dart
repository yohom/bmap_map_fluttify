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

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_geocode_GeoCodeOption> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_geocode_GeoCodeOption__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_GeoCodeOption>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_geocode_GeoCodeOption>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_geocode_GeoCodeOption__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_GeoCodeOption>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<String> get_mCity() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.GeoCodeOption::get_mCity", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_mAddress() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.GeoCodeOption::get_mAddress", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_mCity(String mCity) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::set_mCity', <String, dynamic>{'__this__': this, "mCity": mCity});
  
  
  }
  
  Future<void> set_mAddress(String mAddress) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::set_mAddress', <String, dynamic>{'__this__': this, "mAddress": mAddress});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_geocode_GeoCodeOption> city(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.GeoCodeOption@$refId::city([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::city', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_GeoCodeOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_search_geocode_GeoCodeOption> address(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.GeoCodeOption@$refId::address([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::address', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_GeoCodeOption>(__result__);
  }
  
  
  Future<String> getAddress() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.GeoCodeOption@$refId::getAddress([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::getAddress', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_geocode_GeoCodeOption{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_geocode_GeoCodeOption_Batch on List<com_baidu_mapapi_search_geocode_GeoCodeOption> {
  //region getters
  Future<List<String>> get_mCity_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.GeoCodeOption::get_mCity_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_mAddress_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.geocode.GeoCodeOption::get_mAddress_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_mCity_batch(List<String> mCity) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::set_mCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mCity": mCity[__i__]}]);
  
  
  }
  
  Future<void> set_mAddress_batch(List<String> mAddress) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::set_mAddress_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mAddress": mAddress[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_geocode_GeoCodeOption>> city_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_GeoCodeOption>(__result__)).cast<com_baidu_mapapi_search_geocode_GeoCodeOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_geocode_GeoCodeOption>> address_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::address_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_GeoCodeOption>(__result__)).cast<com_baidu_mapapi_search_geocode_GeoCodeOption>().toList();
  }
  
  
  Future<List<String>> getAddress_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.GeoCodeOption::getAddress_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  //endregion
}