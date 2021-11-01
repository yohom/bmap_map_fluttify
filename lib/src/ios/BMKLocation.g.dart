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

class BMKLocation extends NSObject  {
  //region constants
  static const String name__ = 'BMKLocation';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<BMKLocation> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createBMKLocation',
      {'init': init}
    );
    return BmapMapFluttifyIOSAs<BMKLocation>(__result__);
  }
  
  static Future<List<BMKLocation>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchBMKLocation',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyIOSAs<BMKLocation>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<CLLocation> get_location() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_location", {'__this__': this});
    return BmapMapFluttifyIOSAs<CLLocation>(__result__);
  }
  
  Future<BMKLocationReGeocode> get_rgcData() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_rgcData", {'__this__': this});
    return BmapMapFluttifyIOSAs<BMKLocationReGeocode>(__result__);
  }
  
  Future<BMKLocationProvider> get_provider() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_provider", {'__this__': this});
    return (__result__ as int).toBMKLocationProvider();
  }
  
  Future<String> get_locationID() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_locationID", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_floorString() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_floorString", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_buildingID() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_buildingID", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_buildingName() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_buildingName", {'__this__': this});
    return __result__;
  }
  
  Future<Map> get_extraInfo() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_extraInfo", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_rgcData(BMKLocationReGeocode rgcData) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::set_rgcData', <String, dynamic>{'__this__': this, "rgcData": rgcData});
  
  
  }
  
  Future<void> set_provider(BMKLocationProvider provider) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::set_provider', <String, dynamic>{'__this__': this, "provider": provider.toValue()});
  
  
  }
  
  Future<void> set_locationID(String locationID) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::set_locationID', <String, dynamic>{'__this__': this, "locationID": locationID});
  
  
  }
  
  //endregion

  //region methods
  
  Future<dynamic> initWithLocation_withRgcData(CLLocation loc, BMKLocationReGeocode rgc) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocation@$refId::initWithLocation([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::initWithLocation_withRgcData', {"loc": loc, "rgc": rgc, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<dynamic> initWithLocation_floorString_buildingID_buildingName_extraInfo_withRgcData(CLLocation location, String floorString, String buildingID, String buildingName, Map info, BMKLocationReGeocode rgc) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKLocation@$refId::initWithLocation([\'floorString\':$floorString, \'buildingID\':$buildingID, \'buildingName\':$buildingName, \'info\':$info])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::initWithLocation_floorString_buildingID_buildingName_extraInfo_withRgcData', {"location": location, "floorString": floorString, "buildingID": buildingID, "buildingName": buildingName, "info": info, "rgc": rgc, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'BMKLocation{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension BMKLocation_Batch on List<BMKLocation> {
  //region getters
  Future<List<CLLocation>> get_location_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_location_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => BmapMapFluttifyIOSAs<CLLocation>(__result__))?.cast<CLLocation>()?.toList();
  }
  
  Future<List<BMKLocationReGeocode>> get_rgcData_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_rgcData_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => BmapMapFluttifyIOSAs<BMKLocationReGeocode>(__result__))?.cast<BMKLocationReGeocode>()?.toList();
  }
  
  Future<List<BMKLocationProvider>> get_provider_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_provider_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as int).toBMKLocationProvider())?.cast<BMKLocationProvider>()?.toList();
  }
  
  Future<List<String>> get_locationID_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_locationID_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_floorString_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_floorString_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_buildingID_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_buildingID_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_buildingName_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_buildingName_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<Map>> get_extraInfo_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("BMKLocation::get_extraInfo_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<Map>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_rgcData_batch(List<BMKLocationReGeocode> rgcData) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::set_rgcData_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "rgcData": rgcData[__i__]}]);
  
  
  }
  
  Future<void> set_provider_batch(List<BMKLocationProvider> provider) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::set_provider_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "provider": provider[__i__].toValue()}]);
  
  
  }
  
  Future<void> set_locationID_batch(List<String> locationID) async {
    await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::set_locationID_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "locationID": locationID[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<dynamic>> initWithLocation_withRgcData_batch(List<CLLocation> loc, List<BMKLocationReGeocode> rgc) async {
    assert(loc.length == rgc.length);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::initWithLocation_withRgcData_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"loc": loc[__i__], "rgc": rgc[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<dynamic>().toList();
  }
  
  
  Future<List<dynamic>> initWithLocation_floorString_buildingID_buildingName_extraInfo_withRgcData_batch(List<CLLocation> location, List<String> floorString, List<String> buildingID, List<String> buildingName, List<Map> info, List<BMKLocationReGeocode> rgc) async {
    assert(location.length == floorString.length && floorString.length == buildingID.length && buildingID.length == buildingName.length && buildingName.length == info.length && info.length == rgc.length);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('BMKLocation::initWithLocation_floorString_buildingID_buildingName_extraInfo_withRgcData_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"location": location[__i__], "floorString": floorString[__i__], "buildingID": buildingID[__i__], "buildingName": buildingName[__i__], "info": info[__i__], "rgc": rgc[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<dynamic>().toList();
  }
  
  //endregion
}