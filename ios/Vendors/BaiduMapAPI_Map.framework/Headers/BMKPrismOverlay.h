//
//  BMKPrismOverlay.h
//  MapComponent
//
//  Created by zhangbaojin on 2021/4/19.
//  Copyright © 2021 Baidu. All rights reserved.
//

#import "BMKMultiPoint.h"
#import "BMKOverlay.h"

@class BMKBuildInfo;

NS_ASSUME_NONNULL_BEGIN
/// 此类用于定义一个3D棱柱  since 6.4.0
@interface BMKPrismOverlay : BMKMultiPoint<BMKOverlay>

/// 高度
@property (nonatomic, assign) float height;

/// 根据指定坐标点生成棱柱
/// @param points  指定的直角坐标点数组
/// @param count 点的个数
/// @return 生成的棱柱
+ (nullable instancetype)prismOverlayWithPoints:(BMKMapPoint *)points count:(NSUInteger)count;

/// 根据经纬度生成棱柱
/// @param coords 经纬度
/// @param count 点的个数
/// @return 生成的棱柱
+ (nullable instancetype)prismOverlayWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSUInteger)count;

/// 重新设置坐标点.
/// @param points  指定的直角坐标点数组，C数组，内部会做copy，调用者负责内存管理。
/// @param count 坐标点的个数
/// @return 是否设置成功
- (BOOL)setPrismOverlayWithPoints:(BMKMapPoint *)points count:(NSInteger)count;

/// 重新设置坐标点.
/// @param coords  指定的经纬度数组，C数组，内部会做copy，调用者负责内存管理。
/// @param count 坐标点的个数
/// @return 是否设置成功
- (BOOL)setPrismOverlayWithCoordinates:(CLLocationCoordinate2D *)coords count:(NSInteger)count;


@end


#pragma mark - 绘制地图建筑物
@interface BMKPrismOverlay (BuildAPI)

/// 建筑物信息
@property (nonatomic, strong) BMKBuildInfo *buildInfo;

@end

NS_ASSUME_NONNULL_END
