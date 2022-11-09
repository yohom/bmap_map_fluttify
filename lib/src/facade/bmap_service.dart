import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/facade/bmap_location.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:bmap_utils_fluttify/bmap_utils_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:uni_map_platform_interface/uni_map_platform_interface.dart';

/// 除了地图以外的功能放在这里, 比如说sdk初始化
class BmapService {
  static BmapService instance = BmapService._();

  BmapService._();

  /// 设置ios的app key
  Future<void> init({@required String iosKey}) async {
    await platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        await com_baidu_mapapi_SDKInitializer
            .initialize__android_content_Context(context);
      },
      ios: (pool) async {
        final manager = await BMKMapManager.create__();
        await manager.start_generalDelegate(iosKey, null);
        await BmapLocation.instance.init(iosKey: iosKey);
      },
    );
  }

  /// 转换其他坐标系到百度坐标系
  ///
  /// [coordinate]待转换坐标, [fromType]待转换坐标的坐标系
  Future<LatLng> convertCoordinate(
    LatLng coordinate,
    CoordType fromType,
  ) async {
    return platform(
      android: (pool) async {
        final context = await android_app_Activity.get();

        // 待转换坐标
        final targetCoordinate = await com_baidu_mapapi_model_LatLng
            .create__double__double(coordinate.latitude, coordinate.longitude);

        // 转换器
        final converter =
            await com_baidu_mapapi_utils_CoordinateConverter.create__();

        switch (fromType) {
          case CoordType.GPS:
            await converter
                .from(com_baidu_mapapi_utils_CoordinateConverter_CoordType.GPS);
            break;
          case CoordType.Google:
          case CoordType.MapBar:
          case CoordType.MapABC:
          case CoordType.SosoMap:
          case CoordType.Aliyun:
            debugPrint('暂不支持${fromType}坐标系转换');
            break;
          case CoordType.Baidu:
            break;
        }

        await converter.coord(targetCoordinate);

        final result = await converter.convert();

        // 释放两个点
        pool
          ..add(targetCoordinate)
          ..add(context)
          ..add(converter)
          ..add(result);

        return LatLng(
          await result.get_latitude(),
          await result.get_longitude(),
        );
      },
      ios: (pool) async {
        // 待转换坐标
        final targetCoord = await CLLocationCoordinate2D.create(
            coordinate.latitude, coordinate.longitude);

        BMK_COORD_TYPE type;
        switch (fromType) {
          case CoordType.GPS:
            type = BMK_COORD_TYPE.BMK_COORDTYPE_GPS;
            break;
          case CoordType.Google:
          case CoordType.MapBar:
          case CoordType.MapABC:
          case CoordType.SosoMap:
          case CoordType.Aliyun:
            debugPrint('暂不支持${fromType}坐标系转换');
            break;
          case CoordType.Baidu:
            break;
        }
        final result = await BMKCoordTrans(
            targetCoord, type, BMK_COORD_TYPE.BMK_COORDTYPE_BD09LL);

        // 释放两个点相关的数据
        pool
          ..add(targetCoord)
          ..add(result);

        return LatLng(await result.latitude, await result.longitude);
      },
    );
  }

  /// 判断坐标[current]是否在以[target]为圆心[radius]为半径的圆内, [radius]单位为米
  Future<bool> circleContainsCoordinate(
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

        pool
          ..add(_current)
          ..add(_target);
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

        pool
          ..add(_current)
          ..add(_target);
        return BMKCircleContainsCoordinate(
          _current,
          _target,
          radius.toDouble(),
        );
      },
    );
  }

  /// 计算两点间的直线距离
  ///
  /// 计算点1[point1]和点2[point2]的距离
  Future<double> calculateDistance(LatLng point1, LatLng point2) async {
    return platform(
      android: (pool) async {
        // 点1
        final _location1 = await com_baidu_mapapi_model_LatLng
            .create__double__double(point1.latitude, point1.longitude);
        // 点2
        final _location2 = await com_baidu_mapapi_model_LatLng
            .create__double__double(point2.latitude, point2.longitude);

        // 计算结果
        final result = await com_baidu_mapapi_utils_DistanceUtil.getDistance(
            _location1, _location2);

        // 释放两个点
        pool
          ..add(_location1)
          ..add(_location2);

        return result;
      },
      ios: (pool) async {
        // 点1
        final _location1 = await CLLocationCoordinate2D.create(
            point1.latitude, point1.longitude);
        final mapPoint1 = await BMKMapPointForCoordinate(_location1);

        // 点2
        final _location2 = await CLLocationCoordinate2D.create(
            point2.latitude, point2.longitude);
        final mapPoint2 = await BMKMapPointForCoordinate(_location2);

        // 计算结果
        final result = await BMKMetersBetweenMapPoints(mapPoint1, mapPoint2);

        // 释放两个点相关的数据
        pool
          ..add(_location1)
          ..add(_location2)
          ..add(mapPoint1)
          ..add(mapPoint2);

        return result;
      },
    );
  }
}
