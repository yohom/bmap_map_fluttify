//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

#import "BMKOverlayPathViewFactory.h"
#import "BmapMapFluttifyPlugin.h"
#import <objc/runtime.h>

// Dart端一次方法调用所存在的栈, 只有当MethodChannel传递参数受限时, 再启用这个容器
extern NSMutableDictionary<NSString*, NSObject*>* STACK;
// Dart端随机存取对象的容器
extern NSMutableDictionary<NSNumber*, NSObject*>* HEAP;
// 日志打印开关
extern BOOL enableLog;

@implementation BMKOverlayPathViewFactory {
}

- (instancetype)initWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
  }

  return self;
}

- (NSObject <FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id _Nullable)args {
  return [[BMKOverlayPathViewPlatformView alloc] initWithViewId:viewId frame: frame registrar:_registrar];
}

@end

@implementation BMKOverlayPathViewPlatformView {
  int64_t _viewId;
  CGRect _frame;
  NSDictionary<NSString *, Handler> *_handlerMap;
}

- (instancetype)initWithViewId:(int64_t)viewId frame:(CGRect)frame registrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  self = [super init];
  if (self) {
    _viewId = viewId;
    _registrar = registrar;
    _frame = frame;
  }

  return self;
}

- (UIView *)view {
  BMKOverlayPathView *view = [[BMKOverlayPathView alloc] initWithFrame:_frame];
  // 这里用一个magic number调整一下id
  HEAP[@(2147483647 - _viewId)] = view;

  //region handlers
  _handlerMap = @{
      @"BMKOverlayPathView::createPath": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // args
      
      
          // ref
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          // print log
          if (enableLog) {
              NSLog(@"fluttify-objc: BMKOverlayPathView@%@::createPath()", args[@"refId"]);
          }
      
          // invoke native method
          [ref createPath ];
      
          // result
          // 无返回值
          NSString* jsonableResult = @"success";
      
          methodResult(jsonableResult);
      },
      @"BMKOverlayPathView::invalidatePath": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // args
      
      
          // ref
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          // print log
          if (enableLog) {
              NSLog(@"fluttify-objc: BMKOverlayPathView@%@::invalidatePath()", args[@"refId"]);
          }
      
          // invoke native method
          [ref invalidatePath ];
      
          // result
          // 无返回值
          NSString* jsonableResult = @"success";
      
          methodResult(jsonableResult);
      },
      @"BMKOverlayPathView::get_fillColor": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::get_fillColor");
          }
      
          // ref object
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          // invoke native method
          UIColor* result = ref.fillColor;
      
          // return a ref
          HEAP[@((result).hash)] = result;
          NSNumber* jsonableResult = @((result).hash);
      
          methodResult(jsonableResult);
      },
      
      @"BMKOverlayPathView::get_strokeColor": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::get_strokeColor");
          }
      
          // ref object
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          // invoke native method
          UIColor* result = ref.strokeColor;
      
          // return a ref
          HEAP[@((result).hash)] = result;
          NSNumber* jsonableResult = @((result).hash);
      
          methodResult(jsonableResult);
      },
      
      @"BMKOverlayPathView::get_lineWidth": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::get_lineWidth");
          }
      
          // ref object
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          // invoke native method
          CGFloat result = ref.lineWidth;
      
          // 返回值: Value
          id jsonableResult = @(result);
      
          methodResult(jsonableResult);
      },
      
      @"BMKOverlayPathView::get_miterLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::get_miterLimit");
          }
      
          // ref object
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          // invoke native method
          CGFloat result = ref.miterLimit;
      
          // 返回值: Value
          id jsonableResult = @(result);
      
          methodResult(jsonableResult);
      },
      
      @"BMKOverlayPathView::get_lineDashPhase": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::get_lineDashPhase");
          }
      
          // ref object
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          // invoke native method
          CGFloat result = ref.lineDashPhase;
      
          // 返回值: Value
          id jsonableResult = @(result);
      
          methodResult(jsonableResult);
      },
      
      @"BMKOverlayPathView::get_lineDashPattern": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::get_lineDashPattern");
          }
      
          // ref object
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          // invoke native method
          NSArray* result = ref.lineDashPattern;
      
          // 返回值: 列表
          NSMutableArray* jsonableResult = [NSMutableArray array];
          for (int __i__ = 0; __i__ < result.count; __i__++) {
              NSObject* object = [result objectAtIndex:__i__];
              [jsonableResult addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(jsonableResult);
      },
      
      @"BMKOverlayPathView::set_fillColor": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::set_fillColor");
          }
      
          // args
          // ref arg
          UIColor* fillColor = (UIColor*) HEAP[@([args[@"fillColor"] integerValue])];
      
          // ref
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          ref.fillColor = fillColor;
          methodResult(@"success");
      },
      
      @"BMKOverlayPathView::set_strokeColor": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::set_strokeColor");
          }
      
          // args
          // ref arg
          UIColor* strokeColor = (UIColor*) HEAP[@([args[@"strokeColor"] integerValue])];
      
          // ref
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          ref.strokeColor = strokeColor;
          methodResult(@"success");
      },
      
      @"BMKOverlayPathView::set_lineWidth": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::set_lineWidth");
          }
      
          // args
          // jsonable arg
          CGFloat lineWidth = [args[@"lineWidth"] floatValue];
      
          // ref
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          ref.lineWidth = lineWidth;
          methodResult(@"success");
      },
      
      @"BMKOverlayPathView::set_miterLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::set_miterLimit");
          }
      
          // args
          // jsonable arg
          CGFloat miterLimit = [args[@"miterLimit"] floatValue];
      
          // ref
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          ref.miterLimit = miterLimit;
          methodResult(@"success");
      },
      
      @"BMKOverlayPathView::set_lineDashPhase": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::set_lineDashPhase");
          }
      
          // args
          // jsonable arg
          CGFloat lineDashPhase = [args[@"lineDashPhase"] floatValue];
      
          // ref
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          ref.lineDashPhase = lineDashPhase;
          methodResult(@"success");
      },
      
      @"BMKOverlayPathView::set_lineDashPattern": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
          // print log
          if (enableLog) {
              NSLog(@"BMKOverlayPathView::set_lineDashPattern");
          }
      
          // args
          // list arg
          NSArray<NSNumber*>* lineDashPatternRefArray = (NSArray<NSNumber*> *) args[@"lineDashPattern"];
          NSMutableArray<NSArray*>* lineDashPattern = [NSMutableArray arrayWithCapacity:lineDashPatternRefArray.count];
          for (int __i__ = 0; __i__ < lineDashPatternRefArray.count; __i__++) {
              NSArray* item = (NSArray*) HEAP[[lineDashPatternRefArray objectAtIndex:__i__]];
              [lineDashPattern addObject:item];
          }
      
          // ref
          BMKOverlayPathView* ref = (BMKOverlayPathView*) HEAP[(NSNumber*) ((NSDictionary<NSString*, NSObject*>*) args)[@"refId"]];
      
          ref.lineDashPattern = lineDashPattern;
          methodResult(@"success");
      },
      
  };
  //endregion

  //region method call handler
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"com.fluttify/bmap_map_fluttify/BMKOverlayPathView"
            binaryMessenger:[_registrar messenger]];

  __weak __typeof(self)weakSelf = self;
  [channel setMethodCallHandler:^(FlutterMethodCall *methodCall, FlutterResult methodResult) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) [methodCall arguments];

    __strong __typeof(weakSelf)strongSelf = weakSelf;
    if (strongSelf->_handlerMap[methodCall.method] != nil) {
      strongSelf->_handlerMap[methodCall.method](strongSelf->_registrar, args, methodResult);
    } else {
      methodResult(FlutterMethodNotImplemented);
    }
  }];
  //endregion
  return view;
}

