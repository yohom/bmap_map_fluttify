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

class com_baidu_mapapi_search_geocode_ReverseGeoCodeResult extends com_baidu_mapapi_search_core_SearchResult with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.geocode.ReverseGeoCodeResult';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_geocode_ReverseGeoCodeResult__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_geocode_ReverseGeoCodeResult__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<String> getBusinessCircle() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getBusinessCircle([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getBusinessCircle', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setBusinessCircle(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setBusinessCircle([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setBusinessCircle', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<int> getCityCode() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getCityCode([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getCityCode', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setCityCode(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setCityCode([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setCityCode', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getAddress() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getAddress([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getAddress', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setAddress(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setAddress([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setAddress', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_AddressComponent> getAddressDetail() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getAddressDetail([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getAddressDetail', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_AddressComponent>(__result__);
  }
  
  
  Future<void> setAddressDetail(com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_AddressComponent var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setAddressDetail([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setAddressDetail', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<int> getAdcode() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getAdcode([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getAdcode', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setAdcode(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setAdcode([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setAdcode', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_baidu_mapapi_model_LatLng> getLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getLocation([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getLocation', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(__result__);
  }
  
  
  Future<void> setLocation(com_baidu_mapapi_model_LatLng var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setLocation([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setLocation', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_baidu_mapapi_search_core_PoiInfo>> getPoiList() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getPoiList([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getPoiList', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_PoiInfo>(it))?.toList();
  }
  
  
  Future<void> setPoiList(List<com_baidu_mapapi_search_core_PoiInfo> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setPoiList([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setPoiList', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getSematicDescription() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getSematicDescription([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getSematicDescription', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setSematicDescription(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setSematicDescription([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setSematicDescription', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>> getPoiRegionsInfoList() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::getPoiRegionsInfoList([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getPoiRegionsInfoList', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>(it))?.toList();
  }
  
  
  Future<void> setPoiRegionsInfoList(List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.geocode.ReverseGeoCodeResult@$refId::setPoiRegionsInfoList([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setPoiRegionsInfoList', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_geocode_ReverseGeoCodeResult{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_Batch on List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<String>> getBusinessCircle_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getBusinessCircle_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setBusinessCircle_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setBusinessCircle_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<int>> getCityCode_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getCityCode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<void>> setCityCode_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setCityCode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getAddress_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getAddress_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setAddress_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setAddress_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_AddressComponent>> getAddressDetail_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getAddressDetail_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_AddressComponent>(__result__)).cast<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_AddressComponent>().toList();
  }
  
  
  Future<List<void>> setAddressDetail_batch(List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_AddressComponent> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setAddressDetail_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<int>> getAdcode_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getAdcode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<void>> setAdcode_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setAdcode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_model_LatLng>> getLocation_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(__result__)).cast<com_baidu_mapapi_model_LatLng>().toList();
  }
  
  
  Future<List<void>> setLocation_batch(List<com_baidu_mapapi_model_LatLng> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<List<com_baidu_mapapi_search_core_PoiInfo>>> getPoiList_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getPoiList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_PoiInfo>(it))?.toList()).cast<List<com_baidu_mapapi_search_core_PoiInfo>>().toList();
  }
  
  
  Future<List<void>> setPoiList_batch(List<List<com_baidu_mapapi_search_core_PoiInfo>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setPoiList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getSematicDescription_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getSematicDescription_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setSematicDescription_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setSematicDescription_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>>> getPoiRegionsInfoList_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::getPoiRegionsInfoList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>(it))?.toList()).cast<List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>>().toList();
  }
  
  
  Future<List<void>> setPoiRegionsInfoList_batch(List<List<com_baidu_mapapi_search_geocode_ReverseGeoCodeResult_PoiRegionsInfo>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.geocode.ReverseGeoCodeResult::setPoiRegionsInfoList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}