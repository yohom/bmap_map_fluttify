import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:bmap_map_fluttify_example/utils/next_latlng.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class DrawArcScreen extends StatefulWidget {
  DrawArcScreen();

  factory DrawArcScreen.forDesignTime() => DrawArcScreen();

  @override
  _DrawArcScreenState createState() => _DrawArcScreenState();
}

class _DrawArcScreenState extends State<DrawArcScreen> with NextLatLng {
  BmapController _controller;
  List<Arc> _arcList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('绘制弧线')),
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
              divider: kDividerTiny,
              children: <Widget>[
                ListTile(
                  title: Center(child: Text('添加弧线')),
                  onTap: () async {
                    final circle = await _controller?.addArc(ArcOption(
                      startPoint: getNextLatLng(),
                      middlePoint: getNextLatLng(),
                      endPoint: getNextLatLng(),
                      width: 10,
                      strokeColor: Colors.green,
                    ));
                    _arcList.add(circle);
                  },
                ),
                ListTile(
                  title: Center(child: Text('删除圆')),
                  onTap: () async {
                    if (_arcList.isNotEmpty) {
                      await _arcList.first.remove();
                      _arcList.removeAt(0);
                    }
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
