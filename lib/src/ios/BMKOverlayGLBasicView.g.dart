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

class BMKOverlayGLBasicView extends BMKOverlayView  {
  //region constants
  static const String name__ = 'BMKOverlayGLBasicView';

  @override
  final String tag__ = 'bmap_map_fluttify';

  
  //endregion

  //region creators
  static Future<BMKOverlayGLBasicView> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kBmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createBMKOverlayGLBasicView',
      {'init': init}
    );
    return BmapMapFluttifyIOSAs<BMKOverlayGLBasicView>(__result__);
  }
  
  static Future<List<BMKOverlayGLBasicView>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kBmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchBMKOverlayGLBasicView',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => BmapMapFluttifyIOSAs<BMKOverlayGLBasicView>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<UIColor> get_fillColor({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_fillColor", {'__this__': this});
    return BmapMapFluttifyIOSAs<UIColor>(__result__);
  }
  
  Future<UIColor> get_strokeColor({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_strokeColor", {'__this__': this});
    return BmapMapFluttifyIOSAs<UIColor>(__result__);
  }
  
  Future<double> get_lineWidth({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineWidth", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_lineDash({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineDash", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_tileTexture({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_tileTexture", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_keepScale({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_keepScale", {'__this__': this});
    return __result__;
  }
  
  Future<BMKLineJoinType> get_lineJoinType({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineJoinType", {'__this__': this});
    return (__result__ as int).toBMKLineJoinType();
  }
  
  Future<BMKLineCapType> get_lineCapType({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineCapType", {'__this__': this});
    return (__result__ as int).toBMKLineCapType();
  }
  
  Future<BMKLineDashType> get_lineDashType({bool viewChannel = true}) async {
    final __result__ = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineDashType", {'__this__': this});
    return (__result__ as int).toBMKLineDashType();
  }
  
  //endregion

  //region setters
  Future<void> set_fillColor(UIColor fillColor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_fillColor', <String, dynamic>{'__this__': this, "fillColor": fillColor});
  
  
  }
  
  Future<void> set_strokeColor(UIColor strokeColor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_strokeColor', <String, dynamic>{'__this__': this, "strokeColor": strokeColor});
  
  
  }
  
  Future<void> set_lineWidth(double lineWidth, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineWidth', <String, dynamic>{'__this__': this, "lineWidth": lineWidth});
  
  
  }
  
  Future<void> set_lineDash(bool lineDash, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineDash', <String, dynamic>{'__this__': this, "lineDash": lineDash});
  
  
  }
  
  Future<void> set_tileTexture(bool tileTexture, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_tileTexture', <String, dynamic>{'__this__': this, "tileTexture": tileTexture});
  
  
  }
  
  Future<void> set_keepScale(bool keepScale, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_keepScale', <String, dynamic>{'__this__': this, "keepScale": keepScale});
  
  
  }
  
  Future<void> set_lineJoinType(BMKLineJoinType lineJoinType, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineJoinType', <String, dynamic>{'__this__': this, "lineJoinType": lineJoinType.toValue()});
  
  
  }
  
  Future<void> set_lineCapType(BMKLineCapType lineCapType, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineCapType', <String, dynamic>{'__this__': this, "lineCapType": lineCapType.toValue()});
  
  
  }
  
  Future<void> set_lineDashType(BMKLineDashType lineDashType, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineDashType', <String, dynamic>{'__this__': this, "lineDashType": lineDashType.toValue()});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'BMKOverlayGLBasicView{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension BMKOverlayGLBasicView_Batch on List<BMKOverlayGLBasicView> {
  //region getters
  Future<List<UIColor>> get_fillColor_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_fillColor_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => BmapMapFluttifyIOSAs<UIColor>(__result__))?.cast<UIColor>()?.toList();
  }
  
  Future<List<UIColor>> get_strokeColor_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_strokeColor_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => BmapMapFluttifyIOSAs<UIColor>(__result__))?.cast<UIColor>()?.toList();
  }
  
  Future<List<double>> get_lineWidth_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineWidth_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<bool>> get_lineDash_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineDash_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<bool>> get_tileTexture_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_tileTexture_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<bool>> get_keepScale_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_keepScale_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<BMKLineJoinType>> get_lineJoinType_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineJoinType_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as int).toBMKLineJoinType())?.cast<BMKLineJoinType>()?.toList();
  }
  
  Future<List<BMKLineCapType>> get_lineCapType_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineCapType_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as int).toBMKLineCapType())?.cast<BMKLineCapType>()?.toList();
  }
  
  Future<List<BMKLineDashType>> get_lineDashType_batch({bool viewChannel = true}) async {
    final resultBatch = await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod("BMKOverlayGLBasicView::get_lineDashType_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as int).toBMKLineDashType())?.cast<BMKLineDashType>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_fillColor_batch(List<UIColor> fillColor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_fillColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "fillColor": fillColor[__i__]}]);
  
  
  }
  
  Future<void> set_strokeColor_batch(List<UIColor> strokeColor, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_strokeColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "strokeColor": strokeColor[__i__]}]);
  
  
  }
  
  Future<void> set_lineWidth_batch(List<double> lineWidth, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineWidth_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "lineWidth": lineWidth[__i__]}]);
  
  
  }
  
  Future<void> set_lineDash_batch(List<bool> lineDash, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineDash_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "lineDash": lineDash[__i__]}]);
  
  
  }
  
  Future<void> set_tileTexture_batch(List<bool> tileTexture, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_tileTexture_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "tileTexture": tileTexture[__i__]}]);
  
  
  }
  
  Future<void> set_keepScale_batch(List<bool> keepScale, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_keepScale_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "keepScale": keepScale[__i__]}]);
  
  
  }
  
  Future<void> set_lineJoinType_batch(List<BMKLineJoinType> lineJoinType, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineJoinType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "lineJoinType": lineJoinType[__i__].toValue()}]);
  
  
  }
  
  Future<void> set_lineCapType_batch(List<BMKLineCapType> lineCapType, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineCapType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "lineCapType": lineCapType[__i__].toValue()}]);
  
  
  }
  
  Future<void> set_lineDashType_batch(List<BMKLineDashType> lineDashType, {bool viewChannel = true}) async {
    await MethodChannel(viewChannel ? 'me.yohom/bmap_map_fluttify/BMKOverlayGLBasicView' : 'me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec).invokeMethod('BMKOverlayGLBasicView::set_lineDashType_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "lineDashType": lineDashType[__i__].toValue()}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}