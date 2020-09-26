//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

#import "BMKGroundOverlayViewFactory.h"
#import "BmapMapFluttifyPlugin.h"
#import <objc/runtime.h>
#import "FluttifyMessageCodec.h"

// Dart端一次方法调用所存在的栈, 只有当MethodChannel传递参数受限时, 再启用这个容器
extern NSMutableDictionary<NSString*, NSObject*>* STACK;
// Dart端随机存取对象的容器
extern NSMutableDictionary<NSNumber*, NSObject*>* HEAP;
// 日志打印开关
extern BOOL enableLog;

@implementation BMKGroundOverlayViewFactory {
}

- (instancetype)initWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
  }

  return self;
}

- (NSObject<FlutterMessageCodec>*)createArgsCodec {
  return [FlutterStandardMessageCodec sharedInstance];
}

- (NSObject <FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id _Nullable)args {
  return [[BMKGroundOverlayViewPlatformView alloc] initWithViewId:viewId frame: frame registrar:_registrar arguments: args];
}

@end

@implementation BMKGroundOverlayViewPlatformView {
  int64_t _viewId;
  CGRect _frame;
  NSDictionary<NSString *, Handler>* _handlerMap;
  BMKGroundOverlayView* _view;
  id _args;
}

- (instancetype)initWithViewId:(int64_t)viewId frame:(CGRect)frame registrar:(NSObject <FlutterPluginRegistrar> *)registrar arguments:(id _Nullable)args {
  self = [super init];
  if (self) {
    _viewId = viewId;
    _registrar = registrar;
    _frame = frame;
    _args = args;
  }

  return self;
}

- (UIView *)view {
  __weak __typeof(self)weakSelf = self;
  if (_view == nil) {
    NSDictionary<NSString*, id>* params = (NSDictionary<NSString*, id>*) _args;

    _view = [[BMKGroundOverlayView alloc] initWithFrame:_frame];

    ////////////////////////////////初始化UiKitView////////////////////////////////////////

    ////////////////////////////////初始化UiKitView////////////////////////////////////////

    // 这里用一个magic number调整一下id
    // 同时存放viewId和refId的对象, 供后续viewId转refId使用
    HEAP[[NSString stringWithFormat:@"%@", @(2147483647 - _viewId)]] = _view;
    HEAP[[NSString stringWithFormat:@"%@", @(_view.hash)]] = _view;
  }

  //region method call handler
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"com.fluttify/bmap_map_fluttify/BMKGroundOverlayView"
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];

  [channel setMethodCallHandler:^(FlutterMethodCall *methodCall, FlutterResult methodResult) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) [methodCall arguments];

    __strong __typeof(weakSelf) strongSelf = weakSelf;
    if (strongSelf != nil && strongSelf->_handlerMap[methodCall.method] != nil) {
      strongSelf->_handlerMap[methodCall.method](strongSelf->_registrar, args, methodResult);
    } else {
      methodResult(FlutterMethodNotImplemented);
    }
  }];
  //endregion

  //region handlers
  _handlerMap = @{
      @"BMKGroundOverlayView::initWithGroundOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // args
          // ref arg
          BMKGroundOverlay* groundOverlay = (BMKGroundOverlay*) args[@"groundOverlay"];
      
          // ref
          BMKGroundOverlayView* ref = (BMKGroundOverlayView*) args[@"__this__"];
      
          // print log
          if (enableLog) {
              NSLog(@"fluttify-objc: BMKGroundOverlayView@%@::initWithGroundOverlay(%@)", args[@"refId"], args[@"groundOverlay"]);
          }
      
          // invoke native method
          id result = [ref initWithGroundOverlay: groundOverlay];
      
          // result
          // return a ref
          id __result__ = result;
      
          methodResult(__result__);
      },
      @"BMKGroundOverlayView::get_groundOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKGroundOverlayView::get_groundOverlay");
          }
      
          // ref object
          BMKGroundOverlayView* ref = (BMKGroundOverlayView*) args[@"__this__"];
      
          // invoke native method
          BMKGroundOverlay* result = ref.groundOverlay;
      
          // return a ref
          id __result__ = result;
      
          methodResult(__result__);
      },
      
  };
  //endregion
  return _view;
}

//region delegate
- (void)mapViewDidFinishLoading : (BMKMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapViewDidFinishLoading");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapViewDidFinishLoading" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView}];
  });
  
}

- (void)mapViewDidRenderValidData : (BMKMapView*)mapView withError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapViewDidRenderValidData_withError");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  NSError* argerror = error;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapViewDidRenderValidData_withError" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"error": argerror == nil ? [NSNull null] : argerror}];
  });
  
}

