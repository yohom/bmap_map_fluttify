//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import <BMKLocationKit/BMKLocationComponent.h>

@interface BMKPolylineViewFactory : NSObject <FlutterPlatformViewFactory>

- (instancetype)initWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar;

@property(nonatomic) NSObject<FlutterPluginRegistrar>* registrar;

@end

@interface BMKPolylineViewPlatformView : NSObject <BMKMapViewDelegate, BMKOfflineMapDelegate, FlutterPlatformView>

- (instancetype)initWithViewId:(int64_t)viewId frame:(CGRect)frame registrar:(NSObject <FlutterPluginRegistrar> *)registrar arguments:(id _Nullable)args;

@property(nonatomic) NSObject<FlutterPluginRegistrar>* registrar;

@end
