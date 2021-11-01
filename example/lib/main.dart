import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:flutter/material.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:oktoast/oktoast.dart';

import 'map/map.screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await enableFluttifyLog(true);
  await BmapService.instance.init(iosKey: 'KryNE2jVLpf3tCYxpxnnc5wEjGyztvEf');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('BMaps examples')),
          backgroundColor: Colors.grey.shade200,
          body: MapDemo(),
        ),
      ),
    );
  }
}
