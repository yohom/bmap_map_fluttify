// ignore_for_file: non_constant_identifier_names
part of 'bmap_view.widget.dart';

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

class _IOSMapDelegate extends NSObject {}

class _AndroidMapDelegate extends java_lang_Object {}

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
