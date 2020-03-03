import 'package:bmap_core_fluttify/bmap_core_fluttify.dart';
import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

/// 除了地图以外的功能放在这里, 比如说sdk初始化
class BmapService {
  BmapService._();

  /// 设置ios和android的app key
  static Future<void> init({
    @required String iosKey,
    @required String androidKey,
  }) async {
    await platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        await com_baidu_mapapi_SDKInitializer
            .initialize__android_content_Context(context);
      },
      ios: (pool) async {
        final manager = await BMKMapManager.create__();
        await manager.startGeneralDelegate(iosKey, null);
      },
    );
  }
}
