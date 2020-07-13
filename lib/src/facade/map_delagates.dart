part of 'bmap_view.widget.dart';

class _IOSMapDelegate extends NSObject with BMKMapViewDelegate {
  OnMarkerClicked _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapMove _onMapMoveEnd;

  BMKMapView _iosController;

  @override
  Future<void> mapView_clickAnnotationView(
    BMKMapView mapView,
    BMKAnnotationView view,
  ) async {
    super.mapView_clickAnnotationView(mapView, view);
    if (_onMarkerClicked != null) {
      await _onMarkerClicked(
        Marker.ios(
          BMKPointAnnotation()
            ..refId = (await view.get_annotation(viewChannel: false)).refId,
//          view,
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
    super.mapView_annotationView_didChangeDragState_fromOldState(
      mapView,
      view,
      newState,
      oldState,
    );
    if (_onMarkerDragStart != null && newState == 0) {
      await _onMarkerDragStart(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
//          view,
          _iosController,
        ),
      );
    }

    if (_onMarkerDragging != null && newState == 1) {
      await _onMarkerDragging(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
//          view,
          _iosController,
        ),
      );
    }

    if (_onMarkerDragEnd != null && newState == 2) {
      await _onMarkerDragEnd(
        Marker.ios(
          await view.get_annotation(viewChannel: false),
//          view,
          _iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapStatusDidChanged(BMKMapView mapView) async {
    super.mapStatusDidChanged(mapView);
    if (_onMapMoveEnd != null) {
      final location = await mapView.get_centerCoordinate();
      await _onMapMoveEnd(MapMove(
        latLng: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: (await mapView.get_overlooking()).toDouble(),
      ));
    }
  }
}

class _AndroidMapDelegate extends java_lang_Object
    with
        com_baidu_mapapi_map_BaiduMap_OnMarkerClickListener,
        com_baidu_mapapi_map_BaiduMap_OnMarkerDragListener,
        com_baidu_mapapi_map_BaiduMap_OnMapStatusChangeListener,
        com_baidu_mapapi_map_BaiduMap_SnapshotReadyCallback {
  OnMarkerClicked _onMarkerClicked;
  OnMarkerDrag _onMarkerDragStart;
  OnMarkerDrag _onMarkerDragging;
  OnMarkerDrag _onMarkerDragEnd;
  OnMapMove _onMapMoveEnd;
  OnScreenShot _onScreenShot;

  @override
  Future<bool> onMarkerClick(com_baidu_mapapi_map_Marker var1) async {
    super.onMarkerClick(var1);
    if (_onMarkerClicked != null) {
      await _onMarkerClicked(Marker.android(var1));
    }
    return true;
  }

  @override
  Future<void> onMarkerDragStart(com_baidu_mapapi_map_Marker var1) async {
    super.onMarkerDragStart(var1);
    if (_onMarkerDragStart != null) {
      await _onMarkerDragStart(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDrag(com_baidu_mapapi_map_Marker var1) async {
    super.onMarkerDrag(var1);
    if (_onMarkerDragging != null) {
      await _onMarkerDragging(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDragEnd(com_baidu_mapapi_map_Marker var1) async {
    super.onMarkerDragEnd(var1);
    if (_onMarkerDragEnd != null) {
      await _onMarkerDragEnd(Marker.android(var1));
    }
  }

  @override
  Future<void> onMapStatusChangeFinish(
    com_baidu_mapapi_map_MapStatus var1,
  ) async {
    super.onMapStatusChangeFinish(var1);
    if (_onMapMoveEnd != null) {
      final location = await var1.get_target();
      await _onMapMoveEnd(MapMove(
        latLng: LatLng(
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
    super.onSnapshotReady(var1);
    if (_onScreenShot != null) {
      _onScreenShot(await var1.data);
    }
  }
}
