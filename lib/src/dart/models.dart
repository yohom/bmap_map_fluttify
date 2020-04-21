import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

/// Marker创建参数
@immutable
class MarkerOption {
  /// 经纬度
  final LatLng latLng;

  /// 标题
  final String title;

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

  /// 图片宽度 iOS only
  final double width;

  /// 图片高度 iOS only
  final double height;

  MarkerOption({
    @required this.latLng,
    this.title,
    this.iconUri,
    this.imageConfig,
    this.width,
    this.height,
  }) : assert(
          (iconUri != null && imageConfig != null) || iconUri == null,
          'iconUri和imageConfig必须同时设置! 如果想要一个默认的imageConfig, 那么就直接调用[createLocalImageConfiguration]方法来创建!',
        );

  @override
  String toString() {
    return 'MarkerOption{latLng: $latLng, title: $title, iconUri: $iconUri, imageConfig: $imageConfig, width: $width, height: $height}';
  }
}

class Marker {
  Marker.android(this.androidModel);

  Marker.ios(this.iosModel, this.iosController);

  com_baidu_mapapi_map_Marker androidModel;

  BMKPointAnnotation iosModel;
  BMKMapView iosController;

  Future<String> get title {
    return platform(
      android: (_) => androidModel.getTitle(),
      ios: (_) => iosModel.get_title(),
    );
  }

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
