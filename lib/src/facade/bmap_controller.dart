// ignore_for_file: non_constant_identifier_names
part of 'bmap_view.widget.dart';

/// marker点击事件回调签名 输入[Marker]对象, 返回`是否已消耗事件`, 如果true则不再弹窗, 如果false则继续弹窗
typedef Future<bool> OnMarkerClicked(Marker marker);

/// 地图控制类
class BmapController with WidgetsBindingObserver, _Private {
  /// Android构造器
  BmapController.android(this.androidController, this._state) {
    WidgetsBinding.instance.addObserver(this);
  }

  /// iOS构造器
  BmapController.ios(this.iosController, this._state) {
    WidgetsBinding.instance.addObserver(this);
  }

  com_baidu_mapapi_map_TextureMapView androidController;
  BMKMapView iosController;

  _BmapViewState _state;

  final _iosMapDelegate = _IOSMapDelegate();
  final _androidMapDelegate = _AndroidMapDelegate();

  /// 设置地图中心点
  ///
  /// [coordinate] 经纬度
  /// [animated] 是否动画
  Future<void> setCenterCoordinate(
    LatLng coordinate, {
    bool animated = true,
  }) async {
//    assert(
//      zoomLevel == null || (zoomLevel >= 3 && zoomLevel <= 19),
//      '缩放范围为3-19',
//    );
    final lat = coordinate.latitude;
    final lng = coordinate.longitude;
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final latLng = await com_baidu_mapapi_model_LatLng
            .create__double__double(lat, lng);

        final mapStatus =
            await com_baidu_mapapi_map_MapStatusUpdateFactory.newLatLng(latLng);

        if (animated) {
          await map.animateMapStatus__com_baidu_mapapi_map_MapStatusUpdate(
              mapStatus);
        } else {
          await map.setMapStatus(mapStatus);
        }

        pool..add(map)..add(latLng)..add(mapStatus);
      },
      ios: (pool) async {
        final latLng = await CLLocationCoordinate2D.create(lat, lng);

        await iosController.setCenterCoordinate_animated(latLng, animated);

        pool..add(latLng);
      },
    );
  }

  /// 批量添加marker
  ///
  /// 根据[options]批量创建Marker
  Future<List<Marker>> addMarkers(List<MarkerOption> options) async {
    assert(options != null);

    if (options.isEmpty) return Future.value([]);

    final latBatch = options.map((it) => it.latLng.latitude).toList();
    final lngBatch = options.map((it) => it.latLng.longitude).toList();
    final iconDataBatch = <Uint8List>[
      for (final option in options)
        if (option.iconUri != null && option.imageConfig != null)
          await _uri2ImageData(option.imageConfig, option.iconUri)
        else if (option.widget != null)
          await _state.widgetToImageData(option.widget)
    ];
    final objectBatch = options.map((it) => it.object).toList();

    return platform(
      android: (pool) async {
        // 获取地图
        final map = await androidController.getMap();
        final latLngBatch = await com_baidu_mapapi_model_LatLng
            .create_batch__double__double(latBatch, lngBatch);
        // marker配置
        final markerOptionBatch = await com_baidu_mapapi_map_MarkerOptions
            .create_batch__(options.length);
        // 添加经纬度
        await markerOptionBatch.position_batch(latLngBatch);
        // 图片
        if (iconDataBatch.isNotEmpty) {
          final bitmapBatch =
              await android_graphics_Bitmap.create_batch(iconDataBatch);
          final iconBatch =
              await com_baidu_mapapi_map_BitmapDescriptorFactory_Batch
                  .fromBitmap_batch(bitmapBatch);
          await markerOptionBatch.icon_batch(iconBatch);
          pool..addAll(bitmapBatch)..addAll(iconBatch);
        }
        // 设置自定义数据
        await markerOptionBatch.title_batch(objectBatch);

        // 添加marker
        final overlays = await map.addOverlays(markerOptionBatch);
        // 由于返回类型被重置为Polygon(因为是第一个子类的关系), 这里转换一下
        final markers = overlays
            .map((it) => com_baidu_mapapi_map_Marker()..refId = it.refId)
            .toList();

        // marker不释放, 还有用
        pool
          ..add(map)
          ..addAll(latLngBatch)
          ..addAll(markerOptionBatch);
        return markers.map((it) => Marker.android(it)).toList();
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate.._iosController = iosController,
        );

        // 创建marker
        final annotationBatch =
            await BMKPointAnnotation.create_batch__(options.length);
        // 经纬度列表
        final coordinateBatch =
            await CLLocationCoordinate2D.create_batch(latBatch, lngBatch);
        // 设置经纬度
        await annotationBatch.set_coordinate_batch(coordinateBatch);
        // 设置图片
        if (iconDataBatch.isNotEmpty) {
          final iconBatch = await UIImage.create_batch(iconDataBatch);
          await annotationBatch.addProperty_batch(1, iconBatch);
          pool.addAll(iconBatch);
        }
        // 添加自定义数据
        annotationBatch.addJsonableProperty_batch(7, objectBatch);

        // 添加marker
        await iosController.addAnnotations(annotationBatch);

        pool.addAll(coordinateBatch);
        return [
          for (int i = 0; i < options.length; i++)
            Marker.ios(annotationBatch[i], iosController)
        ];
      },
    );
  }

  /// 设置marker点击监听事件
  Future<void> setMarkerClickedListener(OnMarkerClicked onMarkerClicked) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMarkerClickListener(
            _androidMapDelegate.._onMarkerClicked = onMarkerClicked);

        pool..add(map);
      },
      ios: (pool) async {
        await iosController
            .set_delegate(_iosMapDelegate.._onMarkerClicked = onMarkerClicked);
      },
    );
  }

  /// 把marker列表从地图上移除
  Future<void> clearMarkers(List<Marker> markers) async {
    await platform(
      android: (pool) async {
        final markerBatch = markers.map((it) => it.androidModel).toList();
        await markerBatch.remove_batch();
      },
      ios: (pool) async {
        final markerBatch = markers.map((it) => it.iosModel).toList();
        await iosController.removeAnnotations(markerBatch);
      },
    );
  }

  /// 清除地图上所有覆盖物
  Future<void> clear() async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.clear();

        pool.add(map);
      },
      ios: (pool) async {
        final markers = await iosController.get_annotations();
        final overlays = await iosController.get_overlays();
        await iosController.removeAnnotations(markers);
        await iosController.removeOverlays(overlays);

        pool..addAll(markers.cast<Ref>())..addAll(overlays.cast<Ref>());
      },
    );
  }

  /// 添加折线
  ///
  /// 可配置参数详见[PolylineOption]
  Future<Polyline> addPolyline(PolylineOption option) {
    assert(option != null);

    final latitudeBatch = option.latLngList.map((e) => e.latitude).toList();
    final longitudeBatch = option.latLngList.map((e) => e.longitude).toList();

    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造折线点
        List<com_baidu_mapapi_model_LatLng> latLngList =
            await com_baidu_mapapi_model_LatLng.create_batch__double__double(
          latitudeBatch,
          longitudeBatch,
        );

        // 构造折线参数
        final polylineOptions =
            await com_baidu_mapapi_map_PolylineOptions.create__();

        // 添加经纬度列表
        await polylineOptions.points(latLngList);
        if (option.width != null) {
          await polylineOptions.width(option.width.toInt());
        }
        // 颜色
        if (option.strokeColor != null) {
          await polylineOptions
              .color(Int32List.fromList([option.strokeColor.value])[0]);
        }
        // 自定义贴图
        if (option.customTexture != null && option.imageConfig != null) {
          Uint8List iconData =
              await uri2ImageData(option.imageConfig, option.customTexture);
          final bitmap = await android_graphics_Bitmap.create(iconData);
          final texture = await com_baidu_mapapi_map_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await polylineOptions.customTexture(texture);

          pool..add(bitmap)..add(texture);
        }
        // 是否虚线
        if (option.dashType != null) {
          await polylineOptions.dottedLine(true);
          switch (option.dashType) {
            case DashType.Square:
              await polylineOptions.dottedLineType(
                  com_baidu_mapapi_map_PolylineDottedLineType
                      .DOTTED_LINE_SQUARE);
              break;
            case DashType.Circle:
              await polylineOptions.dottedLineType(
                com_baidu_mapapi_map_PolylineDottedLineType.DOTTED_LINE_CIRCLE,
              );
              break;
          }
        }
        // 设置参数
        final polyline = await map.addOverlay(polylineOptions);

        pool
          ..add(map)
          ..add(polylineOptions)
          ..addAll(latLngList);

        return Polyline.android(
          TypeOpBmapMapFluttifyAndroid(polyline)
              .as__<com_baidu_mapapi_map_Polyline>(),
        );
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList =
            await CLLocationCoordinate2D.create_batch(
                latitudeBatch, longitudeBatch);

        // 构造折线参数
        final polyline = await BMKPolyline.polylineWithCoordinates_count(
            latLngList, latLngList.length);

        // 宽度和颜色需要设置到STACK里去
        if (option.width != null) {
          final pixelRatio = MediaQuery.of(_state.context).devicePixelRatio;
          polyline.addJsonableProperty__(1, option.width / pixelRatio);
        }
        // 颜色
        if (option.strokeColor != null) {
          polyline.addJsonableProperty__(2, option.strokeColor.value);
        }
        // 设置图片
        if (option.customTexture != null && option.imageConfig != null) {
          Uint8List textureData =
              await uri2ImageData(option.imageConfig, option.customTexture);

          final texture = await UIImage.create(textureData);

          polyline.addProperty__(3, texture);

          pool..add(texture);
        }
        // 是否虚线
        if (option.dashType != null) {
          polyline.addJsonableProperty__(6, option.dashType.index + 1);
        }

        // 设置参数
        await iosController.addOverlay(polyline);

        pool..addAll(latLngList);

        return Polyline.ios(polyline, iosController);
      },
    );
  }

  /// 添加多边形
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<Polygon> addPolygon(PolygonOption option) {
    assert(option != null, 'option不能为null');

    final latitudeBatch = option.latLngList.map((e) => e.latitude).toList();
    final longitudeBatch = option.latLngList.map((e) => e.longitude).toList();

    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造折线点
        List<com_baidu_mapapi_model_LatLng> latLngList =
            await com_baidu_mapapi_model_LatLng.create_batch__double__double(
          latitudeBatch,
          longitudeBatch,
        );

        // 构造参数
        final polygonOptions =
            await com_baidu_mapapi_map_PolygonOptions.create__();

        // 添加参数
        await polygonOptions.points(latLngList);
        // 宽度
        if (option.width != null || option.strokeColor != null) {
          final stroke = await com_baidu_mapapi_map_Stroke.create__int__int(
            option.width.toInt(),
            Int32List.fromList([option.strokeColor.value])[0],
          );
          await polygonOptions.stroke(stroke);
        }
        // 填充颜色
        if (option.fillColor != null) {
          await polygonOptions
              .fillColor(Int32List.fromList([option.fillColor.value])[0]);
        }

        // 设置参数
        final polygon = await map.addOverlay(polygonOptions);

        pool
          ..add(map)
          ..add(polygonOptions)
          ..addAll(latLngList);

        return Polygon.android(
          TypeOpBmapMapFluttifyAndroid(polygon)
              .as__<com_baidu_mapapi_map_Polygon>(),
        );
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        List<CLLocationCoordinate2D> latLngList =
            await CLLocationCoordinate2D.create_batch(
                latitudeBatch, longitudeBatch);

        // 构造折线参数
        final polygon = await BMKPolygon.polygonWithCoordinates_count(
            latLngList, latLngList.length);

        if (option.width != null) {
          final pixelRatio = MediaQuery.of(_state.context).devicePixelRatio;
          polygon.addJsonableProperty__(1, option.width / pixelRatio);
        }
        if (option.strokeColor != null) {
          polygon.addJsonableProperty__(2, option.strokeColor.value);
        }
        if (option.fillColor != null) {
          polygon.addJsonableProperty__(3, option.fillColor.value);
        }

        // 设置参数
        await iosController.addOverlay(polygon);

        pool.addAll(latLngList);

        return Polygon.ios(polygon, iosController);
      },
    );
  }

  /// 添加圆
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<Circle> addCircle(CircleOption option) {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造点
        final latLng =
            await com_baidu_mapapi_model_LatLng.create__double__double(
          option.center.latitude,
          option.center.longitude,
        );

        // 构造参数
        final circleOptions =
            await com_baidu_mapapi_map_CircleOptions.create__();

        // 中心点
        await circleOptions.center(latLng);
        // 半径
        await circleOptions.radius(option.radius.toInt());
        // 边框
        if (option.width != null) {
          final stroke = await com_baidu_mapapi_map_Stroke.create__int__int(
            option.width.toInt(),
            Int32List.fromList([option.strokeColor.value])[0],
          );
          await circleOptions.stroke(stroke);
        }
        // 填充颜色
        if (option.fillColor != null) {
          await circleOptions
              .fillColor(Int32List.fromList([option.fillColor.value])[0]);
        }

        // 设置参数
        final circle = await map.addOverlay(circleOptions);

        pool..add(map)..add(circleOptions)..add(latLng);

        return Circle.android(
          TypeOpBmapMapFluttifyAndroid(circle)
              .as__<com_baidu_mapapi_map_Circle>(),
        );
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        final latLng = await CLLocationCoordinate2D.create(
          option.center.latitude,
          option.center.longitude,
        );

        // 参数
        final circle = await BMKCircle.circleWithCenterCoordinate_radius(
          latLng,
          option.radius,
        );

        if (option.width != null) {
          final pixelRatio = MediaQuery.of(_state.context).devicePixelRatio;
          circle.addJsonableProperty__(1, option.width / pixelRatio);
        }
        if (option.strokeColor != null) {
          circle.addJsonableProperty__(2, option.strokeColor.value);
        }
        if (option.fillColor != null) {
          circle.addJsonableProperty__(3, option.fillColor.value);
        }

        // 设置参数
        await iosController.addOverlay(circle);

        return Circle.ios(circle, iosController);
      },
    );
  }

  /// 放大一个等级
  Future<void> zoomIn() async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final cameraUpdate =
            await com_baidu_mapapi_map_MapStatusUpdateFactory.zoomIn();
        await map.animateMapStatus__com_baidu_mapapi_map_MapStatusUpdate(
          cameraUpdate,
        );

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await iosController.get_zoomLevel();
        await iosController.set_zoomLevel(currentLevel + 1);
      },
    );
  }

  /// 放大一个等级
  Future<void> zoomOut({bool animated = true}) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final cameraUpdate =
            await com_baidu_mapapi_map_MapStatusUpdateFactory.zoomOut();
        await map.animateMapStatus__com_baidu_mapapi_map_MapStatusUpdate(
          cameraUpdate,
        );

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await iosController.get_zoomLevel();
        await iosController.set_zoomLevel(currentLevel - 1);
      },
    );
  }

  /// 选择显示图层
  Future<void> setMapType(MapType mapType) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        switch (mapType) {
          case MapType.Standard:
            await map.setMapType(com_baidu_mapapi_map_BaiduMap.MAP_TYPE_NORMAL);
            break;
          case MapType.Satellite:
            await map
                .setMapType(com_baidu_mapapi_map_BaiduMap.MAP_TYPE_SATELLITE);
            break;
        }

        pool..add(map);
      },
      ios: (pool) async {
        switch (mapType) {
          case MapType.Standard:
            await iosController.set_mapType(BMKMapType.BMKMapTypeStandard);
            break;
          case MapType.Satellite:
            await iosController.set_mapType(BMKMapType.BMKMapTypeSatellite);
            break;
        }
      },
    );
  }

  /// 显示路况信息
  Future<void> showTraffic(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.setTrafficEnabled(enable);

        pool..add(map);
      },
      ios: (pool) async {
        await iosController.set_trafficEnabled(enable);
      },
    );
  }

  /// 缩放手势使能
  Future<void> setZoomGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setZoomGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_zoomEnabled(enable);
      },
    );
  }

  /// 滑动手势使能
  Future<void> setScrollGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setScrollGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_scrollEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future<void> setRotateGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setRotateGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_rotateEnabled(enable);
      },
    );
  }

  /// 旋转手势使能
  Future<void> setOverlookingGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setOverlookingGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_overlookEnabled(enable);
      },
    );
  }

  /// 所有手势使能
  Future<void> setAllGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setAllGesturesEnabled(enable);

        pool..add(map)..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_zoomEnabled(enable);
        await iosController.set_scrollEnabled(enable);
        await iosController.set_rotateEnabled(enable);
        await iosController.set_overlookEnabled(enable);
      },
    );
  }

  /// 设置缩放大小
  ///
  /// 地图的缩放级别一共分为 17 级，从 3 到 19. 数字越大，展示的图面信息越精细
  Future<void> setZoomLevel(double level) async {
    assert(level >= 3 && level <= 19, '缩放范围为3-19');
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final cameraUpdate =
            await com_baidu_mapapi_map_MapStatusUpdateFactory.zoomTo(level);
        await map.animateMapStatus__com_baidu_mapapi_map_MapStatusUpdate(
            cameraUpdate);

        pool..add(map)..add(cameraUpdate);
      },
      ios: (pool) async {
        await iosController.set_zoomLevel(level);
      },
    );
  }

  /// 获取当前缩放大小
  Future<double> getZoomLevel() async {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final camera = await map.getMapStatus();

        pool..add(map)..add(camera);
        return camera.get_zoom();
      },
      ios: (pool) async {
        return iosController.get_zoomLevel();
      },
    );
  }

  Future<void> dispose() async {
    await androidController?.onPause();
    await androidController?.onDestroy();
    await iosController?.viewWillDisappear();

    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    debugPrint('didChangeAppLifecycleState: $state');
    // 因为这里的生命周期其实已经是App的生命周期了, 所以除了这里还需要在dispose里释放资源
    switch (state) {
      case AppLifecycleState.resumed:
        androidController?.onResume();
        iosController?.viewWillAppear();
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        androidController?.onPause();
        iosController?.viewWillDisappear();
        break;
      case AppLifecycleState.detached:
        androidController?.onDestroy();
        break;
    }
  }
}

