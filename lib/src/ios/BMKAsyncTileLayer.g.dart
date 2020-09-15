// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:bmap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class BMKAsyncTileLayer extends BMKTileLayer with BMKAnnotation, BMKOverlay {
  //region constants
  static const String name__ = 'BMKAsyncTileLayer';

  
  //endregion

  //region creators
  static Future<BMKAsyncTileLayer> create__({ bool init = true /* ios only */ }) async {
    final refId = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::createBMKAsyncTileLayer', {'init': init});
    final object = BMKAsyncTileLayer()..refId = refId..tag__ = 'bmap_map_fluttify';
    return object;
  }
  
  static Future<List<BMKAsyncTileLayer>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('ObjectFactory::create_batchBMKAsyncTileLayer', {'length': length, 'init': init});
  
    final List<BMKAsyncTileLayer> typedResult = resultBatch.map((result) => BMKAsyncTileLayer()..refId = result..tag__ = 'bmap_map_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<void> loadTileForX_y_zoom_result(int x, int y, int zoom, void result(UIImage tileImage, NSError error)) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: BMKAsyncTileLayer@$refId::loadTileForX([\'x\':$x, \'y\':$y, \'zoom\':$zoom])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('com.fluttify/bmap_map_fluttify', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify'))).invokeMethod('BMKAsyncTileLayer::loadTileForX_y_zoom_result', {"x": x, "y": y, "zoom": zoom, "__this__": this});
  
  
    // handle native call
    MethodChannel('void|UIImage*#tileImage,NSError*#error::Callback@$refId', StandardMethodCodec(FluttifyMessageCodec('bmap_map_fluttify')))
        .setMethodCallHandler((methodCall) async {
          try {
            final args = methodCall.arguments as Map;
            switch (methodCall.method) {
              case 'Callback::void|UIImage*#tileImage,NSError*#error::void|UIImage*#tileImage,NSError*#error':
                // print log
                if (fluttifyLogEnabled) {
          
                }
          
                // handle the native call
                if (result != null) result(TypeOpBmapMapFluttifyIOS((args['tileImage'] as Object))?.as__<UIImage>(), TypeOpBmapMapFluttifyIOS((args['error'] as Object))?.as__<NSError>());
                break;
              default:
                break;
            }
          } catch (e) {
            debugPrint(e);
            throw e;
          }
        });
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
      return __return__;
    }
  }
  
  //endregion
}

extension BMKAsyncTileLayer_Batch on List<BMKAsyncTileLayer> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}