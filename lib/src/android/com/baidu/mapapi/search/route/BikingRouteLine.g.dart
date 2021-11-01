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

class com_baidu_mapapi_search_route_BikingRouteLine extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.BikingRouteLine';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_route_BikingRouteLine> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_route_BikingRouteLine__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_BikingRouteLine>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_route_BikingRouteLine>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_route_BikingRouteLine__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_BikingRouteLine>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_route_BikingRouteLine_BikingStep>> getAllStep() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.BikingRouteLine@$refId::getAllStep([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.BikingRouteLine::getAllStep', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_BikingRouteLine_BikingStep>(it))?.toList();
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_route_BikingRouteLine{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_route_BikingRouteLine_Batch on List<com_baidu_mapapi_search_route_BikingRouteLine> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<List<com_baidu_mapapi_search_route_BikingRouteLine_BikingStep>>> getAllStep_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.BikingRouteLine::getAllStep_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_BikingRouteLine_BikingStep>(it))?.toList()).cast<List<com_baidu_mapapi_search_route_BikingRouteLine_BikingStep>>().toList();
  }
  
  //endregion
}