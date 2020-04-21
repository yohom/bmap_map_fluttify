import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:bmap_map_fluttify_example/utils/next_latlng.dart';
import 'package:bmap_map_fluttify_example/utils/utils.export.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

final _networkIcon = Uri.parse(
    'https://w3.hoopchina.com.cn/30/a7/6a/30a76aea75aef69e4ea0e7d3dee552c7001.jpg');
final _assetsIcon1 = Uri.parse('images/test_icon.png');
final _assetsIcon2 = Uri.parse('images/arrow.png');

class DrawPointScreen extends StatefulWidget {
  DrawPointScreen();

  @override
  DrawPointScreenState createState() => DrawPointScreenState();
}

class DrawPointScreenState extends State<DrawPointScreen> with NextLatLng {
  BmapController _controller;
  List<Marker> _markers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('绘制点标记')),
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
              divider: kDividerTiny,
              children: <Widget>[
                ListTile(
                  title: Center(child: Text('调用方法开启弹窗')),
                  onTap: () async {
                    if (_markers.isNotEmpty) {
                      final marker = _markers[0];
                      marker.showInfoWindow();
                    }
                  },
                ),
                ListTile(
                  title: Center(child: Text('调用方法关闭弹窗')),
                  onTap: () async {
                    if (_markers.isNotEmpty) {
                      final marker = _markers[0];
                      marker.hideInfoWindow();
                    }
                  },
                ),
                ListTile(
                  title: Center(child: Text('批量添加Marker')),
                  onTap: () {
                    _controller?.addMarkers(
                      [
                        for (int i = 0; i < 100; i++)
                          MarkerOption(
                            latLng: getNextLatLng(),
                            title: '北京$i',
                            iconUri: i % 2 == 0 ? _assetsIcon1 : _assetsIcon2,
                            imageConfig: createLocalImageConfiguration(context),
                            width: 40,
                            height: 40,
                          ),
                      ],
                    )?.then(_markers.addAll);
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
