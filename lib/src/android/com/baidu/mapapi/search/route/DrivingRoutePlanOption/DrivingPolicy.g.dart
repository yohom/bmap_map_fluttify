// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy {
  ECAR_AVOID_JAM /* null */,
  ECAR_TIME_FIRST /* null */,
  ECAR_DIS_FIRST /* null */,
  ECAR_FEE_FIRST /* null */
}

extension com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicyToX on com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.ECAR_AVOID_JAM: return com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.ECAR_AVOID_JAM.index + 0;
      case com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.ECAR_TIME_FIRST: return com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.ECAR_TIME_FIRST.index + 0;
      case com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.ECAR_DIS_FIRST: return com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.ECAR_DIS_FIRST.index + 0;
      case com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.ECAR_FEE_FIRST: return com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.ECAR_FEE_FIRST.index + 0;
      default: return 0;
    }
  }
}

extension com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicyFromX on int {
  com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy tocom_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy() {
    switch (this) {
      
      default: return com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingPolicy.values[this + 0];
    }
  }
}