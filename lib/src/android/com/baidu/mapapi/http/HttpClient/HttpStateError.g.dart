// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_http_HttpClient_HttpStateError {
  NO_ERROR /* null */,
  NETWORK_ERROR /* null */,
  INNER_ERROR /* null */,
  REQUEST_ERROR /* null */,
  SERVER_ERROR /* null */
}

extension com_baidu_mapapi_http_HttpClient_HttpStateErrorToX on com_baidu_mapapi_http_HttpClient_HttpStateError {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_http_HttpClient_HttpStateError.NO_ERROR: return com_baidu_mapapi_http_HttpClient_HttpStateError.NO_ERROR.index + 0;
      case com_baidu_mapapi_http_HttpClient_HttpStateError.NETWORK_ERROR: return com_baidu_mapapi_http_HttpClient_HttpStateError.NETWORK_ERROR.index + 0;
      case com_baidu_mapapi_http_HttpClient_HttpStateError.INNER_ERROR: return com_baidu_mapapi_http_HttpClient_HttpStateError.INNER_ERROR.index + 0;
      case com_baidu_mapapi_http_HttpClient_HttpStateError.REQUEST_ERROR: return com_baidu_mapapi_http_HttpClient_HttpStateError.REQUEST_ERROR.index + 0;
      case com_baidu_mapapi_http_HttpClient_HttpStateError.SERVER_ERROR: return com_baidu_mapapi_http_HttpClient_HttpStateError.SERVER_ERROR.index + 0;
      default: return 0;
    }
  }
}

extension com_baidu_mapapi_http_HttpClient_HttpStateErrorFromX on int {
  com_baidu_mapapi_http_HttpClient_HttpStateError tocom_baidu_mapapi_http_HttpClient_HttpStateError() {
    switch (this) {
      
      default: return com_baidu_mapapi_http_HttpClient_HttpStateError.values[this + 0];
    }
  }
}