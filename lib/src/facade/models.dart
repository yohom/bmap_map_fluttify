import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:bmap_utils_fluttify/bmap_utils_fluttify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:uni_map_platform_interface/uni_map_platform_interface.dart';

/// 弧线创建参数
@immutable
class ArcOption {
  /// 经纬度列表
  final LatLng startPoint;
  final LatLng middlePoint;
  final LatLng endPoint;

  /// 宽度
  final double width;

  /// 颜色
  final Color strokeColor;

  ArcOption({
    this.startPoint,
    this.middlePoint,
    this.endPoint,
    this.width,
    this.strokeColor,
  });

  @override
  String toString() {
    return 'ArcOption{startPoint: $startPoint, middlePoint: $middlePoint, endPoint: $endPoint, width: $width, strokeColor: $strokeColor}';
  }
}

/// 地图标记
class Marker implements IMarker {
  Marker.android(this.androidModel);

  Marker.ios(this.iosModel, this.iosController);

  com_baidu_mapapi_map_Marker androidModel;

  BMKPointAnnotation iosModel;
  BMKMapView iosController;

  Future<LatLng> get location {
    return platform(
      android: (_) async {
        final _location = await androidModel.getPosition();
        return LatLng(
          await _location.get_latitude(),
          await _location.get_longitude(),
        );
      },
      ios: (_) async {
        final location = await iosModel.get_coordinate();
        return LatLng(await location.latitude, await location.longitude);
      },
    );
  }

  @override
  Future<String> get object {
    return platform(
      android: (_) => androidModel.getTitle(),
      ios: (_) async {
        final result = await iosModel.getJsonableProperty__(7);
        return result as String;
      },
    );
  }

  @override
  Future<void> remove() async {
    return platform(
      android: (_) => androidModel.remove(),
      ios: (_) => iosController.removeAnnotation(iosModel),
    );
  }

  @override
  Future<void> showInfoWindow() async {
    return platform(
      android: (_) async {
        androidModel.showInfoWindow(await androidModel.getInfoWindow());
      },
      ios: (_) async {
        iosController?.selectAnnotation_animated(iosModel, true);
      },
    );
  }

  @override
  Future<void> hideInfoWindow() async {
    return platform(
      android: (_) => androidModel.hideInfoWindow(),
      ios: (_) => iosController?.deselectAnnotation_animated(iosModel, true),
    );
  }

  @override
  // TODO: implement coordinate
  Future<LatLng> get coordinate => throw UnimplementedError();

  @override
  Future<void> setAngle(double angle) {
    // TODO: implement setAngle
    throw UnimplementedError();
  }

  @override
  Future<void> setCoordinate(LatLng coordinate) {
    // TODO: implement setCoordinate
    throw UnimplementedError();
  }

  @override
  Future<void> setIcon(
      ImageProvider<Object> iconProvider, ImageConfiguration configuration) {
    // TODO: implement setIcon
    throw UnimplementedError();
  }

  @override
  Future<void> setSnippet(String snippet) {
    // TODO: implement setSnippet
    throw UnimplementedError();
  }

  @override
  Future<void> setTitle(String title) {
    // TODO: implement setTitle
    throw UnimplementedError();
  }

  @override
  Future<void> setVisible(bool visible) {
    // TODO: implement setVisible
    throw UnimplementedError();
  }

  @override
  // TODO: implement snippet
  Future<String> get snippet => throw UnimplementedError();

  @override
  Future<void> startAnimation(MarkerAnimation animation) {
    // TODO: implement startAnimation
    throw UnimplementedError();
  }

  @override
  // TODO: implement title
  Future<String> get title => throw UnimplementedError();
}

/// 折线
class Polyline {
  Polyline.android(this._androidModel);

  Polyline.ios(this._iosModel, this._iosController);

  com_baidu_mapapi_map_Polyline _androidModel;
  BMKPolyline _iosModel;
  BMKMapView _iosController;

  Future<void> remove() {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeOverlay(_iosModel),
    );
  }
}

/// 折线
class Arc {
  Arc.android(this._androidModel);

  Arc.ios(this._iosModel, this._iosController);

  com_baidu_mapapi_map_Arc _androidModel;
  BMKArcline _iosModel;
  BMKMapView _iosController;

  Future<void> remove() {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeOverlay(_iosModel),
    );
  }
}

/// 多边形
class Polygon {
  Polygon.android(this._androidModel);

  Polygon.ios(this._iosModel, this._iosController);

  com_baidu_mapapi_map_Polygon _androidModel;
  BMKPolygon _iosModel;
  BMKMapView _iosController;

  Future<void> remove() {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeOverlay(_iosModel),
    );
  }

  Future<bool> contains(LatLng target) {
    return platform(
      android: (_) async {
        final latLng = await com_baidu_mapapi_model_LatLng
            .create__double__double(target.latitude, target.longitude);
//        return _androidModel.(latLng);
        return false; // TODO
      },
      ios: (_) async {
        final latLng = await CLLocationCoordinate2D.create(
            target.latitude, target.longitude);
        final point = await BMKMapPointForCoordinate(latLng);
        final bounds = await _iosModel.get_points();
        return BMKPolygonContainsPoint(point, bounds, bounds.length);
      },
    );
  }
}

/// 圆形
class Circle {
  Circle.android(this._androidModel);

  Circle.ios(this._iosModel, this._iosController);

  com_baidu_mapapi_map_Circle _androidModel;
  BMKCircle _iosModel;
  BMKMapView _iosController;

  Future<void> remove() {
    return platform(
      android: (_) => _androidModel.remove(),
      ios: (_) => _iosController?.removeOverlay(_iosModel),
    );
  }
}

/// 定位结果 model
class Location {
  Location({
    @required this.address,
    @required this.latLng,
    @required this.altitude,
    @required this.accuracy,
    @required this.direction,
    @required this.country,
    @required this.province,
    @required this.city,
    @required this.cityCode,
    @required this.adCode,
    @required this.district,
    @required this.street,
    @required this.streetNumber,
    @required this.iosModel,
  });

  /// 地址全称
  String address;

  /// 经纬度
  LatLng latLng;

  /// 海拔
  double altitude;

  /// 精度
  double accuracy;

  /// 方向
  double direction;

  /// 国家
  String country;

  /// 省份
  String province;

  /// 城市
  String city;

  /// 城市编号
  String cityCode;

  /// 邮编
  String adCode;

  /// 区域
  String district;

  /// 街道
  String street;

  /// 街道号
  String streetNumber;

  BMKLocation iosModel;

  @override
  String toString() {
    return 'Location{\naddress: $address, \nlatLng: $latLng, \naltitude: $altitude, \naccuracy: $accuracy, \ndirection: $direction, \ncountry: $country, \nprovince: $province, \ncity: $city, \ncityCode: $cityCode, \nadCode: $adCode, \ndistrict: $district, \nstreet: $street, \nstreetNumber: $streetNumber\n}';
  }
}
