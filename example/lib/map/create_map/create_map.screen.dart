import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:bmap_map_fluttify_example/utils/misc.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

final _assetsIcon = AssetImage('images/test_icon.png');

class CreateMapScreen extends StatefulWidget {
  @override
  _CreateMapScreenState createState() => _CreateMapScreenState();
}

class _CreateMapScreenState extends State<CreateMapScreen> {
  BmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义地图')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: BmapView(
              onMapCreated: (controller) async {
                _controller = controller;
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              scrollable: true,
              divider: kDividerZero,
              children: <Widget>[
                BooleanSetting(
                  head: '是否显示定位',
                  onSelected: (value) async {
                    if (value && await requestPermission())
                      _controller.showMyLocation(MyLocationOption(
                        iconProvider: _assetsIcon,
                      ));
                  },
                ),
                ListTile(
                  title: Center(child: Text('使用自定义定位图标')),
                  onTap: () async {
                    await _controller?.showMyLocation(MyLocationOption(
                      myLocationType: MyLocationType.Rotate,
                      iconProvider: _assetsIcon,
                    ));
                  },
                ),
                DiscreteSetting(
                  head: '切换地图图层',
                  options: ['正常视图', '卫星视图'],
                  onSelected: (value) {
                    switch (value) {
                      case '正常视图':
                        _controller?.setMapType(MapType.Standard);
                        break;
                      case '卫星视图':
                        _controller?.setMapType(MapType.Satellite);
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈边框颜色',
                  options: ['红色', '绿色', '蓝色'],
                  onSelected: (value) {
                    switch (value) {
                      case '红色':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeColor: Colors.red,
                          strokeWidth: 2,
                        ));
                        break;
                      case '绿色':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeColor: Colors.green,
                          strokeWidth: 2,
                        ));
                        break;
                      case '蓝色':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeColor: Colors.blue,
                          strokeWidth: 2,
                        ));
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈填充颜色',
                  options: ['红色', '绿色', '蓝色'],
                  onSelected: (value) {
                    switch (value) {
                      case '红色':
                        _controller?.showMyLocation(MyLocationOption(
                          fillColor: Colors.red,
                          strokeWidth: 2,
                        ));
                        break;
                      case '绿色':
                        _controller?.showMyLocation(MyLocationOption(
                          fillColor: Colors.green,
                          strokeWidth: 2,
                        ));
                        break;
                      case '蓝色':
                        _controller?.showMyLocation(MyLocationOption(
                          fillColor: Colors.blue,
                          strokeWidth: 2,
                        ));
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈边框宽度',
                  options: ['2', '4', '8'],
                  onSelected: (value) {
                    switch (value) {
                      case '2':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeWidth: 2,
                        ));
                        break;
                      case '4':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeWidth: 4,
                        ));
                        break;
                      case '8':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeWidth: 8,
                        ));
                        break;
                    }
                  },
                ),
                BooleanSetting(
                  head: '是否显示路况信息',
                  onSelected: (value) {
                    _controller?.showTraffic(value);
                  },
                ),
                ListTile(
                  title: Center(child: Text('获取地图中心点')),
                  onTap: () async {
                    final center = await _controller?.getCenterCoordinate();
                    toast(
                        'center: lat: ${center.latitude}, lng: ${center.longitude}');
                  },
                ),
                ListTile(
                  title: Center(child: Text('监听地图移动')),
                  onTap: () {
                    _controller?.setMapMoveListener(
                      onMapMoveEnd: (move) async => toast('结束移动: $move'),
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('自定义地图')),
                  onTap: () {
                    _controller?.setCustomMapStyle(
                      androidBinaryStyle:
                          'raw/7271bb55da29d3ec22c35b1760c1ab6c.sty',
                      iosJsonStyle: 'raw/custom_map_config.json',
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
