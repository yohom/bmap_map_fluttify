import 'dart:typed_data';

import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class ScreenShotScreen extends StatefulWidget {
  @override
  _ScreenShotScreenState createState() => _ScreenShotScreenState();
}

class _ScreenShotScreenState extends State<ScreenShotScreen> {
  Uint8List _data;
  BmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('截图')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: BmapView(
              onMapCreated: (controller) async {
                _controller = controller;
              },
            ),
          ),
          Flexible(
            flex: 3,
            child: DecoratedColumn(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () async {
                    _controller.screenShot((data) async {
                      setState(() {
                        _data = data;
                      });
                    });
                  },
                  child: Text('截图'),
                ),
                if (_data != null) Image.memory(_data)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
