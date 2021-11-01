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

class BMKLocationManager extends NSObject  {
  //region constants
  static const String name__ = 'BMKLocationManager';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<BMKLocationManager> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createBMKLocationManager',
      {'init': init}
    );
    return BmapMapFluttifyIOSAs<BMKLocationManager>(__result__);
  }
  
  static Future<List<BMKLocationManager>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchBMKLocationManager',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyIOSAs<BMKLocationManager>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<double> get_distanceFilter() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_distanceFilter", {'__this__': this});
    return __result__;
  }
  
  Future<double> get_desiredAccuracy() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_desiredAccuracy", {'__this__': this});
    return __result__;
  }
  
  Future<BMKLocationCoordinateType> get_coordinateType() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_coordinateType", {'__this__': this});
    return (__result__ as int).toBMKLocationCoordinateType();
  }
  
  Future<bool> get_pausesLocationUpdatesAutomatically() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_pausesLocationUpdatesAutomatically", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_allowsBackgroundLocationUpdates", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_locationTimeout() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_locationTimeout", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_reGeocodeTimeout() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_reGeocodeTimeout", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_locatingWithReGeocode() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_locatingWithReGeocode", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_isNeedNewVersionReGeocode() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_isNeedNewVersionReGeocode", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_userID() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_userID", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_delegate(BMKLocationManagerDelegate delegate) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_delegate', <String, dynamic>{'__this__': this, });
  
    MethodChannel('BMKLocationManagerDelegate::Callback', kBmapMapFluttifyMethodCodec)
      .setMethodCallHandler((methodCall) async {
        try {
          final args = methodCall.arguments as Map;
          switch (methodCall.method) {
            case 'Callback::BMKLocationManagerDelegate::BMKLocationManager_doRequestAlwaysAuthorization':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: BMKLocationManager_doRequestAlwaysAuthorization([\'manager\':${args['manager']}, \'locationManager\':${args['locationManager']}])');
              }
          
              // handle the native call
              await delegate?.BMKLocationManager_doRequestAlwaysAuthorization(BmapMapFluttifyIOSAs(args['manager']), BmapMapFluttifyIOSAs(args['locationManager']));
              break;
            case 'Callback::BMKLocationManagerDelegate::BMKLocationManager_didFailWithError':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: BMKLocationManager_didFailWithError([\'manager\':${args['manager']}, \'error\':${args['error']}])');
              }
          
              // handle the native call
              await delegate?.BMKLocationManager_didFailWithError(BmapMapFluttifyIOSAs(args['manager']), BmapMapFluttifyIOSAs(args['error']));
              break;
            case 'Callback::BMKLocationManagerDelegate::BMKLocationManager_didUpdateLocation_orError':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: BMKLocationManager_didUpdateLocation_orError([\'manager\':${args['manager']}, \'location\':${args['location']}, \'error\':${args['error']}])');
              }
          
              // handle the native call
              await delegate?.BMKLocationManager_didUpdateLocation_orError(BmapMapFluttifyIOSAs(args['manager']), BmapMapFluttifyIOSAs(args['location']), BmapMapFluttifyIOSAs(args['error']));
              break;
            case 'Callback::BMKLocationManagerDelegate::BMKLocationManager_didChangeAuthorizationStatus':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: BMKLocationManager_didChangeAuthorizationStatus([\'manager\':${args['manager']}, \'status\':${args['status']}])');
              }
          
              // handle the native call
              await delegate?.BMKLocationManager_didChangeAuthorizationStatus(BmapMapFluttifyIOSAs(args['manager']), (args['status'] as int).toCLAuthorizationStatus());
              break;
            case 'Callback::BMKLocationManagerDelegate::BMKLocationManagerShouldDisplayHeadingCalibration':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: BMKLocationManagerShouldDisplayHeadingCalibration([\'manager\':${args['manager']}])');
              }
          
              // handle the native call
              await delegate?.BMKLocationManagerShouldDisplayHeadingCalibration(BmapMapFluttifyIOSAs(args['manager']));
              break;
            case 'Callback::BMKLocationManagerDelegate::BMKLocationManager_didUpdateHeading':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: BMKLocationManager_didUpdateHeading([\'manager\':${args['manager']}, \'heading\':${args['heading']}])');
              }
          
              // handle the native call
              await delegate?.BMKLocationManager_didUpdateHeading(BmapMapFluttifyIOSAs(args['manager']), BmapMapFluttifyIOSAs(args['heading']));
              break;
            case 'Callback::BMKLocationManagerDelegate::BMKLocationManager_didUpdateNetworkState_orError':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: BMKLocationManager_didUpdateNetworkState_orError([\'manager\':${args['manager']}, \'state\':${args['state']}, \'error\':${args['error']}])');
              }
          
              // handle the native call
              await delegate?.BMKLocationManager_didUpdateNetworkState_orError(BmapMapFluttifyIOSAs(args['manager']), (args['state'] as int).toBMKLocationNetworkState(), BmapMapFluttifyIOSAs(args['error']));
              break;
            default:
              throw MissingPluginException('方法${methodCall.method}未实现');
              break;
          }
        } catch (e) {
          debugPrint(e);
          rethrow;
        }
      });
  }
  
  Future<void> set_distanceFilter(double distanceFilter) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_distanceFilter', <String, dynamic>{'__this__': this, "distanceFilter": distanceFilter});
  
  
  }
  
  Future<void> set_desiredAccuracy(double desiredAccuracy) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_desiredAccuracy', <String, dynamic>{'__this__': this, "desiredAccuracy": desiredAccuracy});
  
  
  }
  
  Future<void> set_coordinateType(BMKLocationCoordinateType coordinateType) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_coordinateType', <String, dynamic>{'__this__': this, "coordinateType": coordinateType.toValue()});
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_pausesLocationUpdatesAutomatically', <String, dynamic>{'__this__': this, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_allowsBackgroundLocationUpdates', <String, dynamic>{'__this__': this, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_locationTimeout(int locationTimeout) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_locationTimeout', <String, dynamic>{'__this__': this, "locationTimeout": locationTimeout});
  
  
  }
  
  Future<void> set_reGeocodeTimeout(int reGeocodeTimeout) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_reGeocodeTimeout', <String, dynamic>{'__this__': this, "reGeocodeTimeout": reGeocodeTimeout});
  
  
  }
  
  Future<void> set_locatingWithReGeocode(bool locatingWithReGeocode) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_locatingWithReGeocode', <String, dynamic>{'__this__': this, "locatingWithReGeocode": locatingWithReGeocode});
  
  
  }
  
  Future<void> set_isNeedNewVersionReGeocode(bool isNeedNewVersionReGeocode) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_isNeedNewVersionReGeocode', <String, dynamic>{'__this__': this, "isNeedNewVersionReGeocode": isNeedNewVersionReGeocode});
  
  
  }
  
  Future<void> set_userID(String userID) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_userID', <String, dynamic>{'__this__': this, "userID": userID});
  
  
  }
  
  //endregion

  //region methods
  
  Future<bool> requestLocationWithReGeocode_withNetworkState_completionBlock(bool withReGeocode, bool withNetWorkState, void Function(BMKLocation location, BMKLocationNetworkState state, NSError error) completionBlock) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager@$refId::requestLocationWithReGeocode([\'withReGeocode\':$withReGeocode, \'withNetWorkState\':$withNetWorkState])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::requestLocationWithReGeocode_withNetworkState_completionBlock', {"withReGeocode": withReGeocode, "withNetWorkState": withNetWorkState, "__this__": this});
  
  
    // handle native call
    MethodChannel('BMKLocatingCompletionBlock::Callback@$refId', kBmapMapFluttifyMethodCodec)
        .setMethodCallHandler((methodCall) async {
          try {
            final args = methodCall.arguments as Map;
            switch (methodCall.method) {
              case 'Callback::BMKLocatingCompletionBlock::BMKLocatingCompletionBlock':
                // print log
                if (fluttifyLogEnabled) {
          
                }
          
                // handle the native call
                if (completionBlock != null) await completionBlock(BmapMapFluttifyIOSAs(args['location']), (args['state'] as int).toBMKLocationNetworkState(), BmapMapFluttifyIOSAs(args['error']));
                break;
              default:
                throw MissingPluginException('方法${methodCall.method}未实现');
                break;
            }
          } catch (e) {
            debugPrint(e);
            rethrow;
          }
        });
  
    return __result__;
  }
  
  
  Future<void> startUpdatingLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager@$refId::startUpdatingLocation([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::startUpdatingLocation', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> stopUpdatingLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager@$refId::stopUpdatingLocation([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::stopUpdatingLocation', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> requestNetworkState() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager@$refId::requestNetworkState([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::requestNetworkState', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> headingAvailable() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager::headingAvailable([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::headingAvailable', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> startUpdatingHeading() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager@$refId::startUpdatingHeading([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::startUpdatingHeading', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> stopUpdatingHeading() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager@$refId::stopUpdatingHeading([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::stopUpdatingHeading', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> tryIndoorLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager@$refId::tryIndoorLocation([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::tryIndoorLocation', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> stopIndoorLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager@$refId::stopIndoorLocation([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::stopIndoorLocation', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<CLLocationCoordinate2D> BMKLocationCoordinateConvert_SrcType_DesType(CLLocationCoordinate2D coordinate, BMKLocationCoordinateType srctype, BMKLocationCoordinateType destype) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager::BMKLocationCoordinateConvert([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::BMKLocationCoordinateConvert_SrcType_DesType', {"coordinate": coordinate, "srctype": srctype.toValue(), "destype": destype.toValue()});
  
  
    // handle native call
  
  
    return BmapMapFluttifyIOSAs<CLLocationCoordinate2D>(__result__);
  }
  
  
  static Future<bool> BMKLocationDataAvailableForCoordinate_withCoorType(CLLocationCoordinate2D coordinate, BMKLocationCoordinateType coortype) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocationManager::BMKLocationDataAvailableForCoordinate([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::BMKLocationDataAvailableForCoordinate_withCoorType', {"coordinate": coordinate, "coortype": coortype.toValue()});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'BMKLocationManager{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension BMKLocationManager_Batch on List<BMKLocationManager> {
  //region getters
  Future<List<double>> get_distanceFilter_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_distanceFilter_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<double>> get_desiredAccuracy_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_desiredAccuracy_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<BMKLocationCoordinateType>> get_coordinateType_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_coordinateType_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as int).toBMKLocationCoordinateType())?.cast<BMKLocationCoordinateType>()?.toList();
  }
  
  Future<List<bool>> get_pausesLocationUpdatesAutomatically_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_pausesLocationUpdatesAutomatically_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<bool>> get_allowsBackgroundLocationUpdates_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_allowsBackgroundLocationUpdates_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<int>> get_locationTimeout_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_locationTimeout_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<int>> get_reGeocodeTimeout_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_reGeocodeTimeout_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<bool>> get_locatingWithReGeocode_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_locatingWithReGeocode_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<bool>> get_isNeedNewVersionReGeocode_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_isNeedNewVersionReGeocode_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<String>> get_userID_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocationManager::get_userID_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_distanceFilter_batch(List<double> distanceFilter) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_distanceFilter_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "distanceFilter": distanceFilter[__i__]}]);
  
  
  }
  
  Future<void> set_desiredAccuracy_batch(List<double> desiredAccuracy) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_desiredAccuracy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "desiredAccuracy": desiredAccuracy[__i__]}]);
  
  
  }
  
  Future<void> set_coordinateType_batch(List<BMKLocationCoordinateType> coordinateType) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_coordinateType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "coordinateType": coordinateType[__i__].toValue()}]);
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically_batch(List<bool> pausesLocationUpdatesAutomatically) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_pausesLocationUpdatesAutomatically_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically[__i__]}]);
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates_batch(List<bool> allowsBackgroundLocationUpdates) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_allowsBackgroundLocationUpdates_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates[__i__]}]);
  
  
  }
  
  Future<void> set_locationTimeout_batch(List<int> locationTimeout) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_locationTimeout_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "locationTimeout": locationTimeout[__i__]}]);
  
  
  }
  
  Future<void> set_reGeocodeTimeout_batch(List<int> reGeocodeTimeout) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_reGeocodeTimeout_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "reGeocodeTimeout": reGeocodeTimeout[__i__]}]);
  
  
  }
  
  Future<void> set_locatingWithReGeocode_batch(List<bool> locatingWithReGeocode) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_locatingWithReGeocode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "locatingWithReGeocode": locatingWithReGeocode[__i__]}]);
  
  
  }
  
  Future<void> set_isNeedNewVersionReGeocode_batch(List<bool> isNeedNewVersionReGeocode) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_isNeedNewVersionReGeocode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "isNeedNewVersionReGeocode": isNeedNewVersionReGeocode[__i__]}]);
  
  
  }
  
  Future<void> set_userID_batch(List<String> userID) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::set_userID_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "userID": userID[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<void>> startUpdatingLocation_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::startUpdatingLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> stopUpdatingLocation_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::stopUpdatingLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> requestNetworkState_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::requestNetworkState_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> headingAvailable_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::headingAvailable_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  Future<List<void>> startUpdatingHeading_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::startUpdatingHeading_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> stopUpdatingHeading_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::stopUpdatingHeading_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> tryIndoorLocation_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::tryIndoorLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> stopIndoorLocation_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::stopIndoorLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<CLLocationCoordinate2D>> BMKLocationCoordinateConvert_SrcType_DesType_batch(List<CLLocationCoordinate2D> coordinate, List<BMKLocationCoordinateType> srctype, List<BMKLocationCoordinateType> destype) async {
    assert(coordinate.length == srctype.length && srctype.length == destype.length);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::BMKLocationCoordinateConvert_SrcType_DesType_batch', [for (int __i__ = 0; __i__ < coordinate.length; __i__++) {"coordinate": coordinate[__i__], "srctype": srctype[__i__].toValue(), "destype": destype[__i__].toValue()}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyIOSAs<CLLocationCoordinate2D>(__result__)).cast<CLLocationCoordinate2D>().toList();
  }
  
  
  static Future<List<bool>> BMKLocationDataAvailableForCoordinate_withCoorType_batch(List<CLLocationCoordinate2D> coordinate, List<BMKLocationCoordinateType> coortype) async {
    assert(coordinate.length == coortype.length);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocationManager::BMKLocationDataAvailableForCoordinate_withCoorType_batch', [for (int __i__ = 0; __i__ < coordinate.length; __i__++) {"coordinate": coordinate[__i__], "coortype": coortype[__i__].toValue()}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  //endregion
}