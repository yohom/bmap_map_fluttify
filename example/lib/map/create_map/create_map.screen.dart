import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:bmap_map_fluttify_example/utils/misc.dart';
import 'package:bmap_map_fluttify_example/widgets/setting.widget.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

final _assetsIcon = Uri.parse('images/test_icon.png');

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
                      _controller.showMyLocation();
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
