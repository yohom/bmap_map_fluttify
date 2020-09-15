// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum BMKGeoFenceErrorCode {
  BMKGeoFenceErrorUnknown /* 1 */,
  BMKGeoFenceErrorInvalidParameter /* 2 */,
  BMKGeoFenceErrorFailureConnection /* 3 */,
  BMKGeoFenceErrorFailureAuth /* 4 */,
  BMKGeoFenceErrorNoValidFence /* 5 */,
  BMKGeoFenceErroFailureLocating /* 6 */
}

extension BMKGeoFenceErrorCodeToX on BMKGeoFenceErrorCode {
  int toValue() {
    switch (this) {
      case BMKGeoFenceErrorCode.BMKGeoFenceErrorUnknown: return 1;
      case BMKGeoFenceErrorCode.BMKGeoFenceErrorInvalidParameter: return 2;
      case BMKGeoFenceErrorCode.BMKGeoFenceErrorFailureConnection: return 3;
      case BMKGeoFenceErrorCode.BMKGeoFenceErrorFailureAuth: return 4;
      case BMKGeoFenceErrorCode.BMKGeoFenceErrorNoValidFence: return 5;
      case BMKGeoFenceErrorCode.BMKGeoFenceErroFailureLocating: return 6;
      default: return 0;
    }
  }
}

extension BMKGeoFenceErrorCodeFromX on int {
  BMKGeoFenceErrorCode toBMKGeoFenceErrorCode() {
    switch (this) {
      case 1: return BMKGeoFenceErrorCode.BMKGeoFenceErrorUnknown;
      case 2: return BMKGeoFenceErrorCode.BMKGeoFenceErrorInvalidParameter;
      case 3: return BMKGeoFenceErrorCode.BMKGeoFenceErrorFailureConnection;
      case 4: return BMKGeoFenceErrorCode.BMKGeoFenceErrorFailureAuth;
      case 5: return BMKGeoFenceErrorCode.BMKGeoFenceErrorNoValidFence;
      case 6: return BMKGeoFenceErrorCode.BMKGeoFenceErroFailureLocating;
      default: return BMKGeoFenceErrorCode.values[this + 1];
    }
  }
}