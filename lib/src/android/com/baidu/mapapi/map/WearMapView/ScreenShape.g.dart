// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_map_WearMapView_ScreenShape {
  ROUND /* null */,
  RECTANGLE /* null */,
  UNDETECTED /* null */
}

extension com_baidu_mapapi_map_WearMapView_ScreenShapeToX on com_baidu_mapapi_map_WearMapView_ScreenShape {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_map_WearMapView_ScreenShape.ROUND: return com_baidu_mapapi_map_WearMapView_ScreenShape.ROUND.index + 0;
      case com_baidu_mapapi_map_WearMapView_ScreenShape.RECTANGLE: return com_baidu_mapapi_map_WearMapView_ScreenShape.RECTANGLE.index + 0;
      case com_baidu_mapapi_map_WearMapView_ScreenShape.UNDETECTED: return com_baidu_mapapi_map_WearMapView_ScreenShape.UNDETECTED.index + 0;
    }
  }
}

extension com_baidu_mapapi_map_WearMapView_ScreenShapeFromX on int {
  com_baidu_mapapi_map_WearMapView_ScreenShape tocom_baidu_mapapi_map_WearMapView_ScreenShape() {
    switch (this) {
      
      default: return com_baidu_mapapi_map_WearMapView_ScreenShape.values[this + 0];
    }
  }
}