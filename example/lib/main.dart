import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BmapService.init(
    iosKey: 'KryNE2jVLpf3tCYxpxnnc5wEjGyztvEf',
    androidKey: null,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: BmapView(),
      ),
    );
  }
}
