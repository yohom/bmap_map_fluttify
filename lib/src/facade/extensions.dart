import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:uni_map_platform_interface/uni_map_platform_interface.dart';

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

extension BMKPointAnnotationListX on List<BMKPointAnnotation> {
  Future<void> setIcon(List<UIImage> icon) async {
    await addProperty_batch(1, icon);
  }

  Future<void> setDraggable(List<bool> draggable) async {
    await addJsonableProperty_batch(2, draggable);
  }

  Future<void> setRotateAngle(List<double> rotateAngle) async {
    await addJsonableProperty_batch(3, rotateAngle);
  }

  Future<void> setInfoWindowEnabled(List<bool> enable) async {
    await addJsonableProperty_batch(4, enable);
  }

  Future<void> setAnchor(List<double> anchorU, List<double> anchorV) async {
    await addJsonableProperty_batch(5, anchorU);
    await addJsonableProperty_batch(6, anchorV);
  }

  Future<void> setObject(List<String> object) async {
    await addJsonableProperty_batch(7, object);
  }

  Future<void> setVisible(List<bool> visible) async {
    await addJsonableProperty_batch(10, visible);
  }

  Future<void> setFps(List<int> fps) async {
    await addJsonableProperty_batch(12, fps);
  }
}
