import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

//const beijing = LatLng(39.90960, 116.397228);
//const shanghai = LatLng(31.22, 121.48);
//const guangzhou = LatLng(23.16, 113.23);

class CodeInteractionScreen extends StatefulWidget {
  CodeInteractionScreen();

  factory CodeInteractionScreen.forDesignTime() => CodeInteractionScreen();

  @override
  _CodeInteractionScreenState createState() => _CodeInteractionScreenState();
}

class _CodeInteractionScreenState extends State<CodeInteractionScreen> {
  BmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('调用方法交互')),
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
              divider: kDivider0,
              children: <Widget>[
                DiscreteSetting(
                  head: '设置地图中心点',
                  options: ['广州', '北京', '上海'],
                  onSelected: (value) {
                    switch (value) {
                      case '广州':
                        _controller?.setCenterCoordinate(
                          LatLng(23.16, 113.23),
                          animated: false,
                        );
                        break;
                      case '北京':
                        _controller?.setCenterCoordinate(
                          LatLng(39.90960, 116.397228),
                          animated: true,
                        );
                        break;
                      case '上海':
                        _controller?.setCenterCoordinate(LatLng(31.22, 121.48));
                        break;
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
