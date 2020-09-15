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

class com_baidu_mapapi_search_busline_BusLineResult_BusStation extends com_baidu_mapapi_search_core_RouteNode with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.busline.BusLineResult.BusStation';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_busline_BusLineResult_BusStation> create__() async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_busline_BusLineResult_BusStation__', );
    final object = com_baidu_mapapi_search_busline_BusLineResult_BusStation()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_busline_BusLineResult_BusStation>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_busline_BusLineResult_BusStation__', {'length': length});
  
    final List<com_baidu_mapapi_search_busline_BusLineResult_BusStation> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_busline_BusLineResult_BusStation()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}

extension com_baidu_mapapi_search_busline_BusLineResult_BusStation_Batch on List<com_baidu_mapapi_search_busline_BusLineResult_BusStation> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}