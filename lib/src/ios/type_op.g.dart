// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:bmap_core_fluttify/bmap_core_fluttify.dart';
import 'package:bmap_utils_fluttify/bmap_utils_fluttify.dart';
import 'package:path_provider/path_provider.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
// type check
@optionalTypeArgs
Future<bool> BmapMapFluttifyIOSIs<T>(dynamic __this__) async {
  final typeName = T.toString();
  if (RegExp(r'^(List<)?(String|int|double)(>)?|(Map<String,(String|int|double)>)$').hasMatch(typeName)) {
    return __this__ is T;
  }
  else if (T == BMKActionPaopaoView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKActionPaopaoView', {'__this__': __this__});
    return result;
  } else if (T == BMKAnnotation) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKAnnotation', {'__this__': __this__});
    return result;
  } else if (T == BMKTileLayerView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKTileLayerView', {'__this__': __this__});
    return result;
  } else if (T == BMKOverlayPathView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKOverlayPathView', {'__this__': __this__});
    return result;
  } else if (T == BMKGroundOverlay) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKGroundOverlay', {'__this__': __this__});
    return result;
  } else if (T == BMKPolyline) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKPolyline', {'__this__': __this__});
    return result;
  } else if (T == BMKCircleView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKCircleView', {'__this__': __this__});
    return result;
  } else if (T == BMKPointAnnotation) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKPointAnnotation', {'__this__': __this__});
    return result;
  } else if (T == BMKGradient) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKGradient', {'__this__': __this__});
    return result;
  } else if (T == BMKArcline) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKArcline', {'__this__': __this__});
    return result;
  } else if (T == BMKMultiPoint) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKMultiPoint', {'__this__': __this__});
    return result;
  } else if (T == BMKBaseIndoorMapInfo) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKBaseIndoorMapInfo', {'__this__': __this__});
    return result;
  } else if (T == BMKTileLayer) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKTileLayer', {'__this__': __this__});
    return result;
  } else if (T == BMKURLTileLayer) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKURLTileLayer', {'__this__': __this__});
    return result;
  } else if (T == BMKSyncTileLayer) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKSyncTileLayer', {'__this__': __this__});
    return result;
  } else if (T == BMKAsyncTileLayer) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKAsyncTileLayer', {'__this__': __this__});
    return result;
  } else if (T == BMKPolylineView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKPolylineView', {'__this__': __this__});
    return result;
  } else if (T == BMKPinAnnotationView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKPinAnnotationView', {'__this__': __this__});
    return result;
  } else if (T == BMKCircle) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKCircle', {'__this__': __this__});
    return result;
  } else if (T == BMKMapPoi) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKMapPoi', {'__this__': __this__});
    return result;
  } else if (T == BMKMapView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKMapView', {'__this__': __this__});
    return result;
  } else if (T == BMKLocationViewDisplayParam) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKLocationViewDisplayParam', {'__this__': __this__});
    return result;
  } else if (T == BMKMapStatus) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKMapStatus', {'__this__': __this__});
    return result;
  } else if (T == BMKArclineView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKArclineView', {'__this__': __this__});
    return result;
  } else if (T == BMKHeatMapNode) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKHeatMapNode', {'__this__': __this__});
    return result;
  } else if (T == BMKHeatMap) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKHeatMap', {'__this__': __this__});
    return result;
  } else if (T == BMKPolygon) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKPolygon', {'__this__': __this__});
    return result;
  } else if (T == BMKPolygonView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKPolygonView', {'__this__': __this__});
    return result;
  } else if (T == BMKOverlayView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKOverlayView', {'__this__': __this__});
    return result;
  } else if (T == BMKGroundOverlayView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKGroundOverlayView', {'__this__': __this__});
    return result;
  } else if (T == BMKAnnotationView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKAnnotationView', {'__this__': __this__});
    return result;
  } else if (T == BMKOverlayGLBasicView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKOverlayGLBasicView', {'__this__': __this__});
    return result;
  } else if (T == BMKShape) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKShape', {'__this__': __this__});
    return result;
  } else if (T == BMKOLSearchRecord) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKOLSearchRecord', {'__this__': __this__});
    return result;
  } else if (T == BMKOLUpdateElement) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKOLUpdateElement', {'__this__': __this__});
    return result;
  } else if (T == BMKOverlay) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKOverlay', {'__this__': __this__});
    return result;
  } else if (T == BMKCustomMapStyleOption) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKCustomMapStyleOption', {'__this__': __this__});
    return result;
  } else if (T == BMKOfflineMap) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKOfflineMap', {'__this__': __this__});
    return result;
  } else if (T == BMKLocationReGeocode) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKLocationReGeocode', {'__this__': __this__});
    return result;
  } else if (T == BMKLocationManager) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKLocationManager', {'__this__': __this__});
    return result;
  } else if (T == BMKLocationAuth) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKLocationAuth', {'__this__': __this__});
    return result;
  } else if (T == BMKLocationPoiRegion) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKLocationPoiRegion', {'__this__': __this__});
    return result;
  } else if (T == BMKLocationPoi) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKLocationPoi', {'__this__': __this__});
    return result;
  } else if (T == BMKLocation) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKLocation', {'__this__': __this__});
    return result;
  } else if (T == BMKGeoFenceRegion) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKGeoFenceRegion', {'__this__': __this__});
    return result;
  } else if (T == BMKGeoFenceCircleRegion) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKGeoFenceCircleRegion', {'__this__': __this__});
    return result;
  } else if (T == BMKGeoFencePolygonRegion) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKGeoFencePolygonRegion', {'__this__': __this__});
    return result;
  } else if (T == BMKGeoFenceManager) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfBMKGeoFenceManager', {'__this__': __this__});
    return result;
  } else if (T == CLLocation) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfCLLocation', {'__this__': __this__});
    return result;
  } else if (T == CLHeading) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfCLHeading', {'__this__': __this__});
    return result;
  } else if (T == CGRect) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfCGRect', {'__this__': __this__});
    return result;
  } else if (T == CGPoint) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfCGPoint', {'__this__': __this__});
    return result;
  } else if (T == CGSize) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfCGSize', {'__this__': __this__});
    return result;
  } else if (T == UIEdgeInsets) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfUIEdgeInsets', {'__this__': __this__});
    return result;
  } else if (T == CLLocationCoordinate2D) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfCLLocationCoordinate2D', {'__this__': __this__});
    return result;
  } else if (T == CLLocationManager) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfCLLocationManager', {'__this__': __this__});
    return result;
  } else if (T == NSError) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfNSError', {'__this__': __this__});
    return result;
  } else if (T == NSCopying) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfNSCopying', {'__this__': __this__});
    return result;
  } else if (T == UIView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfUIView', {'__this__': __this__});
    return result;
  } else if (T == UIViewController) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfUIViewController', {'__this__': __this__});
    return result;
  } else if (T == UIControl) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfUIControl', {'__this__': __this__});
    return result;
  } else if (T == UIImage) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfUIImage', {'__this__': __this__});
    return result;
  } else if (T == UIImageView) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfUIImageView', {'__this__': __this__});
    return result;
  } else if (T == UIColor) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfUIColor', {'__this__': __this__});
    return result;
  } else if (T == NSData) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfNSData', {'__this__': __this__});
    return result;
  } else if (T == NSDate) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfNSDate', {'__this__': __this__});
    return result;
  } else if (T == NSOperation) {
    final result = await kBmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfNSOperation', {'__this__': __this__});
    return result;
  }
  else {
    return false;
  }
}

