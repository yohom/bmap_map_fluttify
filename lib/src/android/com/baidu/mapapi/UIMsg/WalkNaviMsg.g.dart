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

class com_baidu_mapapi_UIMsg_WalkNaviMsg extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.UIMsg.WalkNaviMsg';

  @override
  final String tag__ = 'bmap_map_fluttify';

  static final int MSG_APP_PB_DATA_OK = 2008;
  static final int VM_USER_ID = 4096;
  static final int NL_UI_MESSAGE_TYPE_INVALID = 4096;
  static final int NL_UI_MESSAGE_TYPE_ZOOM_UPDATE = 4097;
  static final int NL_UI_MESSAGE_TYPE_NAVI_STATUS_CHANGE = 4098;
  static final int NL_UI_MESSAGE_TYPE_ROUTE_PLAN_RESULT = 4099;
  static final int NL_UI_MESSAGE_TYPE_SIMPLE_MAP_UPDATE = 4100;
  static final int NL_UI_MESSAGE_TYPE_REMAIN_INFO_UPDATE = 4101;
  static final int NL_UI_MESSAGE_TYPE_SYNC_OPERATION = 4102;
  static final int NL_UI_MESSAGE_TYPE_GPS_STATE_CHANGE = 4103;
  static final int NL_UI_MESSAGE_TYPE_PANO_ID_RESULT = 4104;
  static final int NL_UI_MESSAGE_TYPE_PANO_IMAGE_UPDATE = 4105;
  static final int NL_UI_MESSAGE_TYPE_COMPASS_GUIDEINFO_UPDATE = 4106;
  static final int NL_UI_MESSAGE_TYPE_SPEED_UPDATE = 4107;
  static final int NL_UI_MESSAGE_TYPE_VIA_POI_PANO_IMAGE_UPDATE = 4108;
  static final int NL_UI_MESSAGE_TYPE_MSG_NAVI_BASE_MAPVIEW = 11097;
  static final int NL_UI_MESSAGE_TYPE_ONROUTE = 4110;
  static final int NL_UI_MESSAGE_TYPE_SPEAK_MANEUVERKIND_UPDATE = 4111;
  //endregion

  //region creators
  static Future<com_baidu_mapapi_UIMsg_WalkNaviMsg> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_UIMsg_WalkNaviMsg__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_UIMsg_WalkNaviMsg>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_UIMsg_WalkNaviMsg>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_UIMsg_WalkNaviMsg__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_UIMsg_WalkNaviMsg>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_UIMsg_WalkNaviMsg{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_UIMsg_WalkNaviMsg_Batch on List<com_baidu_mapapi_UIMsg_WalkNaviMsg> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}