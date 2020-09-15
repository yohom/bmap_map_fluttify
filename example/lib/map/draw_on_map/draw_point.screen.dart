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
  void initState() {
    super.initState();
    // 缓存图片
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      precacheImage(AssetImage('images/test_icon.png'), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('绘制点标记')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: BmapView(
              zoomLevel: 3,
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
                  title: Center(child: Text('批量添加Marker')),
                  onTap: () {
                    _controller?.addMarkers(
                      [
                        for (int i = 0; i < 20; i++)
                          MarkerOption(
                            latLng: getNextLatLng(),
                            object: '自定义数据:$i',
                            widget: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('test marker $i'),
                                Image.asset('images/test_icon.png'),
                              ],
                            ),
                          ),
                      ],
                    )?.then(_markers.addAll);
                  },
                ),
                ListTile(
                  title: Center(child: Text('Marker添加点击事件')),
                  onTap: () {
                    _controller
                        ?.setMarkerClickedListener((Marker marker) async {
                      toast(
                          '经纬度: ${await marker.location}, 自定义数据: ${await marker.object}');
                      return false;
                    });
                  },
                ),
                ListTile(
                  title: Center(child: Text('将地图缩放至可以显示所有Marker')),
                  onTap: () async {
                    Stream.fromIterable(_markers)
                        .asyncMap((marker) => marker.location)
                        .toList()
                        .then((boundary) {
                      debugPrint('boundary: $boundary');
                      return _controller?.zoomToSpan(
                        boundary,
                        padding: EdgeInsets.only(top: 100),
                      );
                    });
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
