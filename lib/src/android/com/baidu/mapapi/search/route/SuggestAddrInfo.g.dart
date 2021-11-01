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

class com_baidu_mapapi_search_route_SuggestAddrInfo extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.SuggestAddrInfo';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_route_SuggestAddrInfo> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_route_SuggestAddrInfo__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_SuggestAddrInfo>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_route_SuggestAddrInfo>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_route_SuggestAddrInfo__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_SuggestAddrInfo>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_core_PoiInfo>> getSuggestStartNode() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::getSuggestStartNode([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::getSuggestStartNode', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_PoiInfo>(it))?.toList();
  }
  
  
  Future<void> setSuggestStartNode(List<com_baidu_mapapi_search_core_PoiInfo> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::setSuggestStartNode([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestStartNode', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_baidu_mapapi_search_core_PoiInfo>> getSuggestEndNode() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::getSuggestEndNode([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::getSuggestEndNode', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_PoiInfo>(it))?.toList();
  }
  
  
  Future<void> setSuggestEndNode(List<com_baidu_mapapi_search_core_PoiInfo> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::setSuggestEndNode([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestEndNode', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setSuggestWpNode(List<List<com_baidu_mapapi_search_core_PoiInfo>> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::setSuggestWpNode([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestWpNode', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_baidu_mapapi_search_core_CityInfo>> getSuggestStartCity() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::getSuggestStartCity([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::getSuggestStartCity', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_CityInfo>(it))?.toList();
  }
  
  
  Future<void> setSuggestStartCity(List<com_baidu_mapapi_search_core_CityInfo> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::setSuggestStartCity([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestStartCity', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_baidu_mapapi_search_core_CityInfo>> getSuggestEndCity() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::getSuggestEndCity([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::getSuggestEndCity', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_CityInfo>(it))?.toList();
  }
  
  
  Future<void> setSuggestEndCity(List<com_baidu_mapapi_search_core_CityInfo> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::setSuggestEndCity([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestEndCity', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setSuggestWpCity(List<List<com_baidu_mapapi_search_core_CityInfo>> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.SuggestAddrInfo@$refId::setSuggestWpCity([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestWpCity', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_route_SuggestAddrInfo{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_route_SuggestAddrInfo_Batch on List<com_baidu_mapapi_search_route_SuggestAddrInfo> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<List<com_baidu_mapapi_search_core_PoiInfo>>> getSuggestStartNode_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::getSuggestStartNode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_PoiInfo>(it))?.toList()).cast<List<com_baidu_mapapi_search_core_PoiInfo>>().toList();
  }
  
  
  Future<List<void>> setSuggestStartNode_batch(List<List<com_baidu_mapapi_search_core_PoiInfo>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestStartNode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<List<com_baidu_mapapi_search_core_PoiInfo>>> getSuggestEndNode_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::getSuggestEndNode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_PoiInfo>(it))?.toList()).cast<List<com_baidu_mapapi_search_core_PoiInfo>>().toList();
  }
  
  
  Future<List<void>> setSuggestEndNode_batch(List<List<com_baidu_mapapi_search_core_PoiInfo>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestEndNode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setSuggestWpNode_batch(List<List<List<com_baidu_mapapi_search_core_PoiInfo>>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestWpNode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<List<com_baidu_mapapi_search_core_CityInfo>>> getSuggestStartCity_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::getSuggestStartCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_CityInfo>(it))?.toList()).cast<List<com_baidu_mapapi_search_core_CityInfo>>().toList();
  }
  
  
  Future<List<void>> setSuggestStartCity_batch(List<List<com_baidu_mapapi_search_core_CityInfo>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestStartCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<List<com_baidu_mapapi_search_core_CityInfo>>> getSuggestEndCity_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::getSuggestEndCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_CityInfo>(it))?.toList()).cast<List<com_baidu_mapapi_search_core_CityInfo>>().toList();
  }
  
  
  Future<List<void>> setSuggestEndCity_batch(List<List<com_baidu_mapapi_search_core_CityInfo>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestEndCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setSuggestWpCity_batch(List<List<List<com_baidu_mapapi_search_core_CityInfo>>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.SuggestAddrInfo::setSuggestWpCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}