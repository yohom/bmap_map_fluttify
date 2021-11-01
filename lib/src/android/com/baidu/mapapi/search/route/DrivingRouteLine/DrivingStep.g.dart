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

class com_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep extends com_baidu_mapapi_search_core_RouteStep with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<int> getDirection() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getDirection([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getDirection', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setDirection(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setDirection([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setDirection', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_baidu_mapapi_search_core_RouteNode> getEntrance() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getEntrance([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getEntrance', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_RouteNode>(__result__);
  }
  
  
  Future<void> setEntrance(com_baidu_mapapi_search_core_RouteNode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setEntrance([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setEntrance', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_baidu_mapapi_search_core_RouteNode> getExit() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getExit([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getExit', {"__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_RouteNode>(__result__);
  }
  
  
  Future<void> setExit(com_baidu_mapapi_search_core_RouteNode var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setExit([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setExit', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setPathString(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setPathString([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setPathString', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<Int32List> getTrafficList() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getTrafficList([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getTrafficList', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__ as Int32List;
  }
  
  
  Future<void> setPathList(List<com_baidu_mapapi_model_LatLng> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setPathList([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setPathList', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setTrafficList(Int32List var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setTrafficList([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setTrafficList', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getEntranceInstructions() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getEntranceInstructions([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getEntranceInstructions', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setEntranceInstructions(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setEntranceInstructions([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setEntranceInstructions', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getExitInstructions() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getExitInstructions([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getExitInstructions', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setExitInstructions(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setExitInstructions([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setExitInstructions', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getInstructions() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getInstructions([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getInstructions', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setInstructions(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setInstructions([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setInstructions', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<int> getNumTurns() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getNumTurns([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getNumTurns', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setNumTurns(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setNumTurns([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setNumTurns', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<int> getRoadLevel() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::getRoadLevel([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getRoadLevel', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setRoadLevel(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep@$refId::setRoadLevel([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setRoadLevel', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep_Batch on List<com_baidu_mapapi_search_route_DrivingRouteLine_DrivingStep> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<int>> getDirection_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getDirection_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<void>> setDirection_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setDirection_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_core_RouteNode>> getEntrance_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getEntrance_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_RouteNode>(__result__)).cast<com_baidu_mapapi_search_core_RouteNode>().toList();
  }
  
  
  Future<List<void>> setEntrance_batch(List<com_baidu_mapapi_search_core_RouteNode> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setEntrance_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_core_RouteNode>> getExit_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getExit_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_core_RouteNode>(__result__)).cast<com_baidu_mapapi_search_core_RouteNode>().toList();
  }
  
  
  Future<List<void>> setExit_batch(List<com_baidu_mapapi_search_core_RouteNode> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setExit_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setPathString_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setPathString_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<Int32List>> getTrafficList_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getTrafficList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__ as Int32List).cast<Int32List>().toList();
  }
  
  
  Future<List<void>> setPathList_batch(List<List<com_baidu_mapapi_model_LatLng>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setPathList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setTrafficList_batch(List<Int32List> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setTrafficList_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getEntranceInstructions_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getEntranceInstructions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setEntranceInstructions_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setEntranceInstructions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getExitInstructions_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getExitInstructions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setExitInstructions_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setExitInstructions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getInstructions_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getInstructions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setInstructions_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setInstructions_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<int>> getNumTurns_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getNumTurns_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<void>> setNumTurns_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setNumTurns_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<int>> getRoadLevel_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::getRoadLevel_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<void>> setRoadLevel_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.route.DrivingRouteLine.DrivingStep::setRoadLevel_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}