// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError {
  SWITCH_OK /* null */,
  FLOOR_INFO_ERROR /* null */,
  FLOOR_OVERLFLOW /* null */,
  FOCUSED_ID_ERROR /* null */,
  SWITCH_ERROR /* null */
}

extension com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorErrorToX on com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.SWITCH_OK: return com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.SWITCH_OK.index + 0;
      case com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.FLOOR_INFO_ERROR: return com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.FLOOR_INFO_ERROR.index + 0;
      case com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.FLOOR_OVERLFLOW: return com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.FLOOR_OVERLFLOW.index + 0;
      case com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.FOCUSED_ID_ERROR: return com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.FOCUSED_ID_ERROR.index + 0;
      case com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.SWITCH_ERROR: return com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.SWITCH_ERROR.index + 0;
    }
  }
}

extension com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorErrorFromX on int {
  com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError tocom_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError() {
    switch (this) {
      
      default: return com_baidu_mapapi_map_MapBaseIndoorMapInfo_SwitchFloorError.values[this + 0];
    }
  }
}