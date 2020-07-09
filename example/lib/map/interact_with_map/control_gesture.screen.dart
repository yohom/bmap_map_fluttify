import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

class ControlGestureScreen extends StatefulWidget {
  ControlGestureScreen();

  @override
  _ControlGestureScreenState createState() => _ControlGestureScreenState();
}

class _ControlGestureScreenState extends State<ControlGestureScreen> {
  BmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('手势交互')),
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
                  selected: true,
                  head: '是否使能缩放手势',
                  onSelected: (value) {
                    _controller?.setZoomGesturesEnabled(value);
                  },
                ),
                BooleanSetting(
                  selected: true,
                  head: '是否使能滑动手势',
                  onSelected: (value) {
                    _controller?.setScrollGesturesEnabled(value);
                  },
                ),
                BooleanSetting(
                  selected: true,
                  head: '是否使能旋转手势',
                  onSelected: (value) {
                    _controller?.setRotateGesturesEnabled(value);
                  },
                ),
                BooleanSetting(
                  selected: true,
                  head: '是否使能倾斜手势',
                  onSelected: (value) {
                    _controller?.setOverlookingGesturesEnabled(value);
                  },
                ),
                BooleanSetting(
                  selected: true,
                  head: '是否使能所有手势',
                  onSelected: (value) {
                    _controller?.setAllGesturesEnabled(value);
                  },
                ),
                DiscreteSetting(
                  onSelected: (String value) {
                    switch (value) {
                      case '左下':
                        _controller.setLogoPosition(Alignment.bottomLeft);
                        break;
                      case '左上':
                        _controller.setLogoPosition(Alignment.topLeft);
                        break;
                      case '中下':
                        _controller.setLogoPosition(Alignment.bottomCenter);
                        break;
                      case '中上':
                        _controller.setLogoPosition(Alignment.topCenter);
                        break;
                      case '右下':
                        _controller.setLogoPosition(Alignment.bottomRight);
                        break;
                      case '右上':
                        _controller.setLogoPosition(Alignment.topRight);
                        break;
                    }
                  },
                  options: <String>['左下', '左上', '中下', '中上', '右下', '右上'],
                  head: 'logo位置',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