// type cast
// 给一个可选的泛型, 如果没有指定泛型就返回dynamic
@optionalTypeArgs
T BmapMapFluttifyIOSAs<T>(dynamic __this__) {
  final typeName = T.toString();

  if (__this__ == null) {
    return null;
  } else if (RegExp(r'^(List<)?(String|int|double)(>)?|(Map<String,(String|int|double)>)$').hasMatch(typeName)) {
    return __this__ as T;
  }
  else if (T == BMKActionPaopaoView) {
    return (BMKActionPaopaoView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKAnnotation) {
    return (BMKAnnotation.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKTileLayerView) {
    return (BMKTileLayerView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKOverlayPathView) {
    return (BMKOverlayPathView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKGroundOverlay) {
    return (BMKGroundOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKPolyline) {
    return (BMKPolyline()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKCircleView) {
    return (BMKCircleView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKPointAnnotation) {
    return (BMKPointAnnotation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKGradient) {
    return (BMKGradient()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKArcline) {
    return (BMKArcline()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKMultiPoint) {
    return (BMKMultiPoint()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKBaseIndoorMapInfo) {
    return (BMKBaseIndoorMapInfo()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKTileLayer) {
    return (BMKTileLayer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKURLTileLayer) {
    return (BMKURLTileLayer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKSyncTileLayer) {
    return (BMKSyncTileLayer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKAsyncTileLayer) {
    return (BMKAsyncTileLayer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKPolylineView) {
    return (BMKPolylineView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKPinAnnotationView) {
    return (BMKPinAnnotationView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKCircle) {
    return (BMKCircle()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKMapPoi) {
    return (BMKMapPoi()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKMapView) {
    return (BMKMapView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKLocationViewDisplayParam) {
    return (BMKLocationViewDisplayParam()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKMapStatus) {
    return (BMKMapStatus()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKArclineView) {
    return (BMKArclineView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKHeatMapNode) {
    return (BMKHeatMapNode()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKHeatMap) {
    return (BMKHeatMap()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKPolygon) {
    return (BMKPolygon()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKPolygonView) {
    return (BMKPolygonView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKOverlayView) {
    return (BMKOverlayView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKGroundOverlayView) {
    return (BMKGroundOverlayView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKAnnotationView) {
    return (BMKAnnotationView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKOverlayGLBasicView) {
    return (BMKOverlayGLBasicView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKShape) {
    return (BMKShape()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKOLSearchRecord) {
    return (BMKOLSearchRecord()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKOLUpdateElement) {
    return (BMKOLUpdateElement()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKOverlay) {
    return (BMKOverlay.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKCustomMapStyleOption) {
    return (BMKCustomMapStyleOption()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKOfflineMap) {
    return (BMKOfflineMap()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKLocationReGeocode) {
    return (BMKLocationReGeocode()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKLocationManager) {
    return (BMKLocationManager()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKLocationAuth) {
    return (BMKLocationAuth()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKLocationPoiRegion) {
    return (BMKLocationPoiRegion()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKLocationPoi) {
    return (BMKLocationPoi()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKLocation) {
    return (BMKLocation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKGeoFenceRegion) {
    return (BMKGeoFenceRegion()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKGeoFenceCircleRegion) {
    return (BMKGeoFenceCircleRegion()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKGeoFencePolygonRegion) {
    return (BMKGeoFencePolygonRegion()..refId = (__this__ as Ref).refId) as T;
  } else if (T == BMKGeoFenceManager) {
    return (BMKGeoFenceManager()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CLLocation) {
    return (CLLocation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CLHeading) {
    return (CLHeading()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CGRect) {
    return (CGRect()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CGPoint) {
    return (CGPoint()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CGSize) {
    return (CGSize()..refId = (__this__ as Ref).refId) as T;
  } else if (T == UIEdgeInsets) {
    return (UIEdgeInsets()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CLLocationCoordinate2D) {
    return (CLLocationCoordinate2D()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CLLocationManager) {
    return (CLLocationManager()..refId = (__this__ as Ref).refId) as T;
  } else if (T == NSError) {
    return (NSError()..refId = (__this__ as Ref).refId) as T;
  } else if (T == NSCopying) {
    return (NSCopying.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == UIView) {
    return (UIView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == UIViewController) {
    return (UIViewController()..refId = (__this__ as Ref).refId) as T;
  } else if (T == UIControl) {
    return (UIControl()..refId = (__this__ as Ref).refId) as T;
  } else if (T == UIImage) {
    return (UIImage()..refId = (__this__ as Ref).refId) as T;
  } else if (T == UIImageView) {
    return (UIImageView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == UIColor) {
    return (UIColor()..refId = (__this__ as Ref).refId) as T;
  } else if (T == NSData) {
    return (NSData()..refId = (__this__ as Ref).refId) as T;
  } else if (T == NSDate) {
    return (NSDate()..refId = (__this__ as Ref).refId) as T;
  } else if (T == NSOperation) {
    return (NSOperation()..refId = (__this__ as Ref).refId) as T;
  }
  else if (BmapCoreFluttifyIOSAs<T>(__this__) != null) {
    return BmapCoreFluttifyIOSAs<T>(__this__);
  } else if (BmapUtilsFluttifyIOSAs<T>(__this__) != null) {
    return BmapUtilsFluttifyIOSAs<T>(__this__);
  }
  else {
    return __this__;
  }
}