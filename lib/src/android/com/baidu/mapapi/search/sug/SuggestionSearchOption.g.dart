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

class com_baidu_mapapi_search_sug_SuggestionSearchOption extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.sug.SuggestionSearchOption';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_sug_SuggestionSearchOption> create__() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_baidu_mapapi_search_sug_SuggestionSearchOption__',
    
    );
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__);
  }
  
  static Future<List<com_baidu_mapapi_search_sug_SuggestionSearchOption>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_baidu_mapapi_search_sug_SuggestionSearchOption__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<String> get_mCity() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.sug.SuggestionSearchOption::get_mCity", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_mKeyword() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.sug.SuggestionSearchOption::get_mKeyword", {'__this__': this});
    return __result__;
  }
  
  Future<com_baidu_mapapi_model_LatLng> get_mLocation() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.sug.SuggestionSearchOption::get_mLocation", {'__this__': this});
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(__result__);
  }
  
  Future<bool> get_mCityLimit() async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.sug.SuggestionSearchOption::get_mCityLimit", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_mCity(String mCity) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::set_mCity', <String, dynamic>{'__this__': this, "mCity": mCity});
  
  
  }
  
  Future<void> set_mKeyword(String mKeyword) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::set_mKeyword', <String, dynamic>{'__this__': this, "mKeyword": mKeyword});
  
  
  }
  
  Future<void> set_mLocation(com_baidu_mapapi_model_LatLng mLocation) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::set_mLocation', <String, dynamic>{'__this__': this, "mLocation": mLocation});
  
  
  }
  
  Future<void> set_mCityLimit(bool mCityLimit) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::set_mCityLimit', <String, dynamic>{'__this__': this, "mCityLimit": mCityLimit});
  
  
  }
  
  //endregion

  //region methods
  
  Future<com_baidu_mapapi_search_sug_SuggestionSearchOption> city(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.sug.SuggestionSearchOption@$refId::city([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::city', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_search_sug_SuggestionSearchOption> keyword(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.sug.SuggestionSearchOption@$refId::keyword([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::keyword', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_search_sug_SuggestionSearchOption> location(com_baidu_mapapi_model_LatLng var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.sug.SuggestionSearchOption@$refId::location([])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::location', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__);
  }
  
  
  Future<com_baidu_mapapi_search_sug_SuggestionSearchOption> citylimit(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.baidu.mapapi.search.sug.SuggestionSearchOption@$refId::citylimit([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::citylimit', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__);
  }
  
  //endregion

  @override
  String toString() {
    return 'com_baidu_mapapi_search_sug_SuggestionSearchOption{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_baidu_mapapi_search_sug_SuggestionSearchOption_Batch on List<com_baidu_mapapi_search_sug_SuggestionSearchOption> {
  //region getters
  Future<List<String>> get_mCity_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.sug.SuggestionSearchOption::get_mCity_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<String>> get_mKeyword_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.sug.SuggestionSearchOption::get_mKeyword_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  Future<List<com_baidu_mapapi_model_LatLng>> get_mLocation_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.sug.SuggestionSearchOption::get_mLocation_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_model_LatLng>(__result__))?.cast<com_baidu_mapapi_model_LatLng>()?.toList();
  }
  
  Future<List<bool>> get_mCityLimit_batch() async {
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod("com.baidu.mapapi.search.sug.SuggestionSearchOption::get_mCityLimit_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_mCity_batch(List<String> mCity) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::set_mCity_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mCity": mCity[__i__]}]);
  
  
  }
  
  Future<void> set_mKeyword_batch(List<String> mKeyword) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::set_mKeyword_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mKeyword": mKeyword[__i__]}]);
  
  
  }
  
  Future<void> set_mLocation_batch(List<com_baidu_mapapi_model_LatLng> mLocation) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::set_mLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mLocation": mLocation[__i__]}]);
  
  
  }
  
  Future<void> set_mCityLimit_batch(List<bool> mCityLimit) async {
    await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::set_mCityLimit_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "mCityLimit": mCityLimit[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<com_baidu_mapapi_search_sug_SuggestionSearchOption>> city_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__)).cast<com_baidu_mapapi_search_sug_SuggestionSearchOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_sug_SuggestionSearchOption>> keyword_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::keyword_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__)).cast<com_baidu_mapapi_search_sug_SuggestionSearchOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_sug_SuggestionSearchOption>> location_batch(List<com_baidu_mapapi_model_LatLng> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::location_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__)).cast<com_baidu_mapapi_search_sug_SuggestionSearchOption>().toList();
  }
  
  
  Future<List<com_baidu_mapapi_search_sug_SuggestionSearchOption>> citylimit_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kBmapMapFluttifyChannel.invokeMethod('com.baidu.mapapi.search.sug.SuggestionSearchOption::citylimit_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => BmapMapFluttifyAndroidAs<com_baidu_mapapi_search_sug_SuggestionSearchOption>(__result__)).cast<com_baidu_mapapi_search_sug_SuggestionSearchOption>().toList();
  }
  
  //endregion
}