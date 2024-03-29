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

class com_baidu_mapapi_map_PolygonOptions extends com_baidu_mapapi_map_OverlayOptions  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.map.PolygonOptions';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_map_PolygonOptions> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_map_PolygonOptions__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_map_PolygonOptions>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_map_PolygonOptions__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<int> getFillColor() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::getFillColor([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getFillColor', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_baidu_mapapi_model_LatLng>> getPoints() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::getPoints([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getPoints', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(it))?.toList();
  }
  
  
  Future<com_baidu_mapapi_map_Stroke> getStroke() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::getStroke([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getStroke', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Stroke>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_PolygonOptions> fillColor(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::fillColor([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::fillColor', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_PolygonOptions> points(List<com_baidu_mapapi_model_LatLng> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::points([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::points', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_PolygonOptions> stroke(com_baidu_mapapi_map_Stroke var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::stroke([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::stroke', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_PolygonOptions> addHoleOption(com_baidu_mapapi_map_HoleOptions var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::addHoleOption([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::addHoleOption', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_PolygonOptions> addHoleOptions(List<com_baidu_mapapi_map_HoleOptions> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::addHoleOptions([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::addHoleOptions', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  
  Future<com_baidu_mapapi_map_PolygonOptions> visible(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::visible([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::visible', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  
  Future<bool> isVisible() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::isVisible([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::isVisible', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_baidu_mapapi_map_PolygonOptions> zIndex(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::zIndex([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::zIndex', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  
  Future<int> getZIndex() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::getZIndex([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getZIndex', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_baidu_mapapi_map_PolygonOptions> extraInfo(android_os_Bundle var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::extraInfo([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::extraInfo', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__);
  }
  
  
  Future<android_os_Bundle> getExtraInfo() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.PolygonOptions@$refId::getExtraInfo([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getExtraInfo', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<android_os_Bundle>(__result__);
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_map_PolygonOptions{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_map_PolygonOptions_Batch on List<com_baidu_mapapi_map_PolygonOptions> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<int>> getFillColor_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getFillColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<List<com_baidu_mapapi_model_LatLng>>> getPoints_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(it))?.toList()).cast<List<com_baidu_mapapi_model_LatLng>>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_Stroke>> getStroke_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getStroke_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Stroke>(__result__)).cast<com_baidu_mapapi_map_Stroke>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_PolygonOptions>> fillColor_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::fillColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__)).cast<com_baidu_mapapi_map_PolygonOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_PolygonOptions>> points_batch(List<List<com_baidu_mapapi_model_LatLng>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::points_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__)).cast<com_baidu_mapapi_map_PolygonOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_PolygonOptions>> stroke_batch(List<com_baidu_mapapi_map_Stroke> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::stroke_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__)).cast<com_baidu_mapapi_map_PolygonOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_PolygonOptions>> addHoleOption_batch(List<com_baidu_mapapi_map_HoleOptions> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::addHoleOption_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__)).cast<com_baidu_mapapi_map_PolygonOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_PolygonOptions>> addHoleOptions_batch(List<List<com_baidu_mapapi_map_HoleOptions>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::addHoleOptions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__)).cast<com_baidu_mapapi_map_PolygonOptions>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_PolygonOptions>> visible_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::visible_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__)).cast<com_baidu_mapapi_map_PolygonOptions>().toList();
  }
  
  
  Future<List<bool>> isVisible_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::isVisible_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_PolygonOptions>> zIndex_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::zIndex_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__)).cast<com_baidu_mapapi_map_PolygonOptions>().toList();
  }
  
  
  Future<List<int>> getZIndex_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getZIndex_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_PolygonOptions>> extraInfo_batch(List<android_os_Bundle> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::extraInfo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_PolygonOptions>(__result__)).cast<com_baidu_mapapi_map_PolygonOptions>().toList();
  }
  
  
  Future<List<android_os_Bundle>> getExtraInfo_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.PolygonOptions::getExtraInfo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<android_os_Bundle>(__result__)).cast<android_os_Bundle>().toList();
  }
  
  //endregion
}