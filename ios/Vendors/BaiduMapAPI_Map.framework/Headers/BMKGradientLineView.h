//
//  BMKGradientLineView.h
//  MapComponent
//
//  Created by zhangbaojin on 2021/6/15.
//  Copyright © 2021 Baidu. All rights reserved.
//

#import "BMKOverlayGLBasicView.h"
#import "BMKGradientLine.h"

NS_ASSUME_NONNULL_BEGIN
/// 此类用于定义一个颜色渐变线View since 6.4.0
@interface BMKGradientLineView : BMKOverlayGLBasicView

/// 根据指定的颜色渐变线生成一个颜色渐变线View
/// @param gradientLine 指定的颜色渐变线数据对象
/// @return 新生成的颜色渐变线View
- (nullable instancetype)initWithGradientLine:(BMKGradientLine *)gradientLine;

/// 该View对应的颜色渐变线数据对象
@property (nonatomic, readonly) BMKGradientLine *gradientLine;

/// 渐变颜色数组
@property (nonatomic, copy) NSArray<UIColor *> *strokeColors;

@end

NS_ASSUME_NONNULL_END
