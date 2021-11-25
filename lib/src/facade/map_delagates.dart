part of 'bmap_view.widget.dart';

class _IOSMapDelegate extends NSObject with _Callbacks, BMKMapViewDelegate {
  BMKMapView _iosController;

  @override
  Future<void> mapView_clickAnnotationView(
    BMKMapView mapView,
    BMKAnnotationView view,
  ) async {
    if (_onMarkerClicked != null) {
      await _onMarkerClicked(
        Marker.ios(
          BMKPointAnnotation()
            ..refId = (await view.get_annotation(viewChannel: false)).refId,
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapView_annotationView_didChangeDragState_fromOldState(
    BMKMapView mapView,
    BMKAnnotationView view,
    int newState,
    int oldState,
  ) async {
    if (_onMarkerDragStart != null && newState == 0) {
      await _onMarkerDragStart(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }

    if (_onMarkerDragging != null && newState == 1) {
      await _onMarkerDragging(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }

    if (_onMarkerDragEnd != null && newState == 2) {
      await _onMarkerDragEnd(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapView_regionDidChangeAnimated_reason(
    BMKMapView mapView,
    bool animated,
    BMKRegionChangeReason reason,
  ) async {
    if (_onMapMoveEnd != null) {
      final location = await mapView.get_centerCoordinate();
      await _onMapMoveEnd(MapMove(
        coordinate: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: (await mapView.get_overlooking()).toDouble(),
      ));
    }
  }

  @override
  Future<void> mapView_onClickedMapBlank(
    BMKMapView mapView,
    CLLocationCoordinate2D coordinate,
  ) async {
    if (_onMapClicked != null) {
      await _onMapClicked(LatLng(
        await coordinate.latitude,
        await coordinate.longitude,
      ));
    }
  }
}

class _AndroidMapDelegate extends java_lang_Object
    with
        _Callbacks,
        com_baidu_mapapi_map_BaiduMap_OnMarkerClickListener,
        com_baidu_mapapi_map_BaiduMap_OnMarkerDragListener,
        com_baidu_mapapi_map_BaiduMap_OnMapClickListener,
        com_baidu_mapapi_map_BaiduMap_OnMapStatusChangeListener,
        com_baidu_mapapi_map_BaiduMap_SnapshotReadyCallback {
  @override
  Future<bool> onMarkerClick(com_baidu_mapapi_map_Marker var1) async {
    if (_onMarkerClicked != null) {
      await _onMarkerClicked(Marker.android(var1));
    }
    return true;
  }

  @override
  Future<void> onMarkerDragStart(com_baidu_mapapi_map_Marker var1) async {
    if (_onMarkerDragStart != null) {
      await _onMarkerDragStart(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDrag(com_baidu_mapapi_map_Marker var1) async {
    if (_onMarkerDragging != null) {
      await _onMarkerDragging(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDragEnd(com_baidu_mapapi_map_Marker var1) async {
    if (_onMarkerDragEnd != null) {
      await _onMarkerDragEnd(Marker.android(var1));
    }
  }

  @override
  Future<void> onMapStatusChangeFinish(
    com_baidu_mapapi_map_MapStatus var1,
  ) async {
    if (_onMapMoveEnd != null) {
      final location = await var1.get_target();
      await _onMapMoveEnd(MapMove(
        coordinate: LatLng(
          await location.get_latitude(),
          await location.get_longitude(),
        ),
        zoom: await var1.get_zoom(),
        tilt: await var1.get_overlook(),
      ));
    }
  }

  @override
  Future<void> onSnapshotReady(android_graphics_Bitmap var1) async {
    if (_onScreenShot != null) {
      await _onScreenShot(await var1.data);
    }
  }

  @override
  Future<void> onMapClick(com_baidu_mapapi_model_LatLng var1) async {
    if (_onMapClicked != null) {
      await _onMapClicked(LatLng(
        await var1.get_latitude(),
        await var1.get_longitude(),
      ));
    }
  }
}

mixin _Callbacks {
  OnMarkerClicked _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapMove _onMapMoveEnd;
  OnMapClicked _onMapClicked;
  OnScreenShot _onScreenShot;
}