//region delegate
- (void)mapViewDidFinishLoading : (BMKMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapViewDidFinishLoading");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapViewDidFinishLoading" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapViewDidRenderValidData : (BMKMapView*)mapView withError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapViewDidRenderValidData_withError");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapViewDidRenderValidData_withError" arguments:@{@"mapView": argmapView, @"error": argerror}];
  
}

- (void)mapViewDidFinishRendering : (BMKMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapViewDidFinishRendering");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapViewDidFinishRendering" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapView : (BMKMapView*)mapView onDrawMapFrame: (BMKMapStatus*)status
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_onDrawMapFrame");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argstatus = @(status.hash);
  HEAP[argstatus] = status;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_onDrawMapFrame" arguments:@{@"mapView": argmapView, @"status": argstatus}];
  
}

- (void)mapView : (BMKMapView*)mapView regionWillChangeAnimated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_regionWillChangeAnimated");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_regionWillChangeAnimated" arguments:@{@"mapView": argmapView, @"animated": arganimated}];
  
}

- (void)mapView : (BMKMapView*)mapView regionWillChangeAnimated: (BOOL)animated reason: (BMKRegionChangeReason)reason
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_regionWillChangeAnimated_reason");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);
  // enum callback arg
  NSNumber* argreason = @((NSInteger) reason);

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_regionWillChangeAnimated_reason" arguments:@{@"mapView": argmapView, @"animated": arganimated, @"reason": argreason}];
  
}

