// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_map_PolylineDottedLineType {
  DOTTED_LINE_SQUARE /* null */,
  DOTTED_LINE_CIRCLE /* null */
}

extension com_baidu_mapapi_map_PolylineDottedLineTypeToX on com_baidu_mapapi_map_PolylineDottedLineType {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_map_PolylineDottedLineType.DOTTED_LINE_SQUARE: return com_baidu_mapapi_map_PolylineDottedLineType.DOTTED_LINE_SQUARE.index + 0;
      case com_baidu_mapapi_map_PolylineDottedLineType.DOTTED_LINE_CIRCLE: return com_baidu_mapapi_map_PolylineDottedLineType.DOTTED_LINE_CIRCLE.index + 0;
      default: return 0;
    }
  }
}

extension com_baidu_mapapi_map_PolylineDottedLineTypeFromX on int {
  com_baidu_mapapi_map_PolylineDottedLineType tocom_baidu_mapapi_map_PolylineDottedLineType() {
    switch (this) {
      
      default: return com_baidu_mapapi_map_PolylineDottedLineType.values[this + 0];
    }
  }
}