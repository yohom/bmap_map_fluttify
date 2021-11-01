//
//  BMapType.h
//  bmengine
//      此文件内只定义c结构体或者枚举
//  Created by Zharen,Tabu on 2019/7/11.
//  Copyright © 2019 baidu. All rights reserved.
//

#ifndef __BMAP_TYPE_H__
#define __BMAP_TYPE_H__

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

#ifndef _BM_INT64
typedef long long  int64;
#define _BM_INT64
#endif

//point define
struct BMPoint
{
    double x;
    double y;
    double z;
};
typedef struct BMPoint BMPoint;
typedef struct BMPoint BMPoint3D;

CG_EXTERN const BMPoint BMPointZero;

//rect define
struct BMRect
{
    int64 left;
    int64 right;
    int64 top;
    int64 bottom;
};
typedef struct BMRect BMRect;

CG_EXTERN const BMRect BMRectZero;

//Quadrangle define
struct BMQuadrangle
{
    BMPoint    lb;
    BMPoint    lt;
    BMPoint  rt;
    BMPoint    rb;
};
typedef struct BMQuadrangle BMQuadrangle;

struct BMStreetScapeData
{
    
    //因为街景显示Android精度不够等原因,添加此字段 后续可能会删掉,此项不甚合理
    char           statusID[64]; // panoid
    CGFloat        fStreetIndicateAngle;    //街景Indicator旋转角度
    BOOL           bIsEagle;                //鹰眼模式
    int            unFlag;                    //扩展参数
    CGFloat        roadOffsetX;             //地图中心点和道路位置偏移X
    CGFloat        roadOffsetY;             //地图中心点和道路位置偏移Y
    
};

//地图状态结构信息
struct BMMapStatus
{
    CGFloat       fLevel;       // 比例尺，3－19级
    CGFloat       fRotation;    // 旋转角度
    CGFloat       fOverlooking; // 俯视角度
    BMPoint       ptCenter;     // 地图中心点
    BMQuadrangle  mapRound;     // 屏幕范围 屏幕地理坐标,注意：用户不需要更改此值
    BMRect        winRound;     // 屏幕范围 屏幕坐标,注意：用户不需要更改此值
    BMPoint       ptOffset;     // 偏移量
    struct BMStreetScapeData streetScape; //街景数据
    BOOL          bIndoorNavi;    // 是否室内导航，和c层CMapStatus一致
    CGFloat       fRoll;    //滚轴角，目前用于步行导航
    
};
typedef struct BMMapStatus BMMapStatus;

//地图状态结构信息
struct BMTime
{
    NSInteger    year;
    NSInteger    month;
    NSInteger    day;
    NSInteger    hour;
    NSInteger    minute;
    NSInteger    second;
};
typedef struct BMTime BMTime;


/**
 *    构造BMPoint
 *        @param    [in]    x    x信息
 *        @param    [in]    y    y信息
 *
 *        @return    成功返回qr转换后的BMRect
 */
CG_EXTERN BMPoint BMPointMake(double x,double y);
CG_EXTERN BMPoint BMPointMake2(double x,double y,double z);

/**
 *  比较两个点是否为同一坐标（只比较x和y）
 *
 *  @param point1 BMPoint1
 *  @param point2 BMPoint2
 *
 *  @return 返回比较结果
 */
CG_EXTERN BOOL BMPointEqualToPoint(BMPoint point1, BMPoint point2);

/**
 校验经纬度坐标数据是否合法

 @param point 地理坐标, 不区分bd09ll,bd09mc,wgs84,gcj02 64位系统下精度保证到小数点后第15位
 @return 返回结果：YES:合法坐标, NO:非法坐标
 */
CG_EXTERN BOOL BMPointIsValidPoint(BMPoint point);

/**
 校验经纬度坐标数据是否为零坐标

 @param point 地理坐标, 不区分bd09ll,bd09mc,wgs84,gcj02 64位系统下精度保证到小数点后第15位
 @return 返回结果：YES:是零坐标, NO:非零坐标
 */