- (void)mapViewDidFinishRendering : (BMKMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapViewDidFinishRendering");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapViewDidFinishRendering" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView onDrawMapFrame: (BMKMapStatus*)status
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_onDrawMapFrame");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  BMKMapStatus* argstatus = status;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_onDrawMapFrame" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"status": argstatus == nil ? [NSNull null] : argstatus}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView regionWillChangeAnimated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_regionWillChangeAnimated");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_regionWillChangeAnimated" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"animated": arganimated == nil ? [NSNull null] : arganimated}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView regionWillChangeAnimated: (BOOL)animated reason: (BMKRegionChangeReason)reason
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_regionWillChangeAnimated_reason");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);
  // enum callback arg
  NSNumber* argreason = @((NSInteger) reason);

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_regionWillChangeAnimated_reason" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"animated": arganimated == nil ? [NSNull null] : arganimated, @"reason": argreason == nil ? [NSNull null] : argreason}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView regionDidChangeAnimated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_regionDidChangeAnimated");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_regionDidChangeAnimated" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"animated": arganimated == nil ? [NSNull null] : arganimated}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView regionDidChangeAnimated: (BOOL)animated reason: (BMKRegionChangeReason)reason
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_regionDidChangeAnimated_reason");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);
  // enum callback arg
  NSNumber* argreason = @((NSInteger) reason);

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_regionDidChangeAnimated_reason" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"animated": arganimated == nil ? [NSNull null] : arganimated, @"reason": argreason == nil ? [NSNull null] : argreason}];
  });
  
}

- (BMKAnnotationView*)mapView : (BMKMapView*)mapView viewForAnnotation: (id<BMKAnnotation>)annotation
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_viewForAnnotation");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  id<BMKAnnotation> argannotation = annotation;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_viewForAnnotation"
                arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"annotation": argannotation == nil ? [NSNull null] : argannotation}
                   result:^(id result) {}]; // 由于结果是异步返回, 这里用不上, 所以就不生成代码了
  });
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  ////////////////////////////如果需要手写代码, 请写在这里/////////////////////////////
  
  ////////////////////////////////////////////////////////////////////////////////
  
  return (BMKAnnotationView*) nil;
}

- (void)mapView : (BMKMapView*)mapView didAddAnnotationViews: (NSArray*)views
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_didAddAnnotationViews");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  NSArray* argviews = views;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_didAddAnnotationViews" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"views": argviews == nil ? [NSNull null] : argviews}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView clickAnnotationView: (BMKAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_clickAnnotationView");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  BMKAnnotationView* argview = view;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_clickAnnotationView" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"view": argview == nil ? [NSNull null] : argview}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView didSelectAnnotationView: (BMKAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_didSelectAnnotationView");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  BMKAnnotationView* argview = view;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_didSelectAnnotationView" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"view": argview == nil ? [NSNull null] : argview}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView didDeselectAnnotationView: (BMKAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_didDeselectAnnotationView");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  BMKAnnotationView* argview = view;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_didDeselectAnnotationView" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"view": argview == nil ? [NSNull null] : argview}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView annotationView: (BMKAnnotationView*)view didChangeDragState: (NSUInteger)newState fromOldState: (NSUInteger)oldState
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_annotationView_didChangeDragState_fromOldState");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  BMKAnnotationView* argview = view;
  // primitive callback arg
  NSNumber* argnewState = @(newState);
  // primitive callback arg
  NSNumber* argoldState = @(oldState);

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_annotationView_didChangeDragState_fromOldState" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"view": argview == nil ? [NSNull null] : argview, @"newState": argnewState == nil ? [NSNull null] : argnewState, @"oldState": argoldState == nil ? [NSNull null] : argoldState}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView annotationViewForBubble: (BMKAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_annotationViewForBubble");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  BMKAnnotationView* argview = view;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_annotationViewForBubble" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"view": argview == nil ? [NSNull null] : argview}];
  });
  
}

- (BMKOverlayView*)mapView : (BMKMapView*)mapView viewForOverlay: (id<BMKOverlay>)overlay
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_viewForOverlay");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  id<BMKOverlay> argoverlay = overlay;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_viewForOverlay"
                arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"overlay": argoverlay == nil ? [NSNull null] : argoverlay}
                   result:^(id result) {}]; // 由于结果是异步返回, 这里用不上, 所以就不生成代码了
  });
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  ////////////////////////////如果需要手写代码, 请写在这里/////////////////////////////
  
  ////////////////////////////////////////////////////////////////////////////////
  
  return (BMKOverlayView*) nil;
}

