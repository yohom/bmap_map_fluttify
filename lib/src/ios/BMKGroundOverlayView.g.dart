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

class BMKGroundOverlayView extends BMKOverlayView  {
  //region constants
  static const String name__ = 'BMKGroundOverlayView';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<BMKGroundOverlayView> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createBMKGroundOverlayView',
      {'init': init}
    );
    return BmapMapFluttifyIOSAs<BMKGroundOverlayView>(__result__);
  }
  
  static Future<List<BMKGroundOverlayView>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchBMKGroundOverlayView',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyIOSAs<BMKGroundOverlayView>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<BMKGroundOverlay> get_groundOverlay({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKGroundOverlayView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKGroundOverlayView::get_groundOverlay", {'__this__': this});
    return BmapMapFluttifyIOSAs<BMKGroundOverlay>(__result__);
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<dynamic> initWithGroundOverlay(BMKGroundOverlay groundOverlay, {bool viewChannel = true}) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKGroundOverlayView@$refId::initWithGroundOverlay([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKGroundOverlayView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKGroundOverlayView::initWithGroundOverlay', {"groundOverlay": groundOverlay, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'BMKGroundOverlayView{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension BMKGroundOverlayView_Batch on List<BMKGroundOverlayView> {
  //region getters
  Future<List<BMKGroundOverlay>> get_groundOverlay_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKGroundOverlayView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKGroundOverlayView::get_groundOverlay_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => BmapMapFluttifyIOSAs<BMKGroundOverlay>(__result__))?.cast<BMKGroundOverlay>()?.toList();
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<dynamic>> initWithGroundOverlay_batch(List<BMKGroundOverlay> groundOverlay, {bool viewChannel = true}) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKGroundOverlayView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKGroundOverlayView::initWithGroundOverlay_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"groundOverlay": groundOverlay[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<dynamic>().toList();
  }
  
  //endregion
}