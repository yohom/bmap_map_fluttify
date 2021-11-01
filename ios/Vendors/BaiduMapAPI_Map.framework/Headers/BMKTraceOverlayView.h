//
//  BMKTraceOverlayView.h
//  MapComponent
//
//  Created by Baidu on 2021/5/13.
//  Copyright © 2021 Baidu. All rights reserved.
//

#import "BMKOverlayGLBasicView.h"

#import "BMKTraceOverlay.h"

NS_ASSUME_NONNULL_BEGIN
/// 此类用于定义一个轨迹View since 6.4.0
@interface BMKTraceOverlayView : BMKOverlayGLBasicView

/// 根据指定的轨迹生成一个轨迹View
/// @param traceOverlay 指定的轨迹数据对象
/// @return 新生成的轨迹View
- (nullable instancetype)initWithTraceOverlay:(BMKTraceOverlay *)traceOverlay;

/// 该View对应的折线数据对象
@property (nonatomic, readonly) BMKTraceOverlay *traceOverlay;


@end

NS_ASSUME_NONNULL_END
