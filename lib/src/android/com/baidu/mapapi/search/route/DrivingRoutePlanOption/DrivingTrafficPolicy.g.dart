// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy {
  ROUTE_PATH /* null */,
  ROUTE_PATH_AND_TRAFFIC /* null */
}

extension com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicyToX on com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy.ROUTE_PATH: return com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy.ROUTE_PATH.index + 0;
      case com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy.ROUTE_PATH_AND_TRAFFIC: return com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy.ROUTE_PATH_AND_TRAFFIC.index + 0;
      default: return 0;
    }
  }
}

extension com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicyFromX on int {
  com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy tocom_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy() {
    switch (this) {
      
      default: return com_baidu_mapapi_search_route_DrivingRoutePlanOption_DrivingTrafficPolicy.values[this + 0];
    }
  }
}