- (void)mapView : (BMKMapView*)mapView didAddOverlayViews: (NSArray*)overlayViews
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_didAddOverlayViews");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  NSArray* argoverlayViews = overlayViews;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_didAddOverlayViews" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"overlayViews": argoverlayViews == nil ? [NSNull null] : argoverlayViews}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView onClickedBMKOverlayView: (BMKOverlayView*)overlayView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_onClickedBMKOverlayView");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  BMKOverlayView* argoverlayView = overlayView;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_onClickedBMKOverlayView" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"overlayView": argoverlayView == nil ? [NSNull null] : argoverlayView}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView onClickedMapPoi: (BMKMapPoi*)mapPoi
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_onClickedMapPoi");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // ref callback arg
  BMKMapPoi* argmapPoi = mapPoi;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_onClickedMapPoi" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"mapPoi": argmapPoi == nil ? [NSNull null] : argmapPoi}];
  });
  
}

- (void)mapView : (BMKMapView*)mapView onClickedMapBlank: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_onClickedMapBlank");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // struct callback arg
  NSValue* argcoordinate = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_onClickedMapBlank" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"coordinate": argcoordinate == nil ? [NSNull null] : argcoordinate}];
  });
  
}

- (void)mapview : (BMKMapView*)mapView onDoubleClick: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapview_onDoubleClick");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // struct callback arg
  NSValue* argcoordinate = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapview_onDoubleClick" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"coordinate": argcoordinate == nil ? [NSNull null] : argcoordinate}];
  });
  
}

- (void)mapview : (BMKMapView*)mapView onLongClick: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapview_onLongClick");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // struct callback arg
  NSValue* argcoordinate = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapview_onLongClick" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"coordinate": argcoordinate == nil ? [NSNull null] : argcoordinate}];
  });
  
}

- (void)mapview : (BMKMapView*)mapView onForceTouch: (CLLocationCoordinate2D)coordinate force: (CGFloat)force maximumPossibleForce: (CGFloat)maximumPossibleForce
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapview_onForceTouch_force_maximumPossibleForce");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // struct callback arg
  NSValue* argcoordinate = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  
  // primitive callback arg
  NSNumber* argforce = @(force);
  // primitive callback arg
  NSNumber* argmaximumPossibleForce = @(maximumPossibleForce);

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapview_onForceTouch_force_maximumPossibleForce" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"coordinate": argcoordinate == nil ? [NSNull null] : argcoordinate, @"force": argforce == nil ? [NSNull null] : argforce, @"maximumPossibleForce": argmaximumPossibleForce == nil ? [NSNull null] : argmaximumPossibleForce}];
  });
  
}

- (void)mapStatusDidChanged : (BMKMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapStatusDidChanged");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapStatusDidChanged" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView}];
  });
  
}

- (void)mapview : (BMKMapView*)mapView baseIndoorMapWithIn: (BOOL)flag baseIndoorMapInfo: (BMKBaseIndoorMapInfo*)info
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapview_baseIndoorMapWithIn_baseIndoorMapInfo");
  }

  // convert to jsonable arg
  // ref callback arg
  BMKMapView* argmapView = mapView;
  // primitive callback arg
  NSNumber* argflag = @(flag);
  // ref callback arg
  BMKBaseIndoorMapInfo* arginfo = info;

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapview_baseIndoorMapWithIn_baseIndoorMapInfo" arguments:@{@"mapView": argmapView == nil ? [NSNull null] : argmapView, @"flag": argflag == nil ? [NSNull null] : argflag, @"info": arginfo == nil ? [NSNull null] : arginfo}];
  });
  
}

- (void)onGetOfflineMapState : (int)type withState: (int)state
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:[NSString stringWithFormat:@"BMKOfflineMapDelegate::Callback@%@", @(_view.hash)]
              binaryMessenger:[_registrar messenger]
                        codec:[FlutterStandardMethodCodec codecWithReaderWriter:[[FluttifyReaderWriter alloc] init]]];
  // print log
  if (enableLog) {
    NSLog(@"BMKOfflineMapDelegate::onGetOfflineMapState_withState");
  }

  // convert to jsonable arg
  // primitive callback arg
  NSNumber* argtype = @(type);
  // primitive callback arg
  NSNumber* argstate = @(state);

  dispatch_async(dispatch_get_main_queue(), ^{
    [channel invokeMethod:@"Callback::BMKOfflineMapDelegate::onGetOfflineMapState_withState" arguments:@{@"type": argtype == nil ? [NSNull null] : argtype, @"state": argstate == nil ? [NSNull null] : argstate}];
  });
  
}

//endregion

@end
