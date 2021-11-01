//
//  BMKMultiPointOverlay.h
//  MapComponent
//
//  Created by zhaoxiangru on 2021/3/30.
//  Copyright © 2021 Baidu. All rights reserved.
//

#import "BMKMultiPoint.h"
#import "BMKOverlay.h"
NS_ASSUME_NONNULL_BEGIN
/// 海量点overlay单个点对象（since 6.4.0）
@interface BMKMultiPointItem : NSObject<NSCopying, BMKAnnotation>

/// 经纬度
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

/// 标题
@property (nonatomic, copy) NSString *title;

/// 副标题
@property (nonatomic, copy) NSString *subtitle;

@end


@interface BMKMultiPointOverlay : BMKMultiPoint <BMKOverlay>
{
    BMKMapRect _boundingMapRect;
}
///点对象集合
@property (nonatomic, readonly) NSArray<BMKMultiPointItem *> *items;

/// 根据指定坐标点生成海量点图层（since 6.4.0）
/// @param items 指定的点对象集合
/// @return 新生成的海量点图层对象
+ (instancetype)multiPointOverlayWithMultiPointItems:(NSArray<BMKMultiPointItem *> *)items;

/**
 *重新设置海量点坐标
 *@param items 指定的点对象集合
 *@return 是否设置成功
 */
- (BOOL)setMultiPointOverlayWithMultiPointItems:(NSArray<BMKMultiPointItem *> *)items;
@end

NS_ASSUME_NONNULL_END
