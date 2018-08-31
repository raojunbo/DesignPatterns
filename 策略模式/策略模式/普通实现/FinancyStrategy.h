//
//  FinancyStrategy.h
//  策略模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>

//不同的理财策略
typedef NS_ENUM (NSInteger, FinancyType)   {
    FinancyType_Alipay = 0,
    FinancyType_Youli = 1
};


@interface FinancyStrategy : NSObject

- (float)finacyWithMonth:(float)month money:(float)money type:(FinancyType)type;

@end
