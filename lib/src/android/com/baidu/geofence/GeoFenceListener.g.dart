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



mixin com_baidu_geofence_GeoFenceListener on java_lang_Object {
  

  

  

  

  @mustCallSuper
  Future<void> onGeoFenceCreateFinished(List<com_baidu_geofence_GeoFence> var1, int var2, String var3) {
    kNativeObjectPool.addAll(var1);
  
    if (fluttifyLogEnabled) {
      debugPrint('onGeoFenceCreateFinished::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
}
