//
//  BMKMultiPointOverlayView.h
//  MapComponent
//
//  Created by zhaoxiangru on 2021/3/30.
//  Copyright © 2021 Baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BMKMultiPointOverlay.h"
#import "BMKOverlayGLBasicView.h"

NS_ASSUME_NONNULL_BEGIN
/// 点击海量点图层回调代理
@class BMKMultiPointOverlayView;
@protocol BMKMultiPointOverlayViewDelegate <NSObject>
/**
 *点中覆盖物的item后会回调此接口
 *@param multiPointOverlayView 覆盖物view信息
 *@param item 覆盖物view被点击的item
*/
- (void)multiPointOverlayView:(BMKMultiPointOverlayView *)multiPointOverlayView didItemTapped:(BMKMultiPointItem *)item;
@end


@interface BMKMultiPointOverlayView : BMKOverlayGLBasicView
/// 标注纹理图片
@property (nonatomic, strong) UIImage *icon;

/// 纹理渲染大小，默认为icon图片大小
@property (nonatomic, assign) CGSize pointSize;

/// 经纬度对应图片中的位置，默认为(0.5,0.5)，范围[0-1] 负值自动取其绝对值 左上角为 (0,0) 右下角为 (1,1)
@property (nonatomic, assign) CGPoint anchor;

/// 该View对应的海量点数据对象
@property (nonatomic, readonly) BMKMultiPointOverlay *multiPointOverlay;

/// 点击海量点图层回调代理
@property (nonatomic, weak) id<BMKMultiPointOverlayViewDelegate> delegate;

/// 根据指定的海量点生成一个海量点图层View
/// @param multiPointOverlay 指定的海量点数据对象
/// @return 新生成的海量点图层View
- (nullable instancetype)initWithMultiPointOverlay:(BMKMultiPointOverlay *)multiPointOverlay;
@end

NS_ASSUME_NONNULL_END
