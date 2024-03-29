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

class com_baidu_mapapi_UIMsg_f_FUN extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.UIMsg.f_FUN';

  @override
  final String tag__ = 'bmap_map_fluttify';

  static final int FUN_ID_MAP = 10;
  static final int FUN_ID_MAP_ACTION = 1001;
  static final int FUN_ID_MAP_ACTION_ZOOM_IN = 10010100;
  static final int FUN_ID_MAP_ACTION_ZOOM_OUT = 10010200;
  static final int FUN_ID_MAP_ACTION_CLICK_DOWN = 10010300;
  static final int FUN_ID_MAP_ACTION_CLICK_MOVE = 10010400;
  static final int FUN_ID_MAP_ACTION_CLICK_UP = 10010500;
  static final int FUN_ID_MAP_ACTION_FOCUS_AT = 10010600;
  static final int FUN_ID_MAP_OPTION = 1002;
  static final int FUN_ID_MAP_OPTION_POI = 10020100;
  static final int FUN_ID_MAP_OPTION_STATION = 10020101;
  static final int FUN_ID_MAP_OPTION_ROUTE = 10020200;
  static final int FUN_ID_MAP_OPTION_FAVORITE = 10020300;
  static final int FUN_ID_MAP_OPTION_REAL_ITS = 10020400;
  static final int FUN_ID_MAP_OPTION_PREV_ITS = 10020500;
  static final int FUN_ID_MAP_OPTION_SCALE = 10020600;
  static final int FUN_ID_MAP_OPTION_FLS = 10020700;
  static final int FUN_ID_MAP_OPTION_RGC = 10020800;
  static final int FUN_ID_MAP_OPTION_POI_SMS = 10020801;
  static final int FUN_ID_MAP_OPTION_RGC_SMS = 10020802;
  static final int FUN_ID_MAP_STATE = 1003;
  static final int FUN_ID_MAP_STATE_NORMAL = 10030100;
  static final int FUN_ID_MAP_STATE_LOCATE = 10030200;
  static final int FUN_ID_SCH = 11;
  static final int FUN_ID_SCH_POI = 1101;
  static final int FUN_ID_SCH_POI_OPTION = 110101;
  static final int FUN_ID_SCH_POI_OPTION_ONE = 11010101;
  static final int FUN_ID_SCH_POI_OPTION_FORCE = 11010102;
  static final int FUN_ID_SCH_POI_OPTION_CIRCUM = 11010103;
  static final int FUN_ID_SCH_POI_OPTION_AREA = 11010104;
  static final int FUN_ID_SCH_POI_OPTION_BSLD = 11010105;
  static final int FUN_ID_SCH_POI_OPTION_SUGGEST = 11010107;
  static final int FUN_ID_SCH_POI_OPTION_OFFLINETASK = 11010108;
  static final int FUN_ID_SCH_POI_OPTION_RGC = 11010109;
  static final int FUN_ID_SCH_POI_OPTION_RGC_SHORTURL = 11010110;
  static final int FUN_ID_SCH_POI_OPTION_RECOMMANDLINK = 11010111;
  static final int FUN_ID_SCH_POI_OPTION_NEARBY_CENTER = 11010112;
  static final int FUN_ID_SCH_POI_ACTION = 110102;
  static final int FUN_ID_SCH_POI_ACTION_SET_KEY = 11010201;
  static final int FUN_ID_SCH_POI_ACTION_SET_PAGE = 11010202;
  static final int FUN_ID_SCH_POI_ACTION_SEARCH = 11010203;
  static final int FUN_ID_SCH_POI_ACTION_RECV_RET = 11010204;
  static final int FUN_ID_SCH_POI_ACTION_VIEW_RCD = 11010205;
  static final int FUN_ID_SCH_NAV = 1102;
  static final int FUN_ID_SCH_NAV_OPTION = 110201;
  static final int FUN_ID_SCH_NAV_OPTION_BUS = 11020101;
  static final int FUN_ID_SCH_NAV_OPTION_CAR = 11020102;
  static final int FUN_ID_SCH_NAV_OPTION_FOOT = 11020103;
  static final int FUN_ID_SCH_NAV_OPTION_ALERT_START = 11020104;
  static final int FUN_ID_SCH_NAV_OPTION_ALERT_PAUSE = 11020105;
  static final int FUN_ID_SCH_NAV_OPTION_ALERT_STOP = 11020106;
  static final int FUN_ID_SCH_NAV_OPTION_ALERT_SETTING = 11020107;
  static final int FUN_ID_SCH_NAV_ACTION = 110202;
  static final int FUN_ID_SCH_NAV_ACTION_SET_KEY = 11020201;
  static final int FUN_ID_SCH_NAV_ACTION_SET_PAGE = 11020202;
  static final int FUN_ID_SCH_NAV_ACTION_SEARCH = 11020203;
  static final int FUN_ID_SCH_NAV_ACTION_RECV_RET = 11020204;
  static final int FUN_ID_SCH_NAV_ACTION_VIEW_RCD = 11020205;
  static final int FUN_ID_SCH_NAV_ACTION_SEARCH_CHANGE = 11020206;
  static final int FUN_ID_SCH_NAV_ACTION_SEARCH_BACK = 11020207;
  static final int FUN_ID_SCH_NAV_ACTION_SEARCH_POILIST = 11020208;
  static final int FUN_ID_SCH_NAV_ACTION_SEARCH_CITY = 11020209;
  static final int FUN_ID_SCH_NAV_ACTION_ALERT = 11020210;
  static final int FUN_ID_SCH_NAV_ACTION_ALERT_RECV_RET = 11020211;
  static final int FUN_ID_SCH_NAV_ACTION_RECV_BUSREPORT = 11020212;
  static final int FUN_ID_SCH_NAV_ACTION_RESET_POS = 11020213;
  static final int FUN_ID_NET = 12;
  static final int FUN_ID_NET_OPTION = 1201;
  static final int FUN_ID_GBS = 13;
  static final int FUN_ID_GBS_OPTION = 1301;
  static final int FUN_ID_GBS_OPTION_GPS = 13010100;
  static final int FUN_ID_GBS_OPTION_CELL = 13010200;
  static final int FUN_ID_HIS = 14;
  static final int FUN_ID_HIS_OPTION = 1401;
  static final int FUN_ID_HIS_OPTION_POI = 14010100;
  static final int FUN_ID_HIS_OPTION_ROT = 14010200;
  static final int FUN_ID_HIS_ACTION = 1402;
  static final int FUN_ID_HIS_ACTION_VIEW_RET = 14020100;
  static final int FUN_ID_HIS_ACTION_ADD = 14020200;
  static final int FUN_ID_HIS_ACTION_EDIT_RCD = 14020300;
  static final int FUN_ID_HIS_ACTION_REMOVEAT = 14020400;
  static final int FUN_ID_HIS_ACTION_VIEW_RCD = 14020500;
  static final int FUN_ID_HIS_ACTION_HOTKEY = 1403;
  static final int FUN_ID_HIS_ACTION_HOTKEY_SET = 14030100;
  static final int FUN_ID_HIS_ACTION_HOTKEY_GET = 14030200;
  static final int FUN_ID_UTIL = 15;
  static final int FUN_ID_UTIL_ACTION = 1501;
  static final int FUN_ID_UTIL_ACTION_SCREENTOGEM = 15010100;
  static final int FUN_ID_UTIL_ACTION_LATILONGI_TO_BAIDUGEO = 15010101;
  static final int FUN_ID_UTIL_ACTION_GEMTOSCREEN = 15010200;
  static final int FUN_ID_UTIL_ACTION_SMS = 15010300;
  static final int FUN_ID_UTIL_ACTION_MMS = 15010400;
  static final int FUN_ID_UTIL_ACTION_SMSCALLBACK = 15010500;
  static final int FUN_ID_UTIL_OPTION_POI = 15010600;
  static final int FUN_ID_UTIL_OPTION_POI_RGC = 15010601;
  static final int FUN_ID_UTIL_OPTION_ROT = 15010700;
  static final int FUN_ID_UTIL_OPTION_FLS_ACTION = 15010800;
  static final int FUN_ID_UTIL_ACTION_REQUIRE = 15010801;
  static final int FUN_ID_UTIL_ACTION_UPDATE = 15010802;
  static final int FUN_ID_UTIL_OPTION_UPDATE_CHECK = 15010803;
  static final int FUN_ID_UTIL_OPTION_UPDATE_START = 15010804;
  static final int FUN_ID_UTIL_OPTION_UPDATE_DESC = 15010805;
  static final int FUN_ID_UTIL_ACTION_UPDATE_NAV_MODULE = 15010806;
  static final int FUN_ID_UTIL_OPTION_UPDATE_CHECK_NAV_MODULE = 15010807;
  static final int FUN_ID_UTIL_OPTION_UPDATE_START_NAV_MODULE = 15010808;
  static final int FUN_ID_UTIL_OPTION_UPDATE_DESC_NAV_MODULE = 15010809;
  static final int FUN_ID_UTIL_ACTION_SYSINFO = 15010900;
  static final int FUN_ID_UTIL_OPTION_NOWIFI = 15010901;
  static final int FUN_ID_UTIL_OPTION_SETWIFI = 15010902;
  static final int FUN_ID_UTIL_OPTION_OTHERSYS = 15010903;
  static final int FUN_ID_UTIL_OPTION_GETINSTALL = 15010904;
  static final int FUN_ID_UTIL_OPTION_SETINSTALL = 15010905;
  static final int FUN_ID_UTIL_ACTION_LOC = 15011000;
  static final int FUN_ID_UTIL_OPTION_LOC_SET = 15011001;
  static final int FUN_ID_UTIL_OPTION_LOC_GET = 15011002;
  static final int FUN_ID_UTIL_ACTION_RESET = 15011100;
  static final int FUN_ID_UTIL_ACTION_ALRIGHT = 15011200;
  static final int FUN_ID_UTIL_OPTION_ALRIGHT_SET = 15011201;
  static final int FUN_ID_UTIL_OPTION_ALRIGHT_GET = 15011202;
  static final int FUN_ID_UTIL_ACTION_MAP = 15011300;
  static final int FUN_ID_UTIL_OPTION_MAPTMPAUTOUPDATE_SET = 15011301;
  static final int FUN_ID_UTIL_OPTION_MAPTMPAUTOUPDATE_GET = 15011302;
  static final int FUN_ID_UTIL_OPTION_MAPDATATMPSIZE_GET = 15011303;
  static final int FUN_ID_UTIL_OPTION_MAPDATAVMPSIZE_GET = 15011304;
  static final int FUN_ID_UTIL_OPTION_MAPANIMATION = 15011305;
  static final int FUN_ID_UTIL_OPTION_MAPDATADOMSIZE_GET = 15011306;
  static final int FUN_ID_UTIL_ACTION_SHOWPAOPAO = 15011213;
  static final int FUN_ID_UTIL_ACTION_FLS_ADDPAOPAO = 15011214;
  static final int FUN_ID_UTIL_ACTION_FLS_SHOWPAOPAO = 15011219;
  static final int FUN_ID_UTIL_ACTION_GETSCALEDATA = 15011218;
  static final int FUN_ID_OFFLINE_ACTION_CURRENTCITY = 16010100;
  static final int FUN_ID_OFFLINE_ACTION_HOTCITYGETALL = 16010200;
  static final int FUN_ID_OFFLINE_ACTION_DIRCITYSEARCH = 16010300;
  static final int FUN_ID_OFFLINE_ACTION_USRCITYGETALL = 16010400;
  static final int FUN_ID_OFFLINE_ACTION_USRCITYADDRCD = 16010600;
  static final int FUN_ID_OFFLINE_ACTION_USRCITYBEGINLOAD = 16010800;
  static final int FUN_ID_OFFLINE_ACTION_USRCITYUPDATELOAD = 16010900;
  static final int FUN_ID_OFFLINE_ACTION_USRCITYSUSPEND = 16011000;
  static final int FUN_ID_OFFLINE_ACTION_USRCITYREMOVE = 16011100;
  static final int FUN_ID_OFFLINE_ACTION_OFFLINEREQSUSPEND = 16011400;
  static final int FUN_ID_OFFLINE_ACTION_OFFLINEREQRESUME = 16011500;
  static final int FUN_ID_OFFLINE_ACTION_USRCITYBATBEGIN = 16011600;
  static final int FUN_ID_OFFLINE_ACTION_USRCITYBATSUSPEND = 16011700;
  static final int FUN_ID_SET_POI_INFOR = 17;
  static final int FUN_ID_VOICE = 20;
  static final int FUN_ID_VOICE_SCH = 2001;
  static final int FUN_ID_VOICE_SCH_ACTION = 200101;
  static final int FUN_ID_VOICE_SCH_ACTION_SEARCH = 20010101;
  static final int FUN_ID_VOICE_SCH_ACTION_RECV_RET = 20010102;
  static final int FUN_ID_VOICE_SCH_OPTION = 200102;
  static final int FUN_ID_VOICE_SCH_OPTION_IDENTITY = 20010201;
  static final int FUN_ID_VOICE_SCH_OPTION_GLOBAL_KEY = 20010202;
  static final int FUN_ID_ITS = 21;
  static final int FUN_ID_ITS_ACTION_VIEW_EVENT_RCD = 21010100;
  //endregion

  //region creators
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_UIMsg_f_FUN{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_UIMsg_f_FUN_Batch on List<com_baidu_mapapi_UIMsg_f_FUN> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}