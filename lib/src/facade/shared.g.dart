import 'package:flutter/services.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:bmap_map_fluttify/src/android/android.export.g.dart';

const kBmapMapFluttifyMessageCodec = FluttifyMessageCodec(tag: 'bmap_map_fluttify'/*, androidCaster: BmapMapFluttifyAndroidAs, iosCaster: BmapMapFluttifyIOSAs*/);
const kBmapMapFluttifyMethodCodec = StandardMethodCodec(kBmapMapFluttifyMessageCodec);
const kBmapMapFluttifyChannel = MethodChannel('me.yohom/bmap_map_fluttify', kBmapMapFluttifyMethodCodec);
const kBmapMapFluttifyProjectName = 'bmap_map_fluttify';

Future<void> releaseBmapMapFluttifyPool() async {
  final isCurrentPlugin = (Ref it) => it.tag__ == kBmapMapFluttifyProjectName;
  await gGlobalReleasePool.where(isCurrentPlugin).release_batch();
  gGlobalReleasePool.removeWhere(isCurrentPlugin);
}