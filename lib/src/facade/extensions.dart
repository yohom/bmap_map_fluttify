import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:uni_map_platform_interface/uni_map_platform_interface.dart';

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

extension BMKPointAnnotationX on BMKPointAnnotation {
  Future<void> setIcon(UIImage icon) async {
    await addProperty__(1, icon);
  }

  Future<void> setDraggable(bool draggable) async {
    await addJsonableProperty__(2, draggable);
  }

  Future<void> setRotateAngle(double rotateAngle) async {
    await addJsonableProperty__(3, rotateAngle);
  }

  Future<void> setInfoWindowEnabled(bool enable) async {
    await addJsonableProperty__(4, enable);
  }

  Future<void> setAnchor(double anchorU, double anchorV) async {
    await addJsonableProperty__(5, anchorU);
    await addJsonableProperty__(6, anchorV);
  }

  Future<void> setObject(String object) async {
    await addJsonableProperty__(7, object);
  }

  Future<void> setVisible(bool visible) async {
    await addJsonableProperty__(10, visible);
  }

  Future<void> setIcons(List<UIImage> icons) async {
    await addListProperty__(11, icons);
  }

  Future<void> setFps(int fps) async {
    await addJsonableProperty__(12, fps);
  }

  Future<void> setOpacity(double opacity) async {
    await addJsonableProperty__(13, opacity);
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

extension com_baidu_mapapi_map_MarkerX on com_baidu_mapapi_map_Marker {
  Future<void> showInfoWindowX(String title, String snippet) async {
    await kBmapMapFluttifyChannel.invokeMethod(
      'com.baidu.mapapi.map.Marker::showInfoWindowX',
      {'__this__': this, 'title': title, 'snippet': snippet},
    );
  }
}
