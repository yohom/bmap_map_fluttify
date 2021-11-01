import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';

import 'enums.dart';

extension MyLocationTypeX on MyLocationType {
  com_baidu_mapapi_map_MyLocationConfiguration_LocationMode androidModel() {
    switch (this) {
      case MyLocationType.Locate:
        return com_baidu_mapapi_map_MyLocationConfiguration_LocationMode.NORMAL;
      case MyLocationType.Follow:
        return com_baidu_mapapi_map_MyLocationConfiguration_LocationMode
            .FOLLOWING;
      case MyLocationType.Rotate:
        return com_baidu_mapapi_map_MyLocationConfiguration_LocationMode
            .COMPASS;
      default:
        return com_baidu_mapapi_map_MyLocationConfiguration_LocationMode.NORMAL;
    }
  }

  BMKUserTrackingMode iosModel() {
    switch (this) {
      case MyLocationType.Locate:
        return BMKUserTrackingMode.BMKUserTrackingModeNone;
      case MyLocationType.Follow:
        return BMKUserTrackingMode.BMKUserTrackingModeFollow;
      case MyLocationType.Rotate:
        return BMKUserTrackingMode.BMKUserTrackingModeFollowWithHeading;
      default:
        return BMKUserTrackingMode.BMKUserTrackingModeNone;
    }
  }
}
