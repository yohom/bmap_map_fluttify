//
//  BMKGeodesicLineView.h
//  MapComponent
//
//  Created by zhangbaojin on 2021/3/23.
//  Copyright © 2021 Baidu. All rights reserved.
//

#import "BMKOverlayGLBasicView.h"
#import "BMKGeodesicLine.h"

NS_ASSUME_NONNULL_BEGIN
/// 此类用于定义一个大地曲线View since 6.3.0
@interface BMKGeodesicLineView : BMKOverlayGLBasicView

/// 根据指定的大地曲线生成一个大地曲线View
/// @param geodesicLine 指定的大地曲线数据对象
/// @return 新生成的大地曲线View
- (nullable instancetype)initWithGeodesicLine:(BMKGeodesicLine *)geodesicLine;

/// 该View对应的大地曲线数据对象
@property (nonatomic, readonly) BMKGeodesicLine *geodesicLine;

@end

NS_ASSUME_NONNULL_END