CG_EXTERN BOOL BMPointIsZero(BMPoint point);


/**
 *    构造BMRect
 *        @param    [in]    left    left信息
 *        @param    [in]    right    right信息
 *        @param    [in]    top     top信息
 *        @param    [in]    bottom    bottom信息
 *
 *        @return    成功返回qr转换后的BMRect
 */
CG_EXTERN BMRect BMRectMake(int64 left, int64 right, int64 top, int64 bottom);

/**
 *    BMQuadrangle转换成BMRect
 *        @param    [in]    qr        输入的BMQuadrangle
 *
 *        @return    成功返回qr转换后的BMRect
 */
CG_EXTERN BMRect GetBMRect(BMQuadrangle qr);

/**
 *  判断两个BMRect是否相等
 *
 *  @param rect1 BMRect1
 *  @param rect2 BMRect2
 *
 *  @return 返回是否相同
 */
CG_EXTERN BOOL BMRectEqualToRect(BMRect rect1,BMRect rect2);

/**
 *  判断BMRect是否为全零
 *
 *  @param rect 输入的Rect
 *
 *  @return 返回是否全零
 */
CG_EXTERN BOOL isZeroBMRect(BMRect rect);


// map status 动画类型
typedef enum : NSUInteger {
    bmkMapStatusAnimationNone = 0,   //无动画
    bmkMapStatusAnimationBase = 1,   //底图操作基本动画（缩放、移图、旋转、俯视角等）
    bmkMapStatusAnimationLocalizer = 2,  //回定位标动画
    bmkMapStatusAnimationNoneNoStop = 3,   //无动画并且不打断原来的动画
} BMMapStatusAnimationType;

typedef enum : NSUInteger {
    bmkMapLayerUpdateNone                      = 0,                // 无须通知
    bmkMapLayerUpdateCompulsory                = (1 << 0),
    bmkMapLayerUpdateMapStatusChange           = (1 << 1),            // 地图状态改变通知
    bmkMapLayerUpdateMapStatusChangeLater      = (1 << 2),            // 地图状态改变延时通知
    bmkMapLayerUpdateTimerEscap                = (1 << 3),            // 定时通知
    bmkMapLayerUpdateWaittingChange            = (1 << 4)            // 等待处理
} BMMapLayerUpdateType;

typedef enum : NSUInteger {
    bmkMapRecycleMemoryLevelNormal,     //  保守释放，不影响图区展示
    bmkMapRecycleMemoryLevelFull        //  完整释放，同时释放当前显示数据，需在后台时调用
} BMMapRecycleMemoryLevel;

typedef enum : NSUInteger {
    bmkMapControlModeDefault        = 1,                    // 普通地图模式
    //     eIndoorControlMode,                                    // 室内图模式
    bmkMapControlModeStreet,                                    // 街景模式
    bmkMapControlModeStreetWaitting,                                // 街景等待模式
    bmkMapControlModeSatelliteMap,
    bmkMapControlModeBaseIndoor,
    bmkMapControlModeIndoorNavi,
    bmkMapControlModeMiniMap,                                // 小屏模式
} BMMapControlMode;

typedef enum : NSUInteger {
    bmkMapAnimationTypeNone = 0,   //无动画
    bmkMapAnimationTypeBase = 1,   //底图操作基本动画（缩放、移图、旋转、俯视角等）
    bmkMapAnimationTypeLocalizer = 2,  //回定位标动画
    bmkMapAnimationTypeNoneNoStop = 3,   //无动画并且不打断原来的动画
} BMMapAnimationType;

typedef enum : NSUInteger {
    bmkMapAppActionStart, // 启动
    bmkMapAppActionShake  // 摇一摇
} BMMapAppAction;

