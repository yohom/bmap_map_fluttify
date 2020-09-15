// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class BMKGradient extends NSObject  {
  //region constants
  static const String name__ = 'BMKGradient';

  
  //endregion

  //region creators
  static Future<BMKGradient> create__({ bool init = true /* ios only */ }) async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createBMKGradient', {'init': init});
    final object = BMKGradient()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<BMKGradient>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchBMKGradient', {'length': length, 'init': init});
  
    final List<BMKGradient> typedResult = resultBatch.map((result) => BMKGradient()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<List<NSObject>> get_mColors() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGradient::get_mColors", {'__this__': this});
    return __result__ == null ? null : ((__result__ as List).cast<String>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList());
  }
  
  Future<List<NSObject>> get_mStartPoints() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGradient::get_mStartPoints", {'__this__': this});
    return __result__ == null ? null : ((__result__ as List).cast<String>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList());
  }
  
  //endregion

  //region setters
  Future<void> set_mColors(List<NSObject> mColors) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGradient::set_mColors', <String, dynamic>{'__this__': this, "mColors": mColors});
  
  
  }
  
  Future<void> set_mStartPoints(List<NSObject> mStartPoints) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGradient::set_mStartPoints', <String, dynamic>{'__this__': this, "mStartPoints": mStartPoints});
  
  
  }
  
  //endregion

  //region methods
  
  Future<dynamic> initWithColors_startPoints(List<NSObject> colors, List<NSObject> startPoints) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKGradient@$refId::initWithColors([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGradient::initWithColors_startPoints', {"colors": colors, "startPoints": startPoints, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = Ref()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  //endregion
}

extension BMKGradient_Batch on List<BMKGradient> {
  //region getters
  Future<List<List<NSObject>>> get_mColors_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGradient::get_mColors_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as List).cast<String>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
    return typedResult;
  }
  
  Future<List<List<NSObject>>> get_mStartPoints_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGradient::get_mStartPoints_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => (__result__ as List).cast<String>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_mColors_batch(List<List<NSObject>> mColors) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKGradient::set_mColors_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mColors": mColors[__i__]}]);
  
  
  }
  
  Future<void> set_mStartPoints_batch(List<List<NSObject>> mStartPoints) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKGradient::set_mStartPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mStartPoints": mStartPoints[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<dynamic>> initWithColors_startPoints_batch(List<List<NSObject>> colors, List<List<NSObject>> startPoints) async {
    if (colors.length != startPoints.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGradient::initWithColors_startPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"colors": colors[__i__], "startPoints": startPoints[__i__], "__this__": this[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => Ref()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  //endregion
}