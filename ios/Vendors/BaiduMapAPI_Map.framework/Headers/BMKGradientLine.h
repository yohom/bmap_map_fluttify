//
//  BMKGradientLine.h
//  MapComponent
//
//  Created by zhangbaojin on 2021/6/15.
//  Copyright © 2021 Baidu. All rights reserved.
//

#import "BMKMultiPoint.h"
#import "BMKOverlay.h"
#import "BMKLineDrawType.h"

NS_ASSUME_NONNULL_BEGIN
/// 此类用于定义一个颜色渐变线  since 6.4.0
@interface BMKGradientLine : BMKMultiPoint<BMKOverlay>

/// 颜色渐变线经度跨180所需字段
/// 不跨180为kBMKLineDirectionCross180TypeNone，
/// 从东往西为kBMKLineDirectionCross180TypeEAST_TO_WEST
/// 从西往东为kBMKLineDirectionCross180TypeWEST_TO_EAST
/// 默认kBMKLineDirectionCross180TypeNone
@property (nonatomic, assign) BMKLineDirectionCross180Type lineDirectionCross180;

/// 颜色索引数组
@property (nonatomic, copy) NSArray<NSNumber *> *drawIndexs;

/// 分段颜色绘制，根据指定坐标点生成一段颜色渐变线
/// 分段颜色绘制：其对应的BMKGradientLineView必须设置strokeColors属性
/// @param points  指定的直角坐标点数组
/// @param count  points数组中坐标点的个数
/// @param drawIndexs 颜色索引数组，成员为NSNumber,且为非负数，负数按0处理
/// @return 新生成的颜色渐变线对象
+ (nullable instancetype)gradientLineWithPoints:(BMKMapPoint *)points
                                          count:(NSUInteger)count
                                     drawIndexs:(NSArray<NSNumber *> *)drawIndexs;

/// 根据指定坐标点生成一段颜色渐变线
/// 分段颜色绘制：其对应的BMKGradientLineView必须设置strokeColors属性
/// @param coords 指定的经纬度坐标点数组
/// @param count  coords数组中坐标点的个数
/// @param drawIndexs 颜色索引数组，成员为NSNumber,且为非负数，负数按0处理
/// @return 新生成的颜色渐变线对象
+ (nullable instancetype)gradientLineWithCoordinates:(CLLocationCoordinate2D *)coords
                                               count:(NSUInteger)count
                                          drawIndexs:(NSArray<NSNumber *> *)drawIndexs;

/// 重新设置颜色渐变线坐标点
/// @param points 指定的直角坐标点数组
/// @param count points数组中坐标点的个数
/// @param drawIndexs 颜色索引数组，成员为NSNumber,且为非负数，负数按0处理
/// @return 是否设置成功
- (BOOL)setGradientLineWithPoints:(BMKMapPoint *)points
                            count:(NSInteger)count
                       drawIndexs:(NSArray<NSNumber *> *)drawIndexs;

/// 重新设置颜色渐变线坐标点
/// @param coords 指定的经纬度坐标点数组
/// @param count coords数组中坐标点的个数
/// @param drawIndexs 颜色索引数组，成员为NSNumber,且为非负数，负数按0处理
/// @return 是否设置成功
- (BOOL)setGradientLineWithCoordinates:(CLLocationCoordinate2D *)coords
                                 count:(NSInteger)count
                            drawIndexs:(NSArray<NSNumber *> *)drawIndexs;

@end

NS_ASSUME_NONNULL_END
