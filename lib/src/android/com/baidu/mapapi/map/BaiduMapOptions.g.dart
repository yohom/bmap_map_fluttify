// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_baidu_mapapi_map_BaiduMapOptions extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.map.BaiduMapOptions';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_map_BaiduMapOptions> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_map_BaiduMapOptions__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_map_BaiduMapOptions>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_map_BaiduMapOptions__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> mapStatus(com_baidu_mapapi_map_MapStatus var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::mapStatus([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::mapStatus', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> compassEnabled(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::compassEnabled([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::compassEnabled', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> mapType(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::mapType([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::mapType', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> rotateGesturesEnabled(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::rotateGesturesEnabled([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::rotateGesturesEnabled', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> scrollGesturesEnabled(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::scrollGesturesEnabled([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::scrollGesturesEnabled', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> overlookingGesturesEnabled(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::overlookingGesturesEnabled([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::overlookingGesturesEnabled', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> zoomControlsEnabled(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::zoomControlsEnabled([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::zoomControlsEnabled', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> zoomGesturesEnabled(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::zoomGesturesEnabled([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::zoomGesturesEnabled', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> scaleControlEnabled(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::scaleControlEnabled([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::scaleControlEnabled', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> scaleControlPosition(android_graphics_Point var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::scaleControlPosition([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::scaleControlPosition', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> zoomControlsPosition(android_graphics_Point var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::zoomControlsPosition([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::zoomControlsPosition', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_BaiduMapOptions> logoPosition(com_baidu_mapapi_map_LogoPosition var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BaiduMapOptions@$refId::logoPosition([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::logoPosition', {"var1": var1.toValue(), "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__);
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_map_BaiduMapOptions{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_map_BaiduMapOptions_Batch on List<com_baidu_mapapi_map_BaiduMapOptions> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> mapStatus_batch(List<com_baidu_mapapi_map_MapStatus> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::mapStatus_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> compassEnabled_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::compassEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> mapType_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::mapType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> rotateGesturesEnabled_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::rotateGesturesEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> scrollGesturesEnabled_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::scrollGesturesEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> overlookingGesturesEnabled_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::overlookingGesturesEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> zoomControlsEnabled_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::zoomControlsEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> zoomGesturesEnabled_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::zoomGesturesEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> scaleControlEnabled_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::scaleControlEnabled_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> scaleControlPosition_batch(List<android_graphics_Point> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::scaleControlPosition_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> zoomControlsPosition_batch(List<android_graphics_Point> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::zoomControlsPosition_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_BaiduMapOptions>> logoPosition_batch(List<com_baidu_mapapi_map_LogoPosition> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.BaiduMapOptions::logoPosition_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__].toValue(), "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_BaiduMapOptions>(__result__)).cast<com_baidu_mapapi_map_BaiduMapOptions>().toList();
  }
  
  //endregion
}