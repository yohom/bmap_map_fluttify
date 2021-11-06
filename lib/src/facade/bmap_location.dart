import 'dart:async';
import 'dart:io';

import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:bmap_map_fluttify/src/ios/BMKLocationAuth.g.dart';
import 'package:bmap_map_fluttify/src/ios/BMKLocationManager.g.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'enums.dart';
import 'models.dart';

class BmapLocation {
  static BmapLocation instance = BmapLocation._();

  BmapLocation._();

  com_baidu_location_LocationClient _androidClient;
  BMKLocationManager _iosClient;

  final _androidCallback = _AndroidLocationCallback();
  final _iosCallback = _IOSLocationCallback();

  /// 初始化
  Future<void> init({@required String iosKey}) async {
    return platform(
      android: (pool) async {
        debugPrint(
          'Android端需要在AndroidManifest.xml中配置, 详情请参考 http://lbsyun.baidu.com/index.php?title=android-locsdk/guide/create-project/android-studio',
        );
      },
      ios: (pool) async {
        final location = await BMKLocationAuth.sharedInstance();
        await location.checkPermisionWithKey_authDelegate(iosKey, null);
      },
    );
  }

  /// 设置选项
  ///
  /// 选择定位模式[mode], 设置定位同时是否需要返回地址描述[needAddress], 设置定位请求超时时间，默认为30秒[timeout]
  Future<void> setupOptions({
    LocationAccuracy mode = LocationAccuracy.Low,
    bool needAddress = true,
    Duration timeout = const Duration(seconds: 30),
    @required ValueChanged<Location> onLocation,
  }) async {
    if (Platform.isAndroid) {
      // 创建Client
      final context = await android_app_Application.get();
      _androidClient ??= await com_baidu_location_LocationClient
          .create__android_content_Context(context);

      // 创建option
      final option = await com_baidu_location_LocationClientOption.create__();
      // 设置定位模式
      if (mode != null) {
        com_baidu_location_LocationClientOption_LocationMode _mode;
        switch (mode) {
          // 高精度定位模式：会同时使用网络定位和GPS定位，优先返回最高精度的定位结果，以及对应的地址描述信息。
          case LocationAccuracy.High:
            _mode = com_baidu_location_LocationClientOption_LocationMode
                .Hight_Accuracy;
            break;
          // 低功耗定位模式：不会使用GPS和其他传感器，只会使用网络定位（Wi-Fi和基站定位）；
          case LocationAccuracy.Low:
            _mode = com_baidu_location_LocationClientOption_LocationMode
                .Battery_Saving;
            break;
          case LocationAccuracy.DeviceSensor:
            _mode = com_baidu_location_LocationClientOption_LocationMode
                .Device_Sensors;
            break;
        }
        await option.setLocationMode(_mode);
      }
      await option.setIsNeedAddress(needAddress);
      await option.setIsNeedAltitude(true);
      await option.setCoorType('BD09ll');
      // 设置定位请求超时时间，默认为30秒。
      if (timeout != null) await option.setTimeOut(timeout.inMilliseconds);

      // 设置监听
      await _androidClient.registerLocationListener(
        _androidCallback
          ..onLocation = (location) async {
            onLocation(Location(
              address: await location.getAddrStr(),
              latLng: LatLng(
                await location.getLatitude(),
                await location.getLongitude(),
              ),
              altitude: await location.getAltitude(),
              country: await location.getCountry(),
              province: await location.getProvince(),
              direction: await location.getDirection(),
              city: await location.getCity(),
              cityCode: await location.getCityCode(),
              adCode: await location.getAdCode(),
              district: await location.getDistrict(),
              street: await location.getStreet(),
              streetNumber: await location.getStreetNumber(),
              accuracy: await location.getRadius(),
              iosModel: null,
            ));
          },
      );

      await _androidClient.setLocOption(option);
    } else if (Platform.isIOS) {
      _iosClient ??= await BMKLocationManager.create__();

      // 设置定位请求超时时间，默认为30秒。
      if (timeout != null) {
        await _iosClient.set_locationTimeout(timeout.inSeconds);
      }
      await _iosClient.set_coordinateType(
        BMKLocationCoordinateType.BMKLocationCoordinateTypeBMK09LL,
      );

      await _iosClient.set_delegate(
        _iosCallback
          ..onLocation = (location) async {
            final regeocode = await location.get_rgcData();
            final clLocation = await location.get_location();
            onLocation(Location(
              address: await regeocode.get_locationDescribe(),
              latLng: LatLng(
                await clLocation.coordinate.then((it) => it.latitude),
                await clLocation.coordinate.then((it) => it.longitude),
              ),
              altitude: await clLocation.altitude,
              country: await regeocode.get_country(),
              province: await regeocode.get_province(),
              city: await regeocode.get_city(),
              direction: await clLocation.course,
              cityCode: await regeocode.get_cityCode(),
              adCode: await regeocode.get_adCode(),
              district: await regeocode.get_district(),
              street: await regeocode.get_street(),
              streetNumber: await regeocode.get_streetNumber(),
              accuracy: await clLocation.horizontalAccuracy,
              iosModel: location,
            ));
          },
      );
    }
  }

  /// 连续获取定位信息
  Future<void> start() async {
    if (Platform.isAndroid) {
      await _androidClient.start();
      await _androidClient.requestLocation();
    } else if (Platform.isIOS) {
      await _iosClient.startUpdatingLocation();
    }
  }

  /// 停止定位
  Future<void> stop() async {
    return platform(
      android: (pool) async {
        await _androidClient?.stop();
      },
      ios: (pool) async {
        await _iosClient?.stopUpdatingLocation();
      },
    );
  }
}

class _IOSLocationCallback extends NSObject with BMKLocationManagerDelegate {
  ValueChanged<BMKLocation> onLocation;

  @override
  Future<void> BMKLocationManager_didUpdateLocation_orError(
    BMKLocationManager manager,
    BMKLocation location,
    NSError error,
  ) async {
    onLocation?.call(location);
  }
}

class _AndroidLocationCallback extends java_lang_Object
    with com_baidu_location_BDLocationListener {
  _AndroidLocationCallback();

  ValueChanged<com_baidu_location_BDLocation> onLocation;

  @override
  Future<void> onReceiveLocation(com_baidu_location_BDLocation var1) async {
    debugPrint('收到定位: $var1');
    if (onLocation != null) onLocation(var1);
  }
}
