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

class com_baidu_mapapi_map_BitmapDescriptorFactory extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.map.BitmapDescriptorFactory';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_map_BitmapDescriptorFactory> create__() async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createcom_baidu_mapapi_map_BitmapDescriptorFactory__', );
    final object = com_baidu_mapapi_map_BitmapDescriptorFactory()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptorFactory>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_map_BitmapDescriptorFactory__', {'length': length});
  
    final List<com_baidu_mapapi_map_BitmapDescriptorFactory> typedResult = resultBatch.map((result) => com_baidu_mapapi_map_BitmapDescriptorFactory()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromAsset(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromAsset([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromAsset', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromAssetWithDpi(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromAssetWithDpi([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromAssetWithDpi', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromBitmap(android_graphics_Bitmap var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromBitmap([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromBitmap', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromFile(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromFile([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromFile', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromFileWithDpi(String var0, int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromFileWithDpi([\'var0\':$var0, \'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromFileWithDpi', {"var0": var0, "var1": var1});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromPath(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromPath([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromPath', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromPathWithDpi(String var0, int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromPathWithDpi([\'var0\':$var0, \'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromPathWithDpi', {"var0": var0, "var1": var1});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromResource(int var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromResource([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromResource', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromResourceWithDpi(int var0, int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromResourceWithDpi([\'var0\':$var0, \'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromResourceWithDpi', {"var0": var0, "var1": var1});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromView(android_view_View var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromView([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromView', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<com_baidu_mapapi_map_BitmapDescriptor> fromViewWithDpi(android_view_View var0, int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.map.BitmapDescriptorFactory::fromViewWithDpi([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromViewWithDpi', {"var0": var0, "var1": var1});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  //endregion
}

extension com_baidu_mapapi_map_BitmapDescriptorFactory_Batch on List<com_baidu_mapapi_map_BitmapDescriptorFactory> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromAsset_batch(List<String> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromAsset_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromAssetWithDpi_batch(List<String> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromAssetWithDpi_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromBitmap_batch(List<android_graphics_Bitmap> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromBitmap_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromFile_batch(List<String> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromFile_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromFileWithDpi_batch(List<String> var0, List<int> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromFileWithDpi_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__], "var1": var1[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromPath_batch(List<String> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromPath_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromPathWithDpi_batch(List<String> var0, List<int> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromPathWithDpi_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__], "var1": var1[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromResource_batch(List<int> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromResource_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromResourceWithDpi_batch(List<int> var0, List<int> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromResourceWithDpi_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__], "var1": var1[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromView_batch(List<android_view_View> var0) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromView_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<com_baidu_mapapi_map_BitmapDescriptor>> fromViewWithDpi_batch(List<android_view_View> var0, List<int> var1) async {
    if (var0.length != var1.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.map.BitmapDescriptorFactory::fromViewWithDpi_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__], "var1": var1[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_map_BitmapDescriptor()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  //endregion
}