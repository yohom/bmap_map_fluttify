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

  com_baidu_mapapi_map_MapView androidController;
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
    final titleBatch = options.map((it) => it.title).toList();
    final iconDataBatch = <Uint8List>[
      for (final option in options)
        if (option.iconUri != null && option.imageConfig != null)
          await _uri2ImageData(option.imageConfig, option.iconUri)
        else if (option.widget != null)
          await _state.widgetToImageData(option.widget)
    ];
    final widthBatch = options.map((it) => it.width).toList();
    final heightBatch = options.map((it) => it.height).toList();

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
        // 添加标题
        await markerOptionBatch.title_batch(titleBatch);
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
        // 设置标题
        await annotationBatch.set_title_batch(titleBatch);
        // 设置图片
        if (iconDataBatch.isNotEmpty) {
          final iconBatch = await UIImage.create_batch(iconDataBatch);
          await annotationBatch.addProperty_batch(1, iconBatch);
          pool.addAll(iconBatch);
        }
        // 宽
        await annotationBatch.addJsonableProperty_batch(8, widthBatch);
        // 高
        await annotationBatch.addJsonableProperty_batch(9, heightBatch);

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

  Future<void> dispose() async {
    await androidController?.onPause();
    await androidController?.onDestroy();

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
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        androidController?.onPause();
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
