// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType {
  bus_time_first /* null */,
  bus_transfer_little /* null */,
  bus_walk_little /* null */,
  bus_no_subway /* null */,
  bus_recommend_way /* null */
}

extension com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyTypeToX on com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_time_first: return com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_time_first.index + 0;
      case com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_transfer_little: return com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_transfer_little.index + 0;
      case com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_walk_little: return com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_walk_little.index + 0;
      case com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_no_subway: return com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_no_subway.index + 0;
      case com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_recommend_way: return com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.bus_recommend_way.index + 0;
    }
  }
}

extension com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyTypeFromX on int {
  com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType tocom_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType() {
    switch (this) {
      
      default: return com_baidu_mapapi_utils_route_RouteParaOption_EBusStrategyType.values[this + 0];
    }
  }
}