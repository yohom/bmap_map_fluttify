import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/facade/extensions.dart';
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
        debugPrint('showInfoWindow::do nothing');
        // await androidModel.showInfoWindow();
      },
      ios: (_) async {
        await iosController?.selectAnnotation_animated(iosModel, true);
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
  Future<LatLng> get coordinate {
    return platform(
      android: (_) async {
        final position = await androidModel.getPosition();
        return LatLng(
          await position.get_latitude(),
          await position.get_longitude(),
        );
      },
      ios: (_) async {
        final position = await iosModel.get_coordinate();
        return LatLng(await position.latitude, await position.longitude);
      },
    );
  }

  @override
  Future<void> setAngle(double angle) {
    return platform(
      android: (pool) async {
        await androidModel.setRotate(angle);
      },
      ios: (pool) async {
        // TODO 可能会把文字也翻转, 但是没有类似高德地图的get_imageView方法
        final annotationView = await iosController.viewForAnnotation(iosModel);
        await annotationView.rotate(angle);
      },
    );
  }

  @override
  Future<void> setCoordinate(LatLng coordinate) {
    assert(coordinate != null);
    return platform(
      android: (_) async => androidModel.setPosition(
        await com_baidu_mapapi_model_LatLng.create__double__double(
          coordinate.latitude,
          coordinate.longitude,
        ),
      ),
      ios: (_) async {
        final annotationView = await iosController.viewForAnnotation(iosModel);
        if (annotationView != null) {
          final _coordinate = await CLLocationCoordinate2D.create(
            coordinate.latitude,
            coordinate.longitude,
          );
          await iosModel.set_coordinate(_coordinate);
          await annotationView.set_annotation(iosModel, viewChannel: false);
        } else {
          debugPrint('当前_annotationView为null, 无法设置经纬度!');
        }
      },
    );
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
    assert(visible != null);
    return platform(
      android: (_) => androidModel.setVisible(visible),
      ios: (_) async {
        await iosModel.setVisible(visible);

        final annotationView = await iosController.viewForAnnotation(iosModel);
        await annotationView?.setHidden(!visible);
      },
    );
  }

  @override
  Future<String> get snippet {
    return platform(
      android: (_) => androidModel.getTitle(),
      ios: (_) => iosModel.get_subtitle(),
    );
  }

  @override
  Future<void> startAnimation(MarkerAnimation animation) {
    // TODO: implement startAnimation
    throw UnimplementedError();
  }

  @override
  Future<String> get title {
    return platform(
      android: (_) => androidModel.getTitle(),
      ios: (_) => iosModel.get_title(),
    );
  }
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
class Circle extends ICircle {
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

  @override
  Future<void> setCoordinate(LatLng coordinate) {
    return platform(
      android: (_) async {
        final latLng = await com_baidu_mapapi_model_LatLng
            .create__double__double(coordinate.latitude, coordinate.longitude);
        return _androidModel.setCenter(latLng);
      },
      ios: (_) async {
        final _coordinate = await CLLocationCoordinate2D.create(
          coordinate.latitude,
          coordinate.longitude,
        );
        await _iosModel.set_coordinate(_coordinate);
      },
    );
  }

  @override
  Future<void> setRadius(double radius) {
    return platform(
      android: (_) => _androidModel.setRadius(radius.toInt()),
      ios: (_) => _iosModel.set_radius(radius),
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
