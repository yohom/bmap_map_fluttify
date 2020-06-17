//
//  BMKLocationPoiRegion.h
//  LocationComponent
//
//  Created by Jiang,Fangsheng on 2019/9/4.
//  Copyright © 2019 baidu. All rights reserved.
//

#ifndef BMKLocationPoiRegion_h
#define BMKLocationPoiRegion_h


///描述PoiRegion各属性
@interface BMKLocationPoiRegion : NSObject

///BMKLocationPoiRegion的方向属性，如『内』、『外』
@property(nonatomic, copy, readonly) NSString *directionDesc;

///BMKLocationPoiRegion的名字属性
@property(nonatomic, copy, readonly) NSString *name;

///BMKLocationPoiRegion的标签属性
@property(nonatomic, copy, readonly) NSString *tags;



/**
 *  @brief 通过NSDictionary初始化方法一
 */
- (id)initWithDictionary:(NSDictionary *)dictionary;


@end

#endif /* BMKLocationPoiRegion_h */