class _IOSMapDelegate extends NSObject with BMKMapViewDelegate {
  OnMarkerClicked _onMarkerClicked;

  BMKMapView _iosController;

  @override
  Future<void> mapView_clickAnnotationView(
      BMKMapView mapView, BMKAnnotationView view) async {
    super.mapView_clickAnnotationView(mapView, view);
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
}

class _AndroidMapDelegate extends java_lang_Object
    with com_baidu_mapapi_map_BaiduMap_OnMarkerClickListener {
  OnMarkerClicked _onMarkerClicked;

  @override
  Future<bool> onMarkerClick(com_baidu_mapapi_map_Marker var1) async {
    super.onMarkerClick(var1);
    if (_onMarkerClicked != null) {
      await _onMarkerClicked(Marker.android(var1));
    }
    return true;
  }
}

mixin _Private {
  Map<String, Uint8List> _cache = {};

  Future<Uint8List> _uri2ImageData(
    ImageConfiguration config,
    Uri iconUri,
  ) async {
    final imageData = Completer<Uint8List>();
    if (_cache.containsKey(iconUri.toString())) {
      debugPrint('命中缓存');
      imageData.complete(_cache[iconUri.toString()]);
    } else {
      switch (iconUri.scheme) {
        // 网络图片
        case 'https':
        case 'http':
          HttpClient httpClient = HttpClient();
          var request = await httpClient.getUrl(iconUri);
          var response = await request.close();
          final result = await consolidateHttpClientResponseBytes(response);

          _cache[iconUri.toString()] = result;
          imageData.complete(result);
          break;
        // 文件图片
        case 'file':
          final imageFile = File.fromUri(iconUri);
          final result = imageFile.readAsBytesSync();

          _cache[iconUri.toString()] = result;
          imageData.complete(result);
          break;
        // asset图片
        default:
          AssetImage(iconUri.path)
              .resolve(config)
              .addListener(ImageStreamListener((imageInfo, sync) async {
            final byteData =
                await imageInfo.image.toByteData(format: ImageByteFormat.png);
            final result = byteData.buffer.asUint8List();

            _cache[iconUri.toString()] = result;
            imageData.complete(result);
          }));
          break;
      }
    }
    return imageData.future;
  }
}
