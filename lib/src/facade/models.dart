import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

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
