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

class com_baidu_mapapi_cloud_DetailSearchResult extends com_baidu_mapapi_cloud_BaseSearchResult  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.cloud.DetailSearchResult';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_cloud_DetailSearchResult> create__() async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createcom_baidu_mapapi_cloud_DetailSearchResult__', );
    final object = com_baidu_mapapi_cloud_DetailSearchResult()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<com_baidu_mapapi_cloud_DetailSearchResult>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_cloud_DetailSearchResult__', {'length': length});
  
    final List<com_baidu_mapapi_cloud_DetailSearchResult> typedResult = resultBatch.map((result) => com_baidu_mapapi_cloud_DetailSearchResult()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<com_baidu_mapapi_cloud_CloudPoiInfo> get_poiInfo() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.cloud.DetailSearchResult::get_poiInfo", {'__this__': this});
    return __result__ == null ? null : (com_baidu_mapapi_cloud_CloudPoiInfo()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  //endregion

  //region setters
  Future<void> set_poiInfo(com_baidu_mapapi_cloud_CloudPoiInfo poiInfo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.cloud.DetailSearchResult::set_poiInfo', <String, dynamic>{'__this__': this, "poiInfo": poiInfo});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension com_baidu_mapapi_cloud_DetailSearchResult_Batch on List<com_baidu_mapapi_cloud_DetailSearchResult> {
  //region getters
  Future<List<com_baidu_mapapi_cloud_CloudPoiInfo>> get_poiInfo_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.cloud.DetailSearchResult::get_poiInfo_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_cloud_CloudPoiInfo()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_poiInfo_batch(List<com_baidu_mapapi_cloud_CloudPoiInfo> poiInfo) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.cloud.DetailSearchResult::set_poiInfo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "poiInfo": poiInfo[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}