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

class BMKGroundOverlay extends BMKMultiPoint with BMKOverlay, BMKAnnotation {
  //region constants
  static const String name__ = 'BMKGroundOverlay';

  
  //endregion

  //region creators
  static Future<BMKGroundOverlay> create__() async {
    final int refId = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::createBMKGroundOverlay');
    final object = BMKGroundOverlay()..refId = refId..tag__ = 'bmap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<BMKGroundOverlay>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('ObjectFactory::create_batchBMKGroundOverlay', {'length': length});
  
    final List<BMKGroundOverlay> typedResult = resultBatch.map((result) => BMKGroundOverlay()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<CLLocationCoordinate2D> get_pt() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKGroundOverlay::get_pt", {'refId': refId});
    kNativeObjectPool.add(CLLocationCoordinate2D()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return CLLocationCoordinate2D()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<CGPoint> get_anchor() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKGroundOverlay::get_anchor", {'refId': refId});
    kNativeObjectPool.add(CGPoint()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return CGPoint()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<BMKCoordinateBounds> get_bound() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKGroundOverlay::get_bound", {'refId': refId});
    kNativeObjectPool.add(BMKCoordinateBounds()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return BMKCoordinateBounds()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  Future<UIImage> get_icon() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKGroundOverlay::get_icon", {'refId': refId});
    kNativeObjectPool.add(UIImage()..refId = __result__..tag__ = 'bmap_map_fluttify');
    return UIImage()..refId = __result__..tag__ = 'bmap_map_fluttify';
  }
  
  //endregion

  //region setters
  Future<void> set_pt(CLLocationCoordinate2D pt) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::set_pt', {'refId': refId, "pt": pt.refId});
  
  
  }
  
  Future<void> set_anchor(CGPoint anchor) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::set_anchor', {'refId': refId, "anchor": anchor.refId});
  
  
  }
  
  Future<void> set_bound(BMKCoordinateBounds bound) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::set_bound', {'refId': refId, "bound": bound.refId});
  
  
  }
  
  Future<void> set_icon(UIImage icon) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::set_icon', {'refId': refId, "icon": icon.refId});
  
  
  }
  
  //endregion

  //region methods
  
  static Future<BMKGroundOverlay> groundOverlayWithPosition_zoomLevel_anchor_icon(CLLocationCoordinate2D position, double zoomLevel, CGPoint anchor, UIImage icon) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKGroundOverlay::groundOverlayWithPosition([\'zoomLevel\':$zoomLevel])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::groundOverlayWithPosition_zoomLevel_anchor_icon', {"position": position?.refId, "zoomLevel": zoomLevel, "anchor": anchor?.refId, "icon": icon?.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = BMKGroundOverlay()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  static Future<BMKGroundOverlay> groundOverlayWithBounds_icon(BMKCoordinateBounds bounds, UIImage icon) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKGroundOverlay::groundOverlayWithBounds([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::groundOverlayWithBounds_icon', {"bounds": bounds?.refId, "icon": icon?.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = BMKGroundOverlay()..refId = __result__..tag__ = 'bmap_map_fluttify';
      if (__return__ is Ref) kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  //endregion
}

extension BMKGroundOverlay_Batch on List<BMKGroundOverlay> {
  //region getters
  Future<List<CLLocationCoordinate2D>> get_pt_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKGroundOverlay::get_pt_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => CLLocationCoordinate2D()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<CGPoint>> get_anchor_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKGroundOverlay::get_anchor_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => CGPoint()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<BMKCoordinateBounds>> get_bound_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKGroundOverlay::get_bound_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKCoordinateBounds()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<UIImage>> get_icon_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod("BMKGroundOverlay::get_icon_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => UIImage()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_pt_batch(List<CLLocationCoordinate2D> pt) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::set_pt_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "pt": pt[__i__].refId}]);
  
  
  }
  
  Future<void> set_anchor_batch(List<CGPoint> anchor) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::set_anchor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "anchor": anchor[__i__].refId}]);
  
  
  }
  
  Future<void> set_bound_batch(List<BMKCoordinateBounds> bound) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::set_bound_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "bound": bound[__i__].refId}]);
  
  
  }
  
  Future<void> set_icon_batch(List<UIImage> icon) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::set_icon_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "icon": icon[__i__].refId}]);
  
  
  }
  
  //endregion

  //region methods
  
  static Future<List<BMKGroundOverlay>> groundOverlayWithPosition_zoomLevel_anchor_icon_batch(List<CLLocationCoordinate2D> position, List<double> zoomLevel, List<CGPoint> anchor, List<UIImage> icon) async {
    if (position.length != zoomLevel.length || zoomLevel.length != anchor.length || anchor.length != icon.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::groundOverlayWithPosition_zoomLevel_anchor_icon_batch', [for (int __i__ = 0; __i__ < position.length; __i__++) {"position": position[__i__].refId, "zoomLevel": zoomLevel[__i__], "anchor": anchor[__i__].refId, "icon": icon[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKGroundOverlay()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  
  static Future<List<BMKGroundOverlay>> groundOverlayWithBounds_icon_batch(List<BMKCoordinateBounds> bounds, List<UIImage> icon) async {
    if (bounds.length != icon.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify').invokeMethod('BMKGroundOverlay::groundOverlayWithBounds_icon_batch', [for (int __i__ = 0; __i__ < bounds.length; __i__++) {"bounds": bounds[__i__].refId, "icon": icon[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => BMKGroundOverlay()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      kNativeObjectPool.addAll(typedResult);
      return typedResult;
    }
  }
  
  //endregion
}