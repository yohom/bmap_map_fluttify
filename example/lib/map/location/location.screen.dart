import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:bmap_map_fluttify_example/utils/utils.export.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Location _location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plugin example app')),
      body: DecoratedColumn(
        padding: EdgeInsets.symmetric(horizontal: kSpace16),
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text('获取单次定位'),
            onPressed: () async {
              if (await requestPermission()) {
                // final location = await BmapLocation.instance.fetchLocation();
                // setState(() => _location = location);
              }
            },
          ),
          ElevatedButton(
            child: Text('获取连续定位'),
            onPressed: () async {
              // if (await requestPermission()) {
              //   await for (final location
              //       in BmapLocation.instance.start()) {
              //     debugPrint('获取到定位: $location');
              //     setState(() => _location = location);
              //   }
              // }
            },
          ),
          ElevatedButton(
            child: Text('停止定位'),
            onPressed: () async {
              if (await requestPermission()) {
                await BmapLocation.instance.stop();
                setState(() => _location = null);
              }
            },
          ),
          if (_location != null)
            Center(
              child: Text(
                _location.toString(),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