typedef enum : NSInteger {
    bmkMapParticleEffectSnow,       // 雪花
    bmkMapParticleEffectGift,       // 红包
    bmkMapParticleEffectFireworks,  // 烟花
    bmkMapParticleEffectGoldMonkey,  // 烟花
    bmkMapParticleEffectPainStorm,    //暴雨+雷电
    bmkMapParticleEffectSmog,         //雾霾
    bmkMapParticleEffectBlizzard,      //暴雪
    bmkMapParticleEffectSandStorm,    //沙尘暴
    bmkMapParticleEffectUnknow = -1
} BMMapParticleEffect;

typedef enum : NSUInteger {
    bmkMapLayerTypeMap        = 1,        // 底图
    bmkMapLayerTypeSat        = 2,        // 卫星图
    bmkMapLayerTypeIts        = 3,        // 路况图
    bmkMapLayerTypeSSD        = 5,        // 街景图（包括路网）
    bmkMapLayerTypeHot        = 6,        // 热力图
    bmkMapLayerTypeIdr        = 7,        // 新版室内图
    bmkMapLayerTypeMist        = 8,        // 热力图
    
    bmkMapLayerTypeCache,              // 底图数据缓存
    
    bmkMapLayerTypeRouteCamera,
    bmkMapLayerTypeRouteTrafficJam,
    bmkMapLayerTypeRouteTrafficSign,
    bmkMapLayerTypeRouteIcon,
    bmkMapLayerTypeMapUGC,                // 底图UGC图层
} BMMapLayerType;

typedef enum : NSUInteger {
    bmkMapSceneNormal                = 0,
    bmkMapScenePOI,
    bmkMapSceneRoute,
    // eVInternal,
    // eVInternalSpecial,
    bmkMapSceneBus,
    bmkMapSceneCycle,
    
    // eVTravel,
    bmkMapSceneTraffic,
    bmkMapSceneFootPrint,
    bmkMapSceneIndoor,
    
    // 导航相关场景
    bmkMapSceneNaviMapDay,                   //导航浏览态白天模式
    bmkMapSceneNaviMapNight,                 //导航浏览态夜晚模式
    bmkMapSceneNaviMapViewAllDay,            //导航全览态白天模式
    bmkMapSceneNaviMapViewAllNight,          //导航全览态黑夜模式
    bmkMapSceneTrafficNaviMapDay,            //导航浏览态白天路况模式
    bmkMapSceneTrafficNaviMapNight,          //导航浏览态夜晚路况模式
    bmkMapSceneTrafficNaviMapViewAllDay,     //导航全览态白天路况模式
    bmkMapSceneTrafficNaviMapViewAllNight,   //导航全览态黑夜路况模式
    bmkMapSceneNaviMapIPODay,                //轻导航态白天模式
    bmkMapSceneNaviMapIPOLockDay,            //轻导航锁屏态白天模式
    bmkMapSceneNaviMapSmallDay,              //导航双屏模式小屏态白天模式
    bmkMapSceneNaviMapSmallNight,            //导航双屏模式小屏态全览模式

    bmkMapSceneNaviRouteTraffic,             //驾车页/路线雷达开启路况模式
    
    bmkMapSceneUniversal,
    bmkMapSceneAINormal,
    bmkMapSceneAITraffic,
    bmkMapSceneFeedMap,                     //FeedMap
} BMMapScene;

//图像服务推荐点的场景
typedef enum {
    bmkMapRecommendPOIBase = 0,
    bmkMaprecommendpoiInternational = 1,
}BMMapRecommendPOIScene;


typedef enum {
    bmkMapNaviModeUndefined,  // 未定义
    bmkMapNaviModeNormal,     // 普通导航
    bmkMapNaviModeSlight,     // 轻导航
    bmkMapNaviModeCruise,     // 电子狗
    bmkMapNaviModeFinish,     // 导航结束页
    bmkMapNaviModeRoute,      // 驾车路线页
    bmkMapNaviModeTotal,      //
}BMMapNaviModeType;

