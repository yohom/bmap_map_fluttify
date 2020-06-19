import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:bmap_utils_fluttify/bmap_utils_fluttify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'enums.dart';

/// Marker创建参数
@immutable
class MarkerOption {
  MarkerOption({
    @required this.latLng,
    this.iconUri,
    this.imageConfig,
    this.widget,
    this.object,
  })  : assert(
          (iconUri != null && imageConfig != null) || iconUri == null,
          'iconUri和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        ),
        assert(!(widget != null && iconUri != null), 'widget和iconUri不能同时设置! ');

  /// 经纬度
  final LatLng latLng;

  /// 图片uri 可以是url, asset路径或者文件路径
  ///
  /// 如果设置了[iconUri], 那么必须同时设置[imageConfig], 否则图片大小会不一致, 这是flutter
  /// 的bug
  final Uri iconUri;

  /// 图片参数
  ///
  /// 目前利用到的信息只有[devicePixelRatio], 使用[devicePixelRatio]获取当前设备
  /// 对应分辨率的图片(Android), iOS使用1.0x的图片. 所以[size]设置了是没用的, 这是flutter
  /// 的PlatformView的bug, 参考https://github.com/flutter/flutter/issues/24865.
  /// 这个bug彻底解决之后才能保证marker是完美的.
  final ImageConfiguration imageConfig;

  /// Widget形式的Marker
  ///
  /// 不能和[iconUri]一起用.
  /// 注意控制Widget的大小, 比如Column默认是max, 会使用地图的高度, 那么此时需要设置成min.
  final Widget widget;

  /// 自定义数据
  final String object;

  @override
  String toString() {
    return 'MarkerOption{latLng: $latLng, iconUri: $iconUri, imageConfig: $imageConfig, widget: $widget, object: $object}';
  }
}

/// 平滑移动Marker创建参数
@immutable
class SmoothMoveMarkerOption {
  /// 轨迹经纬度列表
  final List<LatLng> path;

  /// 图片uri 可以是url, asset路径或者文件路径
  ///
  /// 如果设置了[iconUri], 那么必须同时设置[imageConfig], 否则图片大小会不一致, 这是flutter
  /// 的bug
  final Uri iconUri;

  /// 图片参数
  ///
  /// 目前利用到的信息只有[devicePixelRatio], 使用[devicePixelRatio]获取当前设备
  /// 对应分辨率的图片(Android), iOS使用1.0x的图片. 所以[size]设置了是没用的, 这是flutter
  /// 的PlatformView的bug, 参考https://github.com/flutter/flutter/issues/24865.
  /// 这个bug彻底解决之后才能保证marker是完美的.
  final ImageConfiguration imageConfig;

  /// 动画时长
  final Duration duration;

  SmoothMoveMarkerOption({
    @required this.path,
    @required this.iconUri,
    @required this.imageConfig,
    @required this.duration,
  }) : assert(
          (iconUri != null && imageConfig != null) || iconUri == null,
          'iconUri和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        );

  @override
  String toString() {
    return 'SmoothMoveMarkerOption{path: $path, iconUri: $iconUri, imageConfig: $imageConfig, duration: $duration}';
  }
}

/// Polyline创建参数
@immutable
class PolylineOption {
  /// 经纬度列表
  final List<LatLng> latLngList;

  /// 宽度
  final double width;

  /// 颜色
  final Color strokeColor;

  /// 自定义纹理
  final Uri customTexture;

  /// 图片参数
  final ImageConfiguration imageConfig;

  /// 线段末端样式
  final LineCapType lineCapType;

  /// 线段连接处样式
  final LineJoinType lineJoinType;

  /// 是否虚线
  final DashType dashType;

  PolylineOption({
    @required this.latLngList,
    this.width = 5,
    this.strokeColor = Colors.green,
    this.customTexture,
    this.imageConfig,
    this.lineCapType,
    this.lineJoinType,
    this.dashType,
  }) : assert(
          (customTexture != null && imageConfig != null) ||
              customTexture == null,
          'customTexture和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        );

  @override
  String toString() {
    return 'PolylineOption{latLngList: $latLngList, width: $width, strokeColor: $strokeColor, customTexture: $customTexture, imageConfig: $imageConfig, lineCapType: $lineCapType, lineJoinType: $lineJoinType, dotted: $dashType}';
  }
}

/// Polygon创建参数
@immutable
class PolygonOption {
  /// 经纬度列表
  final List<LatLng> latLngList;

  /// 宽度
  final double width;

  /// 边框颜色
  final Color strokeColor;

  /// 填充颜色
  final Color fillColor;

  PolygonOption({
    @required this.latLngList,
    this.width = 5,
    this.strokeColor = Colors.green,
    this.fillColor = Colors.transparent,
  });

  @override
  String toString() {
    return 'PolygonOption{latLngList: $latLngList, width: $width, strokeColor: $strokeColor, fillColor: $fillColor}';
  }
}

/// Circle创建参数
@immutable
class CircleOption {
  /// 中心点经纬度
  final LatLng center;

  /// 宽度
  final double radius;

  /// 宽度
  final double width;

  /// 边框颜色
  final Color strokeColor;

  /// 填充颜色
  final Color fillColor;

  CircleOption({
    @required this.center,
    @required this.radius,
    this.width = 5,
    this.strokeColor = Colors.green,
    this.fillColor = Colors.transparent,
  })  : assert(center != null),
        assert(radius != null);

  @override
  String toString() {
    return 'CircleOption{center: $center, radius: $radius, width: $width, strokeColor: $strokeColor, fillColor: $fillColor}';
  }
}

/// 地图标记
class Marker {
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

  Future<String> get object {
    return platform(
      android: (_) => androidModel.getTitle(),
      ios: (_) async {
        final result = await iosModel.getJsonableProperty__(7);
        return result as String;
      },
    );
  }

  Future<void> remove() async {
    return platform(
      android: (_) => androidModel.remove(),
      ios: (_) => iosController.removeAnnotation(iosModel),
    );
  }

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

  Future<void> hideInfoWindow() async {
    return platform(
      android: (_) => androidModel.hideInfoWindow(),
      ios: (_) => iosController?.deselectAnnotation_animated(iosModel, true),
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
