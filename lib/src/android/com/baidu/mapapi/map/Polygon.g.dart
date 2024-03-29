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

class com_baidu_mapapi_map_Polygon extends com_baidu_mapapi_map_Overlay  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.map.Polygon';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<int> getFillColor() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::getFillColor([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getFillColor', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_baidu_mapapi_model_LatLng>> getPoints() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::getPoints([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getPoints', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(it))?.toList();
  }
  
  
  Future<com_baidu_mapapi_map_Stroke> getStroke() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::getStroke([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getStroke', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Stroke>(__result__);
  }
  
  
  Future<void> setFillColor(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::setFillColor([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setFillColor', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setPoints(List<com_baidu_mapapi_model_LatLng> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::setPoints([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setPoints', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setStroke(com_baidu_mapapi_map_Stroke var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::setStroke([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setStroke', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setHoleOption(com_baidu_mapapi_map_HoleOptions var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::setHoleOption([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setHoleOption', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_baidu_mapapi_map_HoleOptions> getHoleOption() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::getHoleOption([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getHoleOption', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_HoleOptions>(__result__);
  }
  
  
  Future<void> setHoleOptions(List<com_baidu_mapapi_map_HoleOptions> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::setHoleOptions([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setHoleOptions', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_baidu_mapapi_map_HoleOptions>> getHoleOptions() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.Polygon@$refId::getHoleOptions([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getHoleOptions', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_HoleOptions>(it))?.toList();
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_map_Polygon{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_map_Polygon_Batch on List<com_baidu_mapapi_map_Polygon> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<int>> getFillColor_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getFillColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<List<com_baidu_mapapi_model_LatLng>>> getPoints_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(it))?.toList()).cast<List<com_baidu_mapapi_model_LatLng>>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_Stroke>> getStroke_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getStroke_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Stroke>(__result__)).cast<com_baidu_mapapi_map_Stroke>().toList();
  }
  
  
  Future<List<void>> setFillColor_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setFillColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setPoints_batch(List<List<com_baidu_mapapi_model_LatLng>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setStroke_batch(List<com_baidu_mapapi_map_Stroke> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setStroke_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setHoleOption_batch(List<com_baidu_mapapi_map_HoleOptions> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setHoleOption_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_map_HoleOptions>> getHoleOption_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getHoleOption_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_HoleOptions>(__result__)).cast<com_baidu_mapapi_map_HoleOptions>().toList();
  }
  
  
  Future<List<void>> setHoleOptions_batch(List<List<com_baidu_mapapi_map_HoleOptions>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::setHoleOptions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<List<com_baidu_mapapi_map_HoleOptions>>> getHoleOptions_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.map.Polygon::getHoleOptions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_HoleOptions>(it))?.toList()).cast<List<com_baidu_mapapi_map_HoleOptions>>().toList();
  }
  
  //endregion
}