typedef enum {
    bmkMapNaviSceneUndefined = 0,
    bmkMapNaviSceneStartNavi,  // 起点场景
    bmkMapNaviSceneEndNavi,    // 终点场景
    bmkMapNaviSceneBrowse,     // 浏览场景
    bmkMapNaviSceneNavigation, // 导航中场景
}BMMapNaviSceneType;

//注意，因为最后一个None的定义要与-1等值，这个数据结构必须是32位的Unsigned Int
typedef enum : unsigned int
{
    bmkMapNodeKindStart                 = 1,            // 起点
    bmkMapNodeKindEnd                   = 2,            // 终点
    bmkMapNodeKindPOI                   = 3,            // 普通POI点
    bmkMapNodeKindPOIBKG                = 4,            // 马点图
    bmkMapNodeKindSearchCenter          = 5,            // 周边搜索中心点
    bmkMapNodeKindFavoritePOI           = 6,            // 收藏的普通POI点
    bmkMapNodeKindFavMark               = 7,            // 收藏夹地图点选POI
    bmkMapNodeKindRouteNode             = 8,            // 导航路线节点
    bmkMapNodeKindBusStation            = 9,            // 公交站点
    bmkMapNodeKindTrainStation          = 10,           // 地铁站点
    bmkMapNodeKindBusLine               = 11,           // 公交线
    bmkMapNodeKindTrainLine             = 12,           // 地铁线
 
    bmkMapNodeKindPOIAddr               = 13,
 
    bmkMapNodeKindPOIRGC                = 14,           // 反向地理编码查询出的POI点
 
    bmkMapNodeKindPOIRGCShow            = 15,           // 分享的反向地理编码POI点
    bmkMapNodeKindPOIShow               = 16,           // 分享的反向地理编码POI点
    bmkMapNodeKindBackgMark             = 17,           // 底图可点的背景POI
    bmkMapNodeKindLocation              = 18,           // 定位点
    bmkMapNodeKindCompass               = 19,           // 指南针图标
    bmkMapNodeKindStreetPopup           = 20,           // 街景泡泡图标

    bmkMapNodeKindRouteTipNode          = 21,           // 导航线路提醒节点

    bmkMapNodeKindITSEvent              = 22,           // 路况事件点
    bmkMapNodeKindBusLineStop           = 23,           //公交线路上的公交站点

    bmkMapNodeKindSMShare               = 25,           // 位置共享点
     
    bmkMapNodeKindParentSon             = 30,           // 父子点关系(未使用)
    bmkMapNodeKindParentSonPoint        = 31,           // 父子点关系点对象
    bmkMapNodeKindParentSonLine         = 32,           // 父子点关系线对象
    bmkMapNodeKindParentSonArea         = 33,           // 父子点关系面对象
    
    bmkMapNodeKindIDRMapMark            = 35,           // 新室内图POI点

    bmkMapNodeKindWalkNaviARC           = 60,           // 步行导航罗盘圆弧
    bmkMapNodeKindWalkNaviGuideBoard    = 61,           // 步行导航路牌

    bmkMapNodeKindStreetPOI             = 1234,         // 街景poi点
    bmkMapNodeKindStreetArrow           = 1235,         // 街景箭头
    bmkMapNodeKindStreetInterPOI        = 1236,         // 室内景POI点
 
    bmkMapNodeKindRailwayStation        = 1237,
    bmkMapNodeKindAIRPort               = 1238,
    bmkMapNodeKindMCarLabel             = 1239,         // 驾车多路线标牌
    bmkMapNodeKindMCarWayPOI            = 1240,         // 驾车多路线途经点
 
    bmkMapNodeKindStreetPOIInnerButton  = 2000,         // 街景poi点
    bmkMapNodeKindStreetPOICircle       = 2001,         // 点击街景poi圆圈
    bmkMapNodeKindStreetClickJumpMove   = 2002,
    bmkMapNodeKindStreetClickCustomMarker = 2003,

    bmkMapNodeKindDisPopup              = 3000,         // 测距泡泡
    bmkMapNodeKindSurfaceCircle         = 3100,         // 圆
    bmkMapNodeKindSurfaceCover          = 3200,         // 蒙层
    bmkMapNodeKindPOIMarkExt            = 4000,         // 校园与景点插入到地图的标注点，需要与底图标注碰撞

    bmkMapNodeKindDynamicMap            = 5000,         // 动态底图

    bmkMapNodeKindOPPOI                 = 6000,
    bmkMapNodeKindTrafficUGC            = 6002,
    /* WangYSH Add Start */
    bmkMapNodeKindPopup                 = 6003,         // 气泡
    bmkMapNodeKindBaseMap               = 6004,         // 底图图层
    /* WangYSH Add End */
    
    bmkMapNodeKindMultiRoutePopup       = 6005,         // 多路线点击气泡
    
    bmkMapNodeKindCruiseCamera          = 6006,         // 电子狗安全图标 1242
    bmkMapNodeKindCruiseCar             = 6007,         // 电子狗车标 1243
    
    bmkMapNodeKindTrackIsOverSpeed      = 6008,         // 是否超速
    bmkMapNodeKindTrackIsRapidacc       = 6009,         // 是否急加速
    bmkMapNodeKindTrackBrake            = 6010,         // 是否急刹车
    bmkMapNodeKindTrackCurve            = 6011,         // 是否急转弯
    bmkMapNodeKindTrackMaxSpeed         = 6012,         // 是否最大速度
    
    bmkMapNodeKindUGCPopup              = 6013,         // 用户UGC点
    bmkMapNodeKindUGCReroute            = 6014,         // 是否UGC偏航点
    bmkMapNodeKindUGCSelectLink         = 6015,         // UGC选择link
    
    bmkMapNodeKindMAPUGC                = 6016,         // 底图UGC点
    bmkMapNodeKindRouteOutSurrounding   = 6017,         // 路线周边元素
    
    bmkMapNodeKindUniversalPOI          = 6018,         // 通用图层点元素
    bmkMapNodeKindUniversalAggPOI       = 6019,
    bmkMapNodeKindNaviRCPred            = 6020,         // 导航路况预测标签
    bmkMapNodeKindNaviTruckUGC          = 6021,         // 货车UGC
    bmkMapNodeKindTopicPOI              = 6060,         // 泛检索 Topic poi
    bmkMapNodeKindFootSurface           = 6061,         // 足迹面
    bmkMapNodeKindParticleSys           = 7000,
    
    bmkMapNodeKindNone                  = 0xFFFFFFFF,   // 无效值

} BMMapNodeKind;

