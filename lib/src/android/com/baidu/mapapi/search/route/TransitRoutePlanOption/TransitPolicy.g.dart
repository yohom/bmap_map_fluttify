// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy {
  EBUS_TIME_FIRST /* null */,
  EBUS_TRANSFER_FIRST /* null */,
  EBUS_WALK_FIRST /* null */,
  EBUS_NO_SUBWAY /* null */
}

extension com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicyToX on com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.EBUS_TIME_FIRST: return com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.EBUS_TIME_FIRST.index + 0;
      case com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.EBUS_TRANSFER_FIRST: return com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.EBUS_TRANSFER_FIRST.index + 0;
      case com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.EBUS_WALK_FIRST: return com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.EBUS_WALK_FIRST.index + 0;
      case com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.EBUS_NO_SUBWAY: return com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.EBUS_NO_SUBWAY.index + 0;
    }
  }
}

extension com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicyFromX on int {
  com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy tocom_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy() {
    switch (this) {
      
      default: return com_baidu_mapapi_search_route_TransitRoutePlanOption_TransitPolicy.values[this + 0];
    }
  }
}