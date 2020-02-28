import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bmap_map_fluttify/bmap_map_fluttify.dart';

void main() {
  const MethodChannel channel = MethodChannel('bmap_map_fluttify');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await BmapMapFluttify.platformVersion, '42');
  });
}