struct BMNaviStatus
{
    BOOL minimap;     // 是否小屏
    BMMapNaviModeType mode; // 导航模式
    BOOL overview;    // 是否全览态
    BOOL browse;      // 是否操作态
    BOOL north;       // 是否正北模式
    BOOL night;       // 是否夜间模式
    BOOL background;  // 是否后台模式
    BOOL lockScreen;  // 是否锁屏模式
    BOOL traffic;     // 是否开启路况
    BOOL instantUpdate;  // 是否强制触发加载 TODO: 临时使用，优化标签加载后去掉
    BOOL preRoutePlanStatus;
    BMMapNaviSceneType scene; // 导航子场景
};
typedef struct BMNaviStatus BMNaviStatus;

//struct BMapNaviScreenShotParam {
//
//};
//typedef struct BMapNaviScreenShotParam BMapNaviScreenShotParam;
//
//struct BMapNaviScreenShotImage {
//
//};
//typedef struct BMapNaviScreenShotImage BMapNaviScreenShotImage;
//
//struct BMapNaviScreenShotImageData {
//
//};
//typedef struct BMapNaviScreenShotImageData BMapNaviScreenShotImageData;
//
//
//struct BMapScreenShotParam {
//
//};
//typedef struct BMapScreenShotParam BMapScreenShotParam;
//
//struct BMapScreenShotImage {
//
//};
//typedef struct BMapScreenShotImage BMapScreenShotImage;

#endif /* __BMAP_TYPE_H__ */