- (void)mapView : (BMKMapView*)mapView regionDidChangeAnimated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_regionDidChangeAnimated");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_regionDidChangeAnimated" arguments:@{@"mapView": argmapView, @"animated": arganimated}];
  
}

- (void)mapView : (BMKMapView*)mapView regionDidChangeAnimated: (BOOL)animated reason: (BMKRegionChangeReason)reason
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_regionDidChangeAnimated_reason");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);
  // enum callback arg
  NSNumber* argreason = @((NSInteger) reason);

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_regionDidChangeAnimated_reason" arguments:@{@"mapView": argmapView, @"animated": arganimated, @"reason": argreason}];
  
}

- (BMKAnnotationView*)mapView : (BMKMapView*)mapView viewForAnnotation: (id<BMKAnnotation>)annotation
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_viewForAnnotation");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argannotation = @(annotation.hash);
  HEAP[argannotation] = annotation;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_viewForAnnotation"
              arguments:@{}
                 result:^(id result) {}]; // 由于结果是异步返回, 这里用不上, 所以就不生成代码了
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  ////////////////////////////如果需要手写代码, 请写在这里/////////////////////////////
  
  ////////////////////////////////////////////////////////////////////////////////
  
  return nil;
}

- (void)mapView : (BMKMapView*)mapView didAddAnnotationViews: (NSArray*)views
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_didAddAnnotationViews");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // list callback arg
  NSMutableArray<NSNumber*>* argviews = [NSMutableArray arrayWithCapacity:views.count];
  for (int __i__ = 0; __i__ < views.count; __i__++) {
      NSObject* item = ((NSObject*) [views objectAtIndex:__i__]);
      // return to dart side data
      argviews[__i__] = @(item.hash);
      // add to HEAP
      HEAP[@(item.hash)] = item;
  }

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_didAddAnnotationViews" arguments:@{@"mapView": argmapView, @"views": argviews}];
  
}

- (void)mapView : (BMKMapView*)mapView clickAnnotationView: (BMKAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_clickAnnotationView");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_clickAnnotationView" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (BMKMapView*)mapView didSelectAnnotationView: (BMKAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_didSelectAnnotationView");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_didSelectAnnotationView" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (BMKMapView*)mapView didDeselectAnnotationView: (BMKAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_didDeselectAnnotationView");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_didDeselectAnnotationView" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (BMKMapView*)mapView annotationView: (BMKAnnotationView*)view didChangeDragState: (NSUInteger)newState fromOldState: (NSUInteger)oldState
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_annotationView_didChangeDragState_fromOldState");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;
  // primitive callback arg
  NSNumber* argnewState = @(newState);
  // primitive callback arg
  NSNumber* argoldState = @(oldState);

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_annotationView_didChangeDragState_fromOldState" arguments:@{@"mapView": argmapView, @"view": argview, @"newState": argnewState, @"oldState": argoldState}];
  
}

- (void)mapView : (BMKMapView*)mapView annotationViewForBubble: (BMKAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_annotationViewForBubble");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_annotationViewForBubble" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (BMKOverlayView*)mapView : (BMKMapView*)mapView viewForOverlay: (id<BMKOverlay>)overlay
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_viewForOverlay");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argoverlay = @(overlay.hash);
  HEAP[argoverlay] = overlay;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_viewForOverlay"
              arguments:@{}
                 result:^(id result) {}]; // 由于结果是异步返回, 这里用不上, 所以就不生成代码了
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  ////////////////////////////如果需要手写代码, 请写在这里/////////////////////////////
  
  ////////////////////////////////////////////////////////////////////////////////
  
  return nil;
}

- (void)mapView : (BMKMapView*)mapView didAddOverlayViews: (NSArray*)overlayViews
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_didAddOverlayViews");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // list callback arg
  NSMutableArray<NSNumber*>* argoverlayViews = [NSMutableArray arrayWithCapacity:overlayViews.count];
  for (int __i__ = 0; __i__ < overlayViews.count; __i__++) {
      NSObject* item = ((NSObject*) [overlayViews objectAtIndex:__i__]);
      // return to dart side data
      argoverlayViews[__i__] = @(item.hash);
      // add to HEAP
      HEAP[@(item.hash)] = item;
  }

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_didAddOverlayViews" arguments:@{@"mapView": argmapView, @"overlayViews": argoverlayViews}];
  
}

