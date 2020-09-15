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
  static Future<BMKGroundOverlay> create__({ bool init = true /* ios only */ }) async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createBMKGroundOverlay', {'init': init});
    final object = BMKGroundOverlay()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<BMKGroundOverlay>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchBMKGroundOverlay', {'length': length, 'init': init});
  
    final List<BMKGroundOverlay> typedResult = resultBatch.map((result) => BMKGroundOverlay()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<CLLocationCoordinate2D> get_pt() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGroundOverlay::get_pt", {'__this__': this});
    return __result__ == null ? null : (CLLocationCoordinate2D()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<CGPoint> get_anchor() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGroundOverlay::get_anchor", {'__this__': this});
    return __result__ == null ? null : (CGPoint()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<BMKCoordinateBounds> get_bound() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGroundOverlay::get_bound", {'__this__': this});
    return __result__ == null ? null : (BMKCoordinateBounds()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  Future<UIImage> get_icon() async {
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGroundOverlay::get_icon", {'__this__': this});
    return __result__ == null ? null : (UIImage()..refId = __result__..tag__ = 'bmap_map_fluttify');
  }
  
  //endregion

  //region setters
  Future<void> set_pt(CLLocationCoordinate2D pt) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGroundOverlay::set_pt', <String, dynamic>{'__this__': this, "pt": pt});
  
  
  }
  
  Future<void> set_anchor(CGPoint anchor) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGroundOverlay::set_anchor', <String, dynamic>{'__this__': this, "anchor": anchor});
  
  
  }
  
  Future<void> set_bound(BMKCoordinateBounds bound) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGroundOverlay::set_bound', <String, dynamic>{'__this__': this, "bound": bound});
  
  
  }
  
  Future<void> set_icon(UIImage icon) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGroundOverlay::set_icon', <String, dynamic>{'__this__': this, "icon": icon});
  
  
  }
  
  //endregion

  //region methods
  
  static Future<BMKGroundOverlay> groundOverlayWithPosition_zoomLevel_anchor_icon(CLLocationCoordinate2D position, double zoomLevel, CGPoint anchor, UIImage icon) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKGroundOverlay::groundOverlayWithPosition([\'zoomLevel\':$zoomLevel])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGroundOverlay::groundOverlayWithPosition_zoomLevel_anchor_icon', {"position": position, "zoomLevel": zoomLevel, "anchor": anchor, "icon": icon});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = BMKGroundOverlay()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  
  static Future<BMKGroundOverlay> groundOverlayWithBounds_icon(BMKCoordinateBounds bounds, UIImage icon) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKGroundOverlay::groundOverlayWithBounds([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGroundOverlay::groundOverlayWithBounds_icon', {"bounds": bounds, "icon": icon});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = BMKGroundOverlay()..refId = __result__..tag__ = 'bmap_map_fluttify';
      return __return__;
    }
  }
  
  //endregion
}

extension BMKGroundOverlay_Batch on List<BMKGroundOverlay> {
  //region getters
  Future<List<CLLocationCoordinate2D>> get_pt_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGroundOverlay::get_pt_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => CLLocationCoordinate2D()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<CGPoint>> get_anchor_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGroundOverlay::get_anchor_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => CGPoint()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<BMKCoordinateBounds>> get_bound_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGroundOverlay::get_bound_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => BMKCoordinateBounds()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  Future<List<UIImage>> get_icon_batch() async {
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod("BMKGroundOverlay::get_icon_batch", [for (final __item__ in this) {'__this__': __item__}]);
  
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => UIImage()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_pt_batch(List<CLLocationCoordinate2D> pt) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKGroundOverlay::set_pt_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "pt": pt[__i__]}]);
  
  
  }
  
  Future<void> set_anchor_batch(List<CGPoint> anchor) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKGroundOverlay::set_anchor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "anchor": anchor[__i__]}]);
  
  
  }
  
  Future<void> set_bound_batch(List<BMKCoordinateBounds> bound) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKGroundOverlay::set_bound_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "bound": bound[__i__]}]);
  
  
  }
  
  Future<void> set_icon_batch(List<UIImage> icon) async {
    await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('BMKGroundOverlay::set_icon_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "icon": icon[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  static Future<List<BMKGroundOverlay>> groundOverlayWithPosition_zoomLevel_anchor_icon_batch(List<CLLocationCoordinate2D> position, List<double> zoomLevel, List<CGPoint> anchor, List<UIImage> icon) async {
    if (position.length != zoomLevel.length || zoomLevel.length != anchor.length || anchor.length != icon.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGroundOverlay::groundOverlayWithPosition_zoomLevel_anchor_icon_batch', [for (int __i__ = 0; __i__ < position.length; __i__++) {"position": position[__i__], "zoomLevel": zoomLevel[__i__], "anchor": anchor[__i__], "icon": icon[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => BMKGroundOverlay()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  
  static Future<List<BMKGroundOverlay>> groundOverlayWithBounds_icon_batch(List<BMKCoordinateBounds> bounds, List<UIImage> icon) async {
    if (bounds.length != icon.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKGroundOverlay::groundOverlayWithBounds_icon_batch', [for (int __i__ = 0; __i__ < bounds.length; __i__++) {"bounds": bounds[__i__], "icon": icon[__i__]}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<String>().map((__result__) => BMKGroundOverlay()..refId = __result__..tag__ = 'bmap_map_fluttify').toList();
      return typedResult;
    }
  }
  
  //endregion
}