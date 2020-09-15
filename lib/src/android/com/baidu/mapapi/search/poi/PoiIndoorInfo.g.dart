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

class com_baidu_mapapi_search_poi_PoiIndoorInfo extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.baidu.mapapi.search.poi.PoiIndoorInfo';

  
  //endregion

  //region creators
  static Future<com_baidu_mapapi_search_poi_PoiIndoorInfo> create__() async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createcom_baidu_mapapi_search_poi_PoiIndoorInfo__', );
    final object = com_baidu_mapapi_search_poi_PoiIndoorInfo()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<com_baidu_mapapi_search_poi_PoiIndoorInfo>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchcom_baidu_mapapi_search_poi_PoiIndoorInfo__', {'length': length});
  
    final List<com_baidu_mapapi_search_poi_PoiIndoorInfo> typedResult = resultBatch.map((result) => com_baidu_mapapi_search_poi_PoiIndoorInfo()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_address() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_address", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_bid() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_bid", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<int> get_cid() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_cid", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<int> get_discount() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_discount", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_floor() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_floor", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_name() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_name", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_phone() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_phone", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<double> get_price() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_price", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<com_baidu_mapapi_model_LatLng> get_latLng() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_latLng", {'__this__': this});
    return __result__ == null ? null : (com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<int> get_starLevel() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_starLevel", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<bool> get_isGroup() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_isGroup", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<bool> get_isTakeOut() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_isTakeOut", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<bool> get_isWaited() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_isWaited", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_uid() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_uid", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<String> get_tag() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_tag", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  Future<int> get_groupNum() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_groupNum", {'__this__': this});
    return __result__ == null ? null : (__result__);
  }
  
  //endregion

  //region setters
  Future<void> set_address(String address) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_address', <String, dynamic>{'__this__': this, "address": address});
  
  
  }
  
  Future<void> set_bid(String bid) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_bid', <String, dynamic>{'__this__': this, "bid": bid});
  
  
  }
  
  Future<void> set_cid(int cid) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_cid', <String, dynamic>{'__this__': this, "cid": cid});
  
  
  }
  
  Future<void> set_discount(int discount) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_discount', <String, dynamic>{'__this__': this, "discount": discount});
  
  
  }
  
  Future<void> set_floor(String floor) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_floor', <String, dynamic>{'__this__': this, "floor": floor});
  
  
  }
  
  Future<void> set_name(String name) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_name', <String, dynamic>{'__this__': this, "name": name});
  
  
  }
  
  Future<void> set_phone(String phone) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_phone', <String, dynamic>{'__this__': this, "phone": phone});
  
  
  }
  
  Future<void> set_price(double price) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_price', <String, dynamic>{'__this__': this, "price": price});
  
  
  }
  
  Future<void> set_latLng(com_baidu_mapapi_model_LatLng latLng) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_latLng', <String, dynamic>{'__this__': this, "latLng": latLng});
  
  
  }
  
  Future<void> set_starLevel(int starLevel) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_starLevel', <String, dynamic>{'__this__': this, "starLevel": starLevel});
  
  
  }
  
  Future<void> set_isGroup(bool isGroup) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_isGroup', <String, dynamic>{'__this__': this, "isGroup": isGroup});
  
  
  }
  
  Future<void> set_isTakeOut(bool isTakeOut) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_isTakeOut', <String, dynamic>{'__this__': this, "isTakeOut": isTakeOut});
  
  
  }
  
  Future<void> set_isWaited(bool isWaited) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_isWaited', <String, dynamic>{'__this__': this, "isWaited": isWaited});
  
  
  }
  
  Future<void> set_uid(String uid) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_uid', <String, dynamic>{'__this__': this, "uid": uid});
  
  
  }
  
  Future<void> set_tag(String tag) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_tag', <String, dynamic>{'__this__': this, "tag": tag});
  
  
  }
  
  Future<void> set_groupNum(int groupNum) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_groupNum', <String, dynamic>{'__this__': this, "groupNum": groupNum});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension com_baidu_mapapi_search_poi_PoiIndoorInfo_Batch on List<com_baidu_mapapi_search_poi_PoiIndoorInfo> {
  //region getters
  Future<List<String>> get_address_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_address_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_bid_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_bid_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<int>> get_cid_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_cid_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<int>> get_discount_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_discount_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_floor_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_floor_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_name_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_name_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_phone_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_phone_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<double>> get_price_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_price_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<com_baidu_mapapi_model_LatLng>> get_latLng_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_latLng_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => com_baidu_mapapi_model_LatLng()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<int>> get_starLevel_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_starLevel_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<bool>> get_isGroup_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_isGroup_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<bool>> get_isTakeOut_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_isTakeOut_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<bool>> get_isWaited_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_isWaited_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_uid_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_uid_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<String>> get_tag_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_tag_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  Future<List<int>> get_groupNum_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("com.baidu.mapapi.search.poi.PoiIndoorInfo::get_groupNum_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_address_batch(List<String> address) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_address_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "address": address[__i__]}]);
  
  
  }
  
  Future<void> set_bid_batch(List<String> bid) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_bid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "bid": bid[__i__]}]);
  
  
  }
  
  Future<void> set_cid_batch(List<int> cid) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_cid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "cid": cid[__i__]}]);
  
  
  }
  
  Future<void> set_discount_batch(List<int> discount) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_discount_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "discount": discount[__i__]}]);
  
  
  }
  
  Future<void> set_floor_batch(List<String> floor) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_floor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "floor": floor[__i__]}]);
  
  
  }
  
  Future<void> set_name_batch(List<String> name) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_name_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "name": name[__i__]}]);
  
  
  }
  
  Future<void> set_phone_batch(List<String> phone) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_phone_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "phone": phone[__i__]}]);
  
  
  }
  
  Future<void> set_price_batch(List<double> price) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_price_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "price": price[__i__]}]);
  
  
  }
  
  Future<void> set_latLng_batch(List<com_baidu_mapapi_model_LatLng> latLng) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_latLng_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "latLng": latLng[__i__]}]);
  
  
  }
  
  Future<void> set_starLevel_batch(List<int> starLevel) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_starLevel_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "starLevel": starLevel[__i__]}]);
  
  
  }
  
  Future<void> set_isGroup_batch(List<bool> isGroup) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_isGroup_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "isGroup": isGroup[__i__]}]);
  
  
  }
  
  Future<void> set_isTakeOut_batch(List<bool> isTakeOut) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_isTakeOut_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "isTakeOut": isTakeOut[__i__]}]);
  
  
  }
  
  Future<void> set_isWaited_batch(List<bool> isWaited) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_isWaited_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "isWaited": isWaited[__i__]}]);
  
  
  }
  
  Future<void> set_uid_batch(List<String> uid) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_uid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "uid": uid[__i__]}]);
  
  
  }
  
  Future<void> set_tag_batch(List<String> tag) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_tag_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "tag": tag[__i__]}]);
  
  
  }
  
  Future<void> set_groupNum_batch(List<int> groupNum) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('com.baidu.mapapi.search.poi.PoiIndoorInfo::set_groupNum_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "groupNum": groupNum[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}