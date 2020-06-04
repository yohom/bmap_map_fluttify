// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:bmap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class BMKOfflineMap extends NSObject  {
  //region constants
  static const String name__ = 'BMKOfflineMap';

  
  //endregion

  //region creators
  static Future<BMKOfflineMap> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKOfflineMap');
    final object = BMKOfflineMap()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKOfflineMap>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKOfflineMap', {'length': length});
  
    final List<BMKOfflineMap> typedResult = resultBatch.map((result) => BMKOfflineMap()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  Future<void> set_delegate(BMKOfflineMapDelegate delegate) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
    MethodChannel('BMKOfflineMapDelegate::Callback')
      .setMethodCallHandler((methodCall) async {
        final args = methodCall.arguments as Map;
        // final refId = args['callerRefId'] as int;
        // if (refId != this.refId) return;
  
        switch (methodCall.method) {
          case 'Callback::BMKOfflineMapDelegate::onGetOfflineMapState_withState':
            // print log
            if (fluttifyLogEnabled) {
              debugPrint('fluttify-dart-callback: onGetOfflineMapState_withState([\'type\':${args['type']}, \'state\':${args['state']}])');
            }
        
            // handle the native call
            delegate?.onGetOfflineMapState_withState(args['type'], args['state']);
            break;
          default:
            break;
        }
      });
  }
  
  //endregion

  //region methods
  
  Future<bool> scan(bool deleteFailedr) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::scan([\'deleteFailedr\':$deleteFailedr])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::scan', {"deleteFailedr": deleteFailedr, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> start(int cityID) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::start([\'cityID\':$cityID])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::start', {"cityID": cityID, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> update(int cityID) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::update([\'cityID\':$cityID])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::update', {"cityID": cityID, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> pause(int cityID) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::pause([\'cityID\':$cityID])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::pause', {"cityID": cityID, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> remove(int cityID) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::remove([\'cityID\':$cityID])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::remove', {"cityID": cityID, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<List<NSObject>> getHotCityList() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::getHotCityList([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::getHotCityList', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(__return__);
      return __return__;
    }
  }
  
  
  Future<List<NSObject>> getOfflineCityList() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::getOfflineCityList([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::getOfflineCityList', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(__return__);
      return __return__;
    }
  }
  
  
  Future<List<NSObject>> searchCity(String cityName) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::searchCity([\'cityName\':$cityName])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::searchCity', {"cityName": cityName, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(__return__);
      return __return__;
    }
  }
  
  
  Future<List<NSObject>> getAllUpdateInfo() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::getAllUpdateInfo([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::getAllUpdateInfo', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(__return__);
      return __return__;
    }
  }
  
  
  Future<BMKOLUpdateElement> getUpdateInfo(int cityID) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKOfflineMap@$refId::getUpdateInfo([\'cityID\':$cityID])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::getUpdateInfo', {"cityID": cityID, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = BMKOLUpdateElement()..refId = __result__..tag__ = 'bmap_map_fluttify';
      kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension BMKOfflineMap_Batch on List<BMKOfflineMap> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<bool>> scan_batch(List<bool> deleteFailedr) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::scan_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"deleteFailedr": deleteFailedr[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> start_batch(List<int> cityID) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::start_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"cityID": cityID[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> update_batch(List<int> cityID) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::update_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"cityID": cityID[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> pause_batch(List<int> cityID) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::pause_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"cityID": cityID[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<bool>> remove_batch(List<int> cityID) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::remove_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"cityID": cityID[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    
      return typedResult;
    }
  }
  
  
  Future<List<List<NSObject>>> getHotCityList_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::getHotCityList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
      kNativeObjectPool.addAll(typedResult.expand((e) => e));
      return typedResult;
    }
  }
  
  
  Future<List<List<NSObject>>> getOfflineCityList_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::getOfflineCityList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
      kNativeObjectPool.addAll(typedResult.expand((e) => e));
      return typedResult;
    }
  }
  
  
  Future<List<List<NSObject>>> searchCity_batch(List<String> cityName) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::searchCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"cityName": cityName[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
      kNativeObjectPool.addAll(typedResult.expand((e) => e));
      return typedResult;
    }
  }
  
  
  Future<List<List<NSObject>>> getAllUpdateInfo_batch() async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::getAllUpdateInfo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => NSObject()..refId = __it__..tag__ = 'bmap_map_fluttify').toList()).toList();
      kNativeObjectPool.addAll(typedResult.expand((e) => e));
      return typedResult;
    }
  }
  
  
  Future<List<BMKOLUpdateElement>> getUpdateInfo_batch(List<int> cityID) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKOfflineMap::getUpdateInfo_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"cityID": cityID[__i__], "refId": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKOLUpdateElement()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}