- (void)mapView : (BMKMapView*)mapView onClickedBMKOverlayView: (BMKOverlayView*)overlayView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_onClickedBMKOverlayView");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argoverlayView = @(overlayView.hash);
  HEAP[argoverlayView] = overlayView;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_onClickedBMKOverlayView" arguments:@{@"mapView": argmapView, @"overlayView": argoverlayView}];
  
}

- (void)mapView : (BMKMapView*)mapView onClickedMapPoi: (BMKMapPoi*)mapPoi
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_onClickedMapPoi");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argmapPoi = @(mapPoi.hash);
  HEAP[argmapPoi] = mapPoi;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_onClickedMapPoi" arguments:@{@"mapView": argmapView, @"mapPoi": argmapPoi}];
  
}

- (void)mapView : (BMKMapView*)mapView onClickedMapBlank: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapView_onClickedMapBlank");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // struct callback arg
  NSValue* coordinateValue = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  NSNumber* argcoordinate = @(coordinateValue.hash);
  HEAP[argcoordinate] = coordinateValue;
  

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapView_onClickedMapBlank" arguments:@{@"mapView": argmapView, @"coordinate": argcoordinate}];
  
}

- (void)mapview : (BMKMapView*)mapView onDoubleClick: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapview_onDoubleClick");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // struct callback arg
  NSValue* coordinateValue = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  NSNumber* argcoordinate = @(coordinateValue.hash);
  HEAP[argcoordinate] = coordinateValue;
  

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapview_onDoubleClick" arguments:@{@"mapView": argmapView, @"coordinate": argcoordinate}];
  
}

- (void)mapview : (BMKMapView*)mapView onLongClick: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapview_onLongClick");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // struct callback arg
  NSValue* coordinateValue = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  NSNumber* argcoordinate = @(coordinateValue.hash);
  HEAP[argcoordinate] = coordinateValue;
  

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapview_onLongClick" arguments:@{@"mapView": argmapView, @"coordinate": argcoordinate}];
  
}

- (void)mapview : (BMKMapView*)mapView onForceTouch: (CLLocationCoordinate2D)coordinate force: (CGFloat)force maximumPossibleForce: (CGFloat)maximumPossibleForce
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapview_onForceTouch_force_maximumPossibleForce");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // struct callback arg
  NSValue* coordinateValue = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  NSNumber* argcoordinate = @(coordinateValue.hash);
  HEAP[argcoordinate] = coordinateValue;
  
  // primitive callback arg
  NSNumber* argforce = @(force);
  // primitive callback arg
  NSNumber* argmaximumPossibleForce = @(maximumPossibleForce);

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapview_onForceTouch_force_maximumPossibleForce" arguments:@{@"mapView": argmapView, @"coordinate": argcoordinate, @"force": argforce, @"maximumPossibleForce": argmaximumPossibleForce}];
  
}

- (void)mapStatusDidChanged : (BMKMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapStatusDidChanged");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapStatusDidChanged" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapview : (BMKMapView*)mapView baseIndoorMapWithIn: (BOOL)flag baseIndoorMapInfo: (BMKBaseIndoorMapInfo*)info
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKMapViewDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKMapViewDelegate::mapview_baseIndoorMapWithIn_baseIndoorMapInfo");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* argflag = @(flag);
  // ref callback arg
  NSNumber* arginfo = @(info.hash);
  HEAP[arginfo] = info;

  [channel invokeMethod:@"Callback::BMKMapViewDelegate::mapview_baseIndoorMapWithIn_baseIndoorMapInfo" arguments:@{@"mapView": argmapView, @"flag": argflag, @"info": arginfo}];
  
}

- (void)onGetOfflineMapState : (int)type withState: (int)state
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:[NSString stringWithFormat:@"BMKOfflineMapDelegate::Callback@%@", @(2147483647 - _viewId)]
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"BMKOfflineMapDelegate::onGetOfflineMapState_withState");
  }

  // convert to jsonable arg
  // primitive callback arg
  NSNumber* argtype = @(type);
  // primitive callback arg
  NSNumber* argstate = @(state);

  [channel invokeMethod:@"Callback::BMKOfflineMapDelegate::onGetOfflineMapState_withState" arguments:@{@"type": argtype, @"state": argstate}];
  
}

//endregion

@end
