// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum LocationViewHierarchy {
  LOCATION_VIEW_HIERARCHY_TOP /* null */,
  LOCATION_VIEW_HIERARCHY_BOTTOM /* null */
}

extension LocationViewHierarchyToX on LocationViewHierarchy {
  int toValue() {
    switch (this) {
      case LocationViewHierarchy.LOCATION_VIEW_HIERARCHY_TOP: return LocationViewHierarchy.LOCATION_VIEW_HIERARCHY_TOP.index + 0;
      case LocationViewHierarchy.LOCATION_VIEW_HIERARCHY_BOTTOM: return LocationViewHierarchy.LOCATION_VIEW_HIERARCHY_BOTTOM.index + 0;
    }
  }
}

extension LocationViewHierarchyFromX on int {
  LocationViewHierarchy toLocationViewHierarchy() {
    switch (this) {
      
      default: return LocationViewHierarchy.values[this + 0];
    }
  }
}