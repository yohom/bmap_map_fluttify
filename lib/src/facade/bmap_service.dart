import 'package:bmap_core_fluttify/bmap_core_fluttify.dart';
import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:bmap_utils_fluttify/bmap_utils_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

/// 除了地图以外的功能放在这里, 比如说sdk初始化
class BmapService {
  BmapService._();

  /// 设置ios的app key
  static Future<void> init({@required String iosKey}) async {
    await platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        await com_baidu_mapapi_SDKInitializer
            .initialize__android_content_Context(context);
      },
      ios: (pool) async {
        final manager = await BMKMapManager.create__();
        await manager.start_generalDelegate(iosKey, null);
      },
    );
  }

  /// 判断坐标[current]是否在以[target]为圆心[radius]为半径的圆内, [radius]单位为米
  static Future<bool> circleContainsCoordinate(
    LatLng current,
    LatLng target,
    int radius,
  ) async {
    return platform(
      android: (pool) async {
        final _current =
            await com_baidu_mapapi_model_LatLng.create__double__double(
          current.latitude,
          current.longitude,
        );
        final _target =
            await com_baidu_mapapi_model_LatLng.create__double__double(
          target.latitude,
          target.longitude,
        );

        pool..add(_current)..add(_target);
        return com_baidu_mapapi_utils_SpatialRelationUtil.isCircleContainsPoint(
          _current,
          radius,
          _target,
        );
      },
      ios: (pool) async {
        final _current = await CLLocationCoordinate2D.create(
          current.latitude,
          current.longitude,
        );
        final _target = await CLLocationCoordinate2D.create(
          target.latitude,
          target.longitude,
        );

        pool..add(_current)..add(_target);
        return BMKCircleContainsCoordinate(
          _current,
          _target,
          radius.toDouble(),
        );
      },
    );
  }
}
