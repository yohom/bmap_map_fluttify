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

class BMKLocationAuth extends NSObject  {
  //region constants
  static const String name__ = 'BMKLocationAuth';

  
  //endregion

  //region creators
  static Future<BMKLocationAuth> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKLocationAuth');
    final object = BMKLocationAuth()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKLocationAuth>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKLocationAuth', {'length': length});
  
    final List<BMKLocationAuth> typedResult = resultBatch.map((result) => BMKLocationAuth()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<BMKLocationAuthErrorCode> get_permisionState() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocationAuth::get_permisionState", {'refId': refId});
  
    return BMKLocationAuthErrorCode.values[__result__];
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<BMKLocationAuth> sharedInstance() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationAuth::sharedInstance([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocationAuth::sharedInstance', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = BMKLocationAuth()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<void> checkPermisionWithKey_authDelegate(String key, BMKLocationAuthDelegate delegate) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationAuth@$refId::checkPermisionWithKey([\'key\':$key])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocationAuth::checkPermisionWithKey_authDelegate', {"key": key, "refId": refId});
  
  
    // handle native call
    MethodChannel('BMKLocationAuthDelegate::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          switch (methodCall.method) {
            case 'Callback::BMKLocationAuthDelegate::onCheckPermissionState':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onCheckPermissionState([\'iError\':${args['iError']}])');
              }
        
              // handle the native call
              delegate?.onCheckPermissionState(BMKLocationAuthErrorCode.values[args['iError'] - -1]);
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  //endregion
}

extension BMKLocationAuth_Batch on List<BMKLocationAuth> {
  //region getters
  Future<List<BMKLocationAuthErrorCode>> get_permisionState_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKLocationAuth::get_permisionState_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKLocationAuthErrorCode.values[__result__]).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<BMKLocationAuth>> sharedInstance_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKLocationAuth::sharedInstance_batch', );
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKLocationAuth()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}