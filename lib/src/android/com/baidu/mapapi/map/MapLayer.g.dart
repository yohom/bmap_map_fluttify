// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum com_baidu_mapapi_map_MapLayer {
  MAP_LAYER_OVERLAY /* null */,
  MAP_LAYER_LOCATION /* null */,
  MAP_LAYER_POI_MARKER /* null */,
  MAP_LAYER_INDOOR_POI /* null */
}

extension com_baidu_mapapi_map_MapLayerToX on com_baidu_mapapi_map_MapLayer {
  int toValue() {
    switch (this) {
      case com_baidu_mapapi_map_MapLayer.MAP_LAYER_OVERLAY: return com_baidu_mapapi_map_MapLayer.MAP_LAYER_OVERLAY.index + 0;
      case com_baidu_mapapi_map_MapLayer.MAP_LAYER_LOCATION: return com_baidu_mapapi_map_MapLayer.MAP_LAYER_LOCATION.index + 0;
      case com_baidu_mapapi_map_MapLayer.MAP_LAYER_POI_MARKER: return com_baidu_mapapi_map_MapLayer.MAP_LAYER_POI_MARKER.index + 0;
      case com_baidu_mapapi_map_MapLayer.MAP_LAYER_INDOOR_POI: return com_baidu_mapapi_map_MapLayer.MAP_LAYER_INDOOR_POI.index + 0;
      default: return 0;
    }
  }
}

extension com_baidu_mapapi_map_MapLayerFromX on int {
  com_baidu_mapapi_map_MapLayer tocom_baidu_mapapi_map_MapLayer() {
    switch (this) {
      
      default: return com_baidu_mapapi_map_MapLayer.values[this + 0];
    }
  }
}