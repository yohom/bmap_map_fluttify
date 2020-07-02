// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum BMKRegionChangeReason {
  BMKRegionChangeReasonGesture /* 0 */,
  BMKRegionChangeReasonEvent /* null */,
  BMKRegionChangeReasonAPIs /* null */
}

extension BMKRegionChangeReasonToX on BMKRegionChangeReason {
  int toValue() {
    switch (this) {
      case BMKRegionChangeReason.BMKRegionChangeReasonGesture: return 0;
      case BMKRegionChangeReason.BMKRegionChangeReasonEvent: return BMKRegionChangeReason.BMKRegionChangeReasonEvent.index + 0;
      case BMKRegionChangeReason.BMKRegionChangeReasonAPIs: return BMKRegionChangeReason.BMKRegionChangeReasonAPIs.index + 0;
    }
  }
}

extension BMKRegionChangeReasonFromX on int {
  BMKRegionChangeReason toBMKRegionChangeReason() {
    switch (this) {
      case 0: return BMKRegionChangeReason.BMKRegionChangeReasonGesture;
      default: return BMKRegionChangeReason.values[this + 0];
    }
  }
}