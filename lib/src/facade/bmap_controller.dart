// ignore_for_file: non_constant_identifier_names
part of 'bmap_view.widget.dart';

/// 地图截屏回调签名
typedef OnScreenShot = Future<void> Function(Uint8List imageData);

/// 地图控制类
class BmapController with WidgetsBindingObserver {
  /// Android构造器
  BmapController.android(
    com_baidu_mapapi_map_TextureMapView androidController,
    _BmapViewState _state,
  ) {
    WidgetsBinding.instance.addObserver(this);
    this.androidController = androidController;
    this._state = _state;
  }

  /// iOS构造器
  BmapController.ios(BMKMapView iosController, _BmapViewState _state) {
    WidgetsBinding.instance.addObserver(this);
    this.iosController = iosController;
    this._state = _state;
  }

  com_baidu_mapapi_map_TextureMapView androidController;
  BMKMapView iosController;

  _BmapViewState _state;

  final imageConfiguration =
      ImageConfiguration(devicePixelRatio: window.devicePixelRatio);

  final _iosMapDelegate = _IOSMapDelegate();
  final _androidMapDelegate = _AndroidMapDelegate();

  /// 释放资源
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

  /// 设置地图中心点
  ///
  /// [coordinate] 经纬度
  /// [animated] 是否动画
  Future<void> setCenterCoordinate(
    LatLng coordinate, {
    bool animated = true,
  }) async {
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

        pool
          ..add(map)
          ..add(latLng)
          ..add(mapStatus);
      },
      ios: (pool) async {
        final latLng = await CLLocationCoordinate2D.create(lat, lng);

        await iosController.setCenterCoordinate_animated(latLng, animated);

        pool.add(latLng);
      },
    );
  }

  /// 设置我的位置数据
  Future<void> showMyLocation(MyLocationOption option) async {
    final iconData = await option.iconProvider?.toImageData(imageConfiguration);

    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setMyLocationEnabled(true);

        // 我的位置除定位之外的配置信息
        final bitmap = await android_graphics_Bitmap.create(iconData);
        final config = await com_baidu_mapapi_map_MyLocationConfiguration
            .create__com_baidu_mapapi_map_MyLocationConfiguration_LocationMode__boolean__com_baidu_mapapi_map_BitmapDescriptor(
          option.myLocationType.androidModel(),
          true,
          await com_baidu_mapapi_map_BitmapDescriptorFactory.fromBitmap(bitmap),
        );
        await map.setMyLocationConfiguration(config);

        // 我的位置信息
        final builder =
            await com_baidu_mapapi_map_MyLocationData_Builder.create__();

        await BmapLocation.instance.setupOptions(
          onLocation: (location) async {
            await builder.latitude(location.latLng.latitude);
            await builder.longitude(location.latLng.longitude);
            await builder.accuracy(location.accuracy);
            await builder.direction(location.direction);

            await map.setMyLocationData(await builder.build());
          },
        );
        await BmapLocation.instance.start();

        pool
          ..add(config)
          ..add(bitmap);
      },
      ios: (pool) async {
        await iosController.set_showsUserLocation(true);
        await iosController
            .set_userTrackingMode(option.myLocationType.iosModel());

        final displayParam = await BMKLocationViewDisplayParam.create__();
        final image = await UIImage.create(iconData);
        await displayParam.set_locationViewImage(image);

        final data = await BMKUserLocation.create__();

        await BmapLocation.instance.setupOptions(
          onLocation: (location) async {
            await data.set_location(await location.iosModel.get_location());
            await iosController.updateLocationViewWithParam(displayParam);
            await iosController.updateLocationData(data);
          },
        );
        await BmapLocation.instance.start();
      },
    );
  }

  /// 添加marker
  ///
  /// 在纬度[lat], 经度[lng]的位置添加marker, 并设置标题[title]和副标题[snippet], [iconUri]
  /// 可以是图片url, asset路径或者文件路径.
  Future<IMarker> addMarker(MarkerOption option) {
    assert(option != null);
    if (!_state.mounted) return null;

    final latitude = option.coordinate.latitude;
    final longitude = option.coordinate.longitude;
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // marker经纬度
        final latLng = await com_baidu_mapapi_model_LatLng
            .create__double__double(latitude, longitude);

        // marker配置
        final markerOption =
            await com_baidu_mapapi_map_MarkerOptions.create__();

        // 设置marker经纬度
        await markerOption.position(latLng);
        // 设置marker标题
        if (option.title != null) {
          await markerOption.title(option.title);
        }
        // // 设置marker副标题
        // if (option.snippet != null) {
        //   await markerOption.snippet(option.snippet);
        // }
        // 设置marker图标
        // 帧动画
        if (option.iconsProvider != null && option.iconsProvider.isNotEmpty) {
          List<Uint8List> iconData = [];
          for (final item in option.iconsProvider) {
            final data = await item.toImageData(imageConfiguration);
            iconData.add(data);
          }

          final bitmap = await android_graphics_Bitmap.create_batch(iconData);
          final icon = await com_baidu_mapapi_map_BitmapDescriptorFactory_Batch
              .fromBitmap_batch(bitmap);
          await markerOption.icons(icon);
          await markerOption.period(240 ~/ (option.animationFps ?? 30));

          pool
            ..addAll(bitmap)
            ..addAll(icon);
        }
        // 普通图片
        else if (option.iconProvider != null) {
          Uint8List iconData =
              await option.iconProvider.toImageData(imageConfiguration);

          final bitmap = await android_graphics_Bitmap.create(iconData);
          final icon = await com_baidu_mapapi_map_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await markerOption.icon(icon);

          pool
            ..add(bitmap)
            ..add(icon);
        }
        // widget as marker
        else if (option.widget != null) {
          List<Uint8List> iconData =
              await _state.widgetToImageData([option.widget]);

          if (iconData != null) {
            final bitmap = await android_graphics_Bitmap.create(iconData[0]);
            final icon = await com_baidu_mapapi_map_BitmapDescriptorFactory
                .fromBitmap(bitmap);
            await markerOption.icon(icon);

            pool
              ..add(bitmap)
              ..add(icon);
          }
        }
        // 是否可拖拽
        if (option.draggable != null) {
          await markerOption.draggable(option.draggable);
        }
        // 旋转角度
        if (option.rotateAngle != null) {
          await markerOption.rotate(option.rotateAngle);
        }
        // 锚点 默认在中间底部是最合理的
        await markerOption.anchor(option.anchorU ?? 0.5, option.anchorV ?? 0);
        // 是否可见
        if (option.visible != null) await markerOption.visible(option.visible);
        // 透明度
        if (option.opacity != null) await markerOption.alpha(option.opacity);

        final overlay = await map.addOverlay(markerOption);
        final marker =
            BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Marker>(overlay);
        // 是否允许弹窗
        if (option.infoWindowEnabled != null) {
          await marker.setClickable(option.infoWindowEnabled);
        }

        // 自定义数据
        if (option.object != null) {
          final bundle = await android_os_Bundle.create();
          bundle.putString('extraInfo', option.object);
          await marker.setExtraInfo(bundle);
        }

        // marker不释放, 还有用
        pool
          ..add(latLng)
          ..add(markerOption);

        return Marker.android(marker);
      },
      ios: (pool) async {
        await iosController
            .set_delegate(_iosMapDelegate.._iosController = iosController);

        // 创建marker
        final annotation = await BMKPointAnnotation.create__();

        final coordinate =
            await CLLocationCoordinate2D.create(latitude, longitude);

        // 设置经纬度
        await annotation.set_coordinate(coordinate);

        // 设置标题
        if (option.title != null) {
          await annotation.set_title(option.title);
        }
        // 设置副标题
        if (option.snippet != null) {
          await annotation.set_subtitle(option.snippet);
        }
        // 设置图片
        // 帧动画
        if (option.iconsProvider != null && option.iconsProvider.isNotEmpty) {
          List<Uint8List> iconData = [];
          for (final item in option.iconsProvider) {
            final data = await item.toImageData(imageConfiguration);
            iconData.add(data);
          }

          final icons = await UIImage.create_batch(iconData);

          await annotation.setIcons(icons);
          await annotation.setFps(
            (1 / (option.animationFps ?? 30) * icons.length).toInt(),
          );

          pool..addAll(icons);
        }
        // 普通图片
        else if (option.iconProvider != null) {
          Uint8List iconData =
              await option.iconProvider.toImageData(imageConfiguration);

          final icon = await UIImage.create(iconData);

          // 由于ios端的icon参数在回调中设置, 需要添加属性来实现
          await annotation.setIcon(icon);

          pool..add(icon);
        }
        // widget as marker
        else if (option.widget != null) {
          List<Uint8List> iconData =
              await _state.widgetToImageData([option.widget]);

          if (iconData != null) {
            final icon = await UIImage.create(iconData[0]);

            // 由于ios端的icon参数在回调中设置, 需要添加属性来实现
            await annotation.setIcon(icon);

            pool..add(icon);
          }
        }
        // 是否可拖拽
        if (option.draggable != null) {
          await annotation.setDraggable(option.draggable);
        }
        // 旋转角度
        if (option.rotateAngle != null) {
          await annotation.setRotateAngle(option.rotateAngle);
        }
        // 是否允许弹窗
        if (option.infoWindowEnabled != null) {
          await annotation.setInfoWindowEnabled(option.infoWindowEnabled);
        }
        // 锚点
        if (option.anchorU != null || option.anchorV != null) {
          await annotation.setAnchor(option.anchorU, option.anchorV);
        }
        // 自定义数据
        if (option.object != null) {
          await annotation.setObject(option.object);
        }
        // 是否可见
        if (option.visible != null) {
          await annotation.setVisible(option.visible);
        }
        // 透明度
        if (option.opacity != null) {
          await annotation.setOpacity(option.opacity);
        }

        // 添加marker
        await iosController.addAnnotation(annotation);

        pool.add(coordinate);

        return Marker.ios(annotation, iosController);
      },
    );
  }

  /// 批量添加marker
  ///
  /// 根据[options]批量创建Marker
  Future<List<Marker>> addMarkers(List<MarkerOption> options) async {
    assert(options != null);
    if (!_state.mounted) return [];

    if (options.isEmpty) return Future.value([]);

    final latBatch = options.map((it) => it.coordinate.latitude).toList();
    final lngBatch = options.map((it) => it.coordinate.longitude).toList();
    final titleBatch = options.map((it) => it.title).toList();
    final snippetBatch = options.map((it) => it.snippet).toList();
    final draggableBatch = options.map((it) => it.draggable).toList();
    final rotateAngleBatch = options.map((it) => it.rotateAngle).toList();
    final anchorUBatch = options.map((it) => it.anchorU).toList();
    final anchorVBatch = options.map((it) => it.anchorV).toList();
    final visibleBatch = options.map((it) => it.visible).toList();
    final infoWindowEnabledBatch =
        options.map((it) => it.infoWindowEnabled).toList();
    final objectBatch = options.map((it) => it.object).toList();
    final iconDataBatch = <Uint8List>[
      ...await Future.wait([
        for (final option in options)
          if (option.iconProvider != null)
            option.iconProvider.toImageData(imageConfiguration)
      ]),
      ...await _state.widgetToImageData(options
          .where((element) => element.widget != null)
          .map((e) => e.widget)
          .toList()),
    ];

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
        // 是否可拖动
        await markerOptionBatch.draggable_batch(draggableBatch);
        // 旋转角度
        await markerOptionBatch.rotate_batch(rotateAngleBatch);
        // 锚点
        await markerOptionBatch.anchor_batch(anchorUBatch, anchorVBatch);
        // 是否可见
        await markerOptionBatch.visible_batch(visibleBatch);
        // 图片
        if (iconDataBatch.isNotEmpty) {
          final bitmapBatch =
              await android_graphics_Bitmap.create_batch(iconDataBatch);
          final iconBatch =
              await com_baidu_mapapi_map_BitmapDescriptorFactory_Batch
                  .fromBitmap_batch(bitmapBatch);
          await markerOptionBatch.icon_batch(iconBatch);
          pool
            ..addAll(bitmapBatch)
            ..addAll(iconBatch);
        }
        // 设置自定义数据
        await markerOptionBatch.title_batch(titleBatch);
        await map.setOnMarkerClickListener(
          _androidMapDelegate
            .._onMarkerClicked = (marker) async {
              final map = await androidController.getMap();
              await map.hideInfoWindow();
              await marker.showInfoWindow();

              await map.release__();
            },
        );
        await map.setOnMapClickListener(
          _androidMapDelegate
            .._onMapClicked = (coordinate) async {
              final map = await androidController.getMap();
              debugPrint('点击地图: $coordinate');
              await map.hideInfoWindow();
              await map.release__();
            },
        );

        // 添加marker
        final overlays = await map.addOverlays(markerOptionBatch);
        // 由于返回类型被重置为Polygon(因为是第一个子类的关系), 这里转换一下
        final markers = overlays
            .map((it) =>
                BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Marker>(it))
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
        // 设置标题
        if (titleBatch.any((element) => element.isNotEmpty)) {
          await annotationBatch.set_title_batch(titleBatch);
        }
        // 设置副标题
        await annotationBatch.set_subtitle_batch(snippetBatch);
        // 设置图片
        if (iconDataBatch.isNotEmpty) {
          final iconBatch = await UIImage.create_batch(iconDataBatch);
          await annotationBatch.setIcon(iconBatch);
          pool.addAll(iconBatch);
        }
        // 是否可拖拽
        await annotationBatch.setDraggable(draggableBatch);
        // 旋转角度
        await annotationBatch.setRotateAngle(rotateAngleBatch);
        // 是否允许弹窗
        await annotationBatch.setInfoWindowEnabled(infoWindowEnabledBatch);
        // 锚点
        await annotationBatch.setAnchor(anchorUBatch, anchorVBatch);
        // 自定义数据
        await annotationBatch.setObject(objectBatch);
        // 是否可见
        await annotationBatch.setVisible(visibleBatch);

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

        pool.add(map);
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

        pool
          ..addAll(markers.cast<Ref>())
          ..addAll(overlays.cast<Ref>());
      },
    );
  }

  /// 添加折线
  ///
  /// 可配置参数详见[PolylineOption]
  Future<Polyline> addPolyline(PolylineOption option) async {
    assert(option != null);

    final latitudeBatch = option.coordinateList.map((e) => e.latitude).toList();
    final longitudeBatch =
        option.coordinateList.map((e) => e.longitude).toList();
    Uint8List textureData = await option.textureProvider
        ?.toImageData(createLocalImageConfiguration(_state.context));

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
        if (textureData != null) {
          final bitmap = await android_graphics_Bitmap.create(textureData);
          final texture = await com_baidu_mapapi_map_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await polylineOptions.customTexture(texture);
          // 释放图片
          await bitmap.recycle();
          pool
            ..add(bitmap)
            ..add(texture);
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
          BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Polyline>(polyline),
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
          await polyline.addJsonableProperty__(1, option.width / pixelRatio);
        }
        // 颜色
        if (option.strokeColor != null) {
          await polyline.addJsonableProperty__(2, option.strokeColor.value);
        }
        // 设置图片
        if (textureData != null) {
          final texture = await UIImage.create(textureData);

          await polyline.addProperty__(3, texture);

          pool.add(texture);
        }
        // 是否虚线
        if (option.dashType != null) {
          await polyline.addJsonableProperty__(6, option.dashType.index + 1);
        }

        // 设置参数
        await iosController.addOverlay(polyline);

        pool.addAll(latLngList);

        return Polyline.ios(polyline, iosController);
      },
    );
  }

  /// 添加多边形
  ///
  /// 在点[points]的位置添加线, 可以设置宽度[width]和颜色[strokeColor]
  Future<Polygon> addPolygon(PolygonOption option) {
    assert(option != null, 'option不能为null');

    final latitudeBatch = option.coordinateList.map((e) => e.latitude).toList();
    final longitudeBatch =
        option.coordinateList.map((e) => e.longitude).toList();

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
            BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Polygon>(polygon));
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
          await polygon.addJsonableProperty__(1, option.width / pixelRatio);
        }
        if (option.strokeColor != null) {
          await polygon.addJsonableProperty__(2, option.strokeColor.value);
        }
        if (option.fillColor != null) {
          await polygon.addJsonableProperty__(3, option.fillColor.value);
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

        pool
          ..add(map)
          ..add(circleOptions)
          ..add(latLng);

        return Circle.android(
            BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Circle>(circle));
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
          await circle.addJsonableProperty__(1, option.width / pixelRatio);
        }
        if (option.strokeColor != null) {
          await circle.addJsonableProperty__(2, option.strokeColor.value);
        }
        if (option.fillColor != null) {
          await circle.addJsonableProperty__(3, option.fillColor.value);
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

        pool
          ..add(map)
          ..add(cameraUpdate);
      },
      ios: (pool) async {
        final currentLevel = await iosController.get_zoomLevel();
        await iosController.set_zoomLevel(currentLevel + 1);
      },
    );
  }

  /// 缩小一个等级
  Future<void> zoomOut({bool animated = true}) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final cameraUpdate =
            await com_baidu_mapapi_map_MapStatusUpdateFactory.zoomOut();
        await map.animateMapStatus__com_baidu_mapapi_map_MapStatusUpdate(
          cameraUpdate,
        );

        pool
          ..add(map)
          ..add(cameraUpdate);
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
          default:
            break;
        }

        pool.add(map);
      },
      ios: (pool) async {
        switch (mapType) {
          case MapType.Standard:
            await iosController.set_mapType(BMKMapType.BMKMapTypeStandard);
            break;
          case MapType.Satellite:
            await iosController.set_mapType(BMKMapType.BMKMapTypeSatellite);
            break;
          default:
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

        pool.add(map);
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

        pool
          ..add(map)
          ..add(uiSetting);
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

        pool
          ..add(map)
          ..add(uiSetting);
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

        pool
          ..add(map)
          ..add(uiSetting);
      },
      ios: (pool) async {
        await iosController.set_rotateEnabled(enable);
      },
    );
  }

  /// 倾斜手势使能
  Future<void> setOverlookingGesturesEnabled(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setOverlookingGesturesEnabled(enable);

        pool
          ..add(map)
          ..add(uiSetting);
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

        pool
          ..add(map)
          ..add(uiSetting);
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

        pool
          ..add(map)
          ..add(cameraUpdate);
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

        pool
          ..add(map)
          ..add(camera);
        return camera.get_zoom();
      },
      ios: (pool) async {
        return iosController.get_zoomLevel();
      },
    );
  }

  /// 设置缩放是否以中心点为锚点
  Future<void> setZoomByCenter(bool byCenter) async {
    assert(byCenter != null);
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSetting = await map.getUiSettings();
        await uiSetting.setEnlargeCenterWithDoubleClickEnable(byCenter);

        pool
          ..add(map)
          ..add(uiSetting);
      },
      ios: (pool) async {
        await iosController
            .set_ChangeCenterWithDoubleTouchPointEnabled(byCenter);
      },
    );
  }

  /// 获取地图中心点
  Future<LatLng> getCenterCoordinate() {
    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final position = await map.getMapStatus();
        final target = await position.get_target();

        pool
          ..add(map)
          ..add(position)
          ..add(target);

        return LatLng(
          await target.get_latitude(),
          await target.get_longitude(),
        );
      },
      ios: (pool) async {
        final target = await iosController.get_centerCoordinate();
        pool.add(target);
        return LatLng(await target.latitude, await target.longitude);
      },
    );
  }

  /// 设置marker拖动监听事件
  Future<void> setMarkerDragListener({
    OnMarkerDrag onMarkerDragStart,
    OnMarkerDrag onMarkerDragging,
    OnMarkerDrag onMarkerDragEnd,
  }) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMarkerDragListener(
          _androidMapDelegate
            .._onMarkerDragStart = onMarkerDragStart
            .._onMarkerDragging = onMarkerDragging
            .._onMarkerDragEnd = onMarkerDragEnd,
        );

        pool.add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate
            .._onMarkerDragStart = onMarkerDragStart
            .._onMarkerDragging = onMarkerDragging
            .._onMarkerDragEnd = onMarkerDragEnd,
        );
      },
    );
  }

  /// 设置地图移动监听事件
  Future<void> setMapMoveListener({OnMapMove onMapMoveEnd}) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.setOnMapStatusChangeListener(
          _androidMapDelegate.._onMapMoveEnd = onMapMoveEnd,
        );

        pool.add(map);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          _iosMapDelegate.._onMapMoveEnd = onMapMoveEnd,
        );
      },
    );
  }

  /// 自定义地图
  ///
  /// [androidStyleAsset] android端样式文件路径, 即在pubspec.yaml下注册的asset路径
  /// [iosJsonStyle] ios端样式文件路径, 即在pubspec.yaml下注册的asset路径
  ///
  /// 这里的一个坑, 官方说明中, 不管是文档里, 还是创建自定义地图的提示中, 都指明了android和
  /// ios两端用的是同一种二进制文件, 但是ios端实际操作过程中, 却发现总是报json格式错误, 后来
  /// 使用了用于web端的json样式文件到ios端后, 发现是有用的, 所以这里要区分一下两端的文件! 哎!
  /// 花了半天的时间趟这个坑, 简直是坑爹!
  Future<void> setCustomMapStyle({
    String androidBinaryStyle,
    String iosJsonStyle,
  }) async {
    await platform(
      android: (pool) async {
        Uint8List styleData = await rootBundle
            .load(androidBinaryStyle)
            .then((byteData) => byteData.buffer.asUint8List());

        final dir = await getApplicationSupportDirectory();
        final file = File('${dir.path}/$androidBinaryStyle');
        if (!file.existsSync()) file.createSync(recursive: true);

        await file.writeAsBytes(styleData, flush: true);

        await androidController.setMapCustomStylePath(file.path);
        await androidController.setMapCustomStyleEnable(true);
      },
      ios: (pool) async {
        Uint8List styleData = await rootBundle
            .load(iosJsonStyle)
            .then((byteData) => byteData.buffer.asUint8List());

        final dir = await getApplicationSupportDirectory();
        final file = File('${dir.path}/$iosJsonStyle');
        if (!file.existsSync()) file.createSync(recursive: true);

        await file.writeAsBytes(styleData, flush: true);

        await iosController.setCustomMapStylePath(file.path);
        await iosController.setCustomMapStyleEnable(true);
      },
    );
  }

  /// 截图
  Future<void> screenShot(OnScreenShot onScreenShot) async {
    assert(onScreenShot != null);
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        await map.snapshot(
          _androidMapDelegate.._onScreenShot = onScreenShot,
        );

        pool.add(map);
      },
      ios: (pool) async {
        final rect = await iosController.frame;
        final image = await iosController.takeSnapshot();

        if (onScreenShot != null) await onScreenShot(await image.data);

        pool
          ..add(rect)
          ..add(image);
      },
    );
  }

  /// 设置logo位置
  Future<void> setLogoPosition(Alignment position) async {
    await platform(
      android: (pool) async {
        com_baidu_mapapi_map_LogoPosition logoPosition =
            com_baidu_mapapi_map_LogoPosition.logoPostionleftBottom;
        if (position == Alignment.bottomLeft) {
          logoPosition =
              com_baidu_mapapi_map_LogoPosition.logoPostionleftBottom;
        } else if (position == Alignment.bottomCenter) {
          logoPosition =
              com_baidu_mapapi_map_LogoPosition.logoPostionCenterBottom;
        } else if (position == Alignment.topCenter) {
          logoPosition = com_baidu_mapapi_map_LogoPosition.logoPostionCenterTop;
        } else if (position == Alignment.topLeft) {
          logoPosition = com_baidu_mapapi_map_LogoPosition.logoPostionleftTop;
        } else if (position == Alignment.topRight) {
          logoPosition = com_baidu_mapapi_map_LogoPosition.logoPostionRightTop;
        } else if (position == Alignment.bottomRight) {
          logoPosition =
              com_baidu_mapapi_map_LogoPosition.logoPostionRightBottom;
        } else {
          debugPrint('不支持的位置');
        }

        await androidController.setLogoPosition(logoPosition);
      },
      ios: (pool) async {
        BMKLogoPosition logoPosition =
            BMKLogoPosition.BMKLogoPositionLeftBottom;
        if (position == Alignment.bottomLeft) {
          logoPosition = BMKLogoPosition.BMKLogoPositionLeftBottom;
        } else if (position == Alignment.bottomCenter) {
          logoPosition = BMKLogoPosition.BMKLogoPositionCenterBottom;
        } else if (position == Alignment.topCenter) {
          logoPosition = BMKLogoPosition.BMKLogoPositionCenterTop;
        } else if (position == Alignment.topLeft) {
          logoPosition = BMKLogoPosition.BMKLogoPositionLeftTop;
        } else if (position == Alignment.topRight) {
          logoPosition = BMKLogoPosition.BMKLogoPositionRightTop;
        } else if (position == Alignment.bottomRight) {
          logoPosition = BMKLogoPosition.BMKLogoPositionRightBottom;
        } else {
          debugPrint('不支持的位置');
        }

        await iosController.set_logoPosition(logoPosition);
      },
    );
  }

  /// 设置地图内间距
  Future<void> setPadding(EdgeInsets padding) async {
    assert(padding != null);
    final ratio = MediaQuery.of(_state.context).devicePixelRatio;
    await platform(
      android: (pool) async {
        await androidController.setPadding(
          (ratio * padding.left)?.toInt() ?? 0,
          (ratio * padding.top)?.toInt() ?? 0,
          (ratio * padding.right)?.toInt() ?? 0,
          (ratio * padding.bottom)?.toInt() ?? 0,
        );
      },
      ios: (pool) async {
        final insets = await UIEdgeInsets.create(
          padding.top ?? 0.0,
          padding.left ?? 0.0,
          padding.bottom ?? 0.0,
          padding.right ?? 0.0,
        );
        await iosController.set_mapPadding(insets);
      },
    );
  }

  /// 是否显示指南针 (true还是false都不显示, 两端问题一样)
  Future<void> showCompass(bool enable) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();
        final uiSettings = await map.getUiSettings();

        await uiSettings.setCompassEnabled(enable);

        pool
          ..add(map)
          ..add(uiSettings);
      },
      ios: (pool) async {
        await iosController.setCompassImage(null);
      },
    );
  }

  /// 限制地图的显示范围
  ///
  /// [southWest]西南角, [northEast]东北角
  Future<void> setMapRegionLimits(LatLng southWest, LatLng northEast) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        final southWestPoint = await com_baidu_mapapi_model_LatLng
            .create__double__double(southWest.latitude, southWest.longitude);
        final northEastPoint = await com_baidu_mapapi_model_LatLng
            .create__double__double(northEast.latitude, northEast.longitude);

        final latLngBoundsBuilder =
            await com_baidu_mapapi_model_LatLngBounds_Builder.create__();
        await latLngBoundsBuilder
            .include__com_baidu_mapapi_model_LatLng(southWestPoint);
        await latLngBoundsBuilder
            .include__com_baidu_mapapi_model_LatLng(northEastPoint);

        await map.setMapStatusLimits(await latLngBoundsBuilder.build());

        pool
          ..add(map)
          ..add(southWestPoint)
          ..add(northEastPoint)
          ..add(latLngBoundsBuilder);
      },
      ios: (pool) async {
        final center = await CLLocationCoordinate2D.create(
          (southWest.latitude + northEast.latitude) / 2,
          (southWest.longitude + northEast.longitude) / 2,
        );
        final span = await BMKCoordinateSpanMake(
          northEast.latitude - southWest.latitude,
          northEast.longitude - southWest.longitude,
        );
        final region = await BMKCoordinateRegionMake(center, span);
        await iosController.set_limitMapRegion(region);

        pool
          ..add(center)
          ..add(span)
          ..add(region);
      },
    );
  }

  /// 控制底图标注
  ///
  /// 百度地图SDK支持设置底图POI的是否显示，用户可以通过BMKMapView的showMapPoi属性来控制
  /// 地图标注是否显示，默认显示底图标注。利用此属性可得到仅显示道路信息的地图。
  Future<void> showMapPoi(bool show) async {
    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        await map.showMapPoi(show);

        pool.add(map);
      },
      ios: (pool) async {
        await iosController.set_showMapPoi(show);
      },
    );
  }

  /// 将指定的经纬度列表(包括但不限于marker, polyline, polygon等)调整至同一屏幕中显示
  ///
  /// [bounds]边界点形成的边界, [padding]地图内边距
  Future<void> zoomToSpan(
    List<LatLng> bounds, {
    EdgeInsets padding = EdgeInsets.zero,
    bool animated = true,
  }) async {
    final double minLat = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.latitude < cur.latitude ? pre : cur)
        .then((bottom) => bottom.latitude);
    final double minLng = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.longitude < cur.longitude ? pre : cur)
        .then((left) => left.longitude);
    final double maxLat = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.latitude > cur.latitude ? pre : cur)
        .then((top) => top.latitude);
    final double maxLng = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.longitude > cur.longitude ? pre : cur)
        .then((right) => right.longitude);
    final devicePixelRatio = MediaQuery.of(_state.context).devicePixelRatio;

    await platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 西南角
        final southWest = await com_baidu_mapapi_model_LatLng
            .create__double__double(minLat, minLng);
        // 东北角
        final northEast = await com_baidu_mapapi_model_LatLng
            .create__double__double(maxLat, maxLng);

        // 可视区域矩形
        final builder =
            await com_baidu_mapapi_model_LatLngBounds_Builder.create__();
        await builder.include__com_baidu_mapapi_model_LatLng(southWest);
        await builder.include__com_baidu_mapapi_model_LatLng(northEast);

        // 更新对象 android端由于单位是像素, 所以这里要乘以当前设备的像素密度
        final cameraUpdate = await com_baidu_mapapi_map_MapStatusUpdateFactory
            .newLatLngBounds__com_baidu_mapapi_model_LatLngBounds__int__int__int__int(
          await builder.build(),
          (padding.left.toInt() * devicePixelRatio).toInt(),
          (padding.top.toInt() * devicePixelRatio).toInt(),
          (padding.right.toInt() * devicePixelRatio).toInt(),
          (padding.bottom.toInt() * devicePixelRatio).toInt(),
        );

        if (animated) {
          await map.animateMapStatus__com_baidu_mapapi_map_MapStatusUpdate(
              cameraUpdate);
        } else {
          await map.setMapStatus(cameraUpdate);
        }

        pool
          ..add(map)
          ..add(southWest)
          ..add(northEast)
          ..add(builder)
          ..add(cameraUpdate);
      },
      ios: (pool) async {
        // 由于屏幕坐标的(0, 0)左上角, 所以需要西北角和东南角
        // 西北角
        final northWest = await CLLocationCoordinate2D.create(maxLat, minLng);
        // 东南角
        final southEast = await CLLocationCoordinate2D.create(minLat, maxLng);

        // 西北角屏幕坐标
        final northWestPoint = await BMKMapPointForCoordinate(northWest);
        // 东南角屏幕坐标
        final southEastPoint = await BMKMapPointForCoordinate(southEast);

        // 矩形原点x
        final x = await northWestPoint.get_x();
        // 矩形原点y
        final y = await northWestPoint.get_y();
        // 矩形宽度
        final width =
            (await southEastPoint.get_x() - await northWestPoint.get_x()).abs();
        // 矩形高度
        final height =
            (await southEastPoint.get_y() - await northWestPoint.get_y()).abs();

        // 矩形
        final rect = await BMKMapRectMake(x, y, width, height);

        await iosController.fitVisibleMapRect_edgePadding_withAnimated(
          rect,
          await UIEdgeInsets.create(
            padding.top,
            padding.left,
            padding.bottom,
            padding.right,
          ),
          animated,
        );

        pool
          ..add(northWest)
          ..add(southEast)
          ..add(northWestPoint)
          ..add(southEastPoint)
          ..add(rect);
      },
    );
  }

  /// 添加弧线
  Future<Arc> addArc(ArcOption option) async {
    assert(option != null);

    return platform(
      android: (pool) async {
        final map = await androidController.getMap();

        // 构造折线点
        com_baidu_mapapi_model_LatLng start =
            await com_baidu_mapapi_model_LatLng.create__double__double(
          option.startPoint.latitude,
          option.startPoint.longitude,
        );
        com_baidu_mapapi_model_LatLng middle =
            await com_baidu_mapapi_model_LatLng.create__double__double(
          option.middlePoint.latitude,
          option.middlePoint.longitude,
        );
        com_baidu_mapapi_model_LatLng end =
            await com_baidu_mapapi_model_LatLng.create__double__double(
          option.endPoint.latitude,
          option.endPoint.longitude,
        );

        // 构造折线参数
        final arcOptions = await com_baidu_mapapi_map_ArcOptions.create__();

        // 添加经纬度列表
        await arcOptions.points(start, middle, end);
        if (option.width != null) {
          await arcOptions.width(option.width.toInt());
        }
        // 颜色
        if (option.strokeColor != null) {
          await arcOptions
              .color(Int32List.fromList([option.strokeColor.value])[0]);
        }
        // 设置参数
        final arc = await map.addOverlay(arcOptions);

        pool
          ..add(map)
          ..add(arcOptions)
          ..add(start)
          ..add(middle)
          ..add(end);

        return Arc.android(
          BmapMapFluttifyAndroidAs<com_baidu_mapapi_map_Arc>(arc),
        );
      },
      ios: (pool) async {
        await iosController.set_delegate(_iosMapDelegate);

        // 构造折线点
        CLLocationCoordinate2D start = await CLLocationCoordinate2D.create(
          option.startPoint.latitude,
          option.startPoint.longitude,
        );
        CLLocationCoordinate2D middle = await CLLocationCoordinate2D.create(
          option.middlePoint.latitude,
          option.middlePoint.longitude,
        );
        CLLocationCoordinate2D end = await CLLocationCoordinate2D.create(
          option.endPoint.latitude,
          option.endPoint.longitude,
        );

        // 构造折线参数
        final arc =
            await BMKArcline.arclineWithCoordinates([start, middle, end]);

        // 宽度和颜色需要设置到STACK里去
        if (option.width != null) {
          final pixelRatio = MediaQuery.of(_state.context).devicePixelRatio;
          await arc.addJsonableProperty__(1, option.width / pixelRatio);
        }
        // 颜色
        if (option.strokeColor != null) {
          await arc.addJsonableProperty__(2, option.strokeColor.value);
        }

        // 设置参数
        await iosController.addOverlay(arc);

        pool
          ..add(start)
          ..add(middle)
          ..add(end);

        return Arc.ios(arc, iosController);
      },
    );
  }
}
