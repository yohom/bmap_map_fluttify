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

class com_baidu_mapapi_cloud_CloudManager extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.cloud.CloudManager';

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
  
  static Future<com_baidu_mapapi_cloud_CloudManager> getInstance() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager::getInstance([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::getInstance', );
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_cloud_CloudManager>(__result__);
  }
  
  
  Future<void> init__com_baidu_mapapi_cloud_CloudListener(com_baidu_mapapi_cloud_CloudListener var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::init([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::init__com_baidu_mapapi_cloud_CloudListener', {"var1": var1, "__this__": this});
  
  
    // handle native call
    MethodChannel('com.baidu.mapapi.cloud.CloudManager::init__com_baidu_mapapi_cloud_CloudListener::Callback@$refId', kBmapMapFluttifyMethodCodec)
        .setMethodCallHandler((methodCall) async {
          try {
            final args = methodCall.arguments as Map;
            switch (methodCall.method) {
              case 'Callback::com.baidu.mapapi.cloud.CloudListener::onGetSearchResult':
                // print log
                if (fluttifyLogEnabled) {
                  debugPrint('fluttify-dart-callback: onGetSearchResult([\'var1\':${args['var1']}, \'var2\':${args['var2']}])');
                }
          
                // handle the native call
                await var1?.onGetSearchResult(BmapMapFluttifyAndroidAs(args['var1']), args['var2']);
                break;
              case 'Callback::com.baidu.mapapi.cloud.CloudListener::onGetDetailSearchResult':
                // print log
                if (fluttifyLogEnabled) {
                  debugPrint('fluttify-dart-callback: onGetDetailSearchResult([\'var1\':${args['var1']}, \'var2\':${args['var2']}])');
                }
          
                // handle the native call
                await var1?.onGetDetailSearchResult(BmapMapFluttifyAndroidAs(args['var1']), args['var2']);
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
  
  
  Future<void> init() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::init([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::init', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> registerListener(com_baidu_mapapi_cloud_CloudListener var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::registerListener([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::registerListener', {"var1": var1, "__this__": this});
  
  
    // handle native call
    MethodChannel('com.baidu.mapapi.cloud.CloudManager::registerListener::Callback@$refId', kBmapMapFluttifyMethodCodec)
        .setMethodCallHandler((methodCall) async {
          try {
            final args = methodCall.arguments as Map;
            switch (methodCall.method) {
              case 'Callback::com.baidu.mapapi.cloud.CloudListener::onGetSearchResult':
                // print log
                if (fluttifyLogEnabled) {
                  debugPrint('fluttify-dart-callback: onGetSearchResult([\'var1\':${args['var1']}, \'var2\':${args['var2']}])');
                }
          
                // handle the native call
                await var1?.onGetSearchResult(BmapMapFluttifyAndroidAs(args['var1']), args['var2']);
                break;
              case 'Callback::com.baidu.mapapi.cloud.CloudListener::onGetDetailSearchResult':
                // print log
                if (fluttifyLogEnabled) {
                  debugPrint('fluttify-dart-callback: onGetDetailSearchResult([\'var1\':${args['var1']}, \'var2\':${args['var2']}])');
                }
          
                // handle the native call
                await var1?.onGetDetailSearchResult(BmapMapFluttifyAndroidAs(args['var1']), args['var2']);
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
  
  
  Future<void> unregisterListener() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::unregisterListener([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::unregisterListener', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> destroy() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::destroy([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::destroy', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<bool> localSearch(com_baidu_mapapi_cloud_LocalSearchInfo var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::localSearch([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::localSearch', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<bool> nearbySearch(com_baidu_mapapi_cloud_NearbySearchInfo var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::nearbySearch([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::nearbySearch', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<bool> boundSearch(com_baidu_mapapi_cloud_BoundSearchInfo var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::boundSearch([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::boundSearch', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<bool> detailSearch(com_baidu_mapapi_cloud_DetailSearchInfo var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::detailSearch([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::detailSearch', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<bool> rgcSearch(com_baidu_mapapi_cloud_CloudRgcInfo var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.cloud.CloudManager@$refId::rgcSearch([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::rgcSearch', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_cloud_CloudManager{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_cloud_CloudManager_Batch on List<com_baidu_mapapi_cloud_CloudManager> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<com_baidu_mapapi_cloud_CloudManager>> getInstance_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::getInstance_batch', );
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_cloud_CloudManager>(__result__)).cast<com_baidu_mapapi_cloud_CloudManager>().toList();
  }
  
  
  Future<List<void>> init_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::init_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> unregisterListener_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::unregisterListener_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> destroy_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::destroy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<bool>> localSearch_batch(List<com_baidu_mapapi_cloud_LocalSearchInfo> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::localSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  Future<List<bool>> nearbySearch_batch(List<com_baidu_mapapi_cloud_NearbySearchInfo> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::nearbySearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  Future<List<bool>> boundSearch_batch(List<com_baidu_mapapi_cloud_BoundSearchInfo> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::boundSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  Future<List<bool>> detailSearch_batch(List<com_baidu_mapapi_cloud_DetailSearchInfo> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::detailSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  Future<List<bool>> rgcSearch_batch(List<com_baidu_mapapi_cloud_CloudRgcInfo> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.cloud.CloudManager::rgcSearch_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  //endregion
}