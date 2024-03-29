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

class com_baidu_mapapi_search_route_TransitRouteLine extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.TransitRouteLine';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_route_TransitRouteLine> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_route_TransitRouteLine__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_TransitRouteLine>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_route_TransitRouteLine>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_route_TransitRouteLine__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_TransitRouteLine>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  @deprecated
  Future<com_baidu_mapapi_search_core_TaxiInfo> getTaxitInfo() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.TransitRouteLine@$refId::getTaxitInfo([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.TransitRouteLine::getTaxitInfo', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_TaxiInfo>(__result__);
  }
  
  
  Future<void> setTaxitInfo(com_baidu_mapapi_search_core_TaxiInfo var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.TransitRouteLine@$refId::setTaxitInfo([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.TransitRouteLine::setTaxitInfo', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_route_TransitRouteLine{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_route_TransitRouteLine_Batch on List<com_baidu_mapapi_search_route_TransitRouteLine> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  @deprecated
  Future<List<com_baidu_mapapi_search_core_TaxiInfo>> getTaxitInfo_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.TransitRouteLine::getTaxitInfo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_TaxiInfo>(__result__)).cast<com_baidu_mapapi_search_core_TaxiInfo>().toList();
  }
  
  
  Future<List<void>> setTaxitInfo_batch(List<com_baidu_mapapi_search_core_TaxiInfo> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.TransitRouteLine::setTaxitInfo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}