//
//  FinancyStrategy.m
//  策略模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "FinancyStrategy.h"

@implementation FinancyStrategy

- (float)finacyWithMonth:(float)month money:(float)money type:(FinancyType)type {
    switch (type) {
        case FinancyType_Alipay:{
            return [self alipayFinancyWithMonth:month money:money];
        }
            
            break;
        case FinancyType_Youli:{
            return [self youliFinancyWithMonth:month money:money];
        }
            break;
        default:
            break;
    }
    return 0;
}

//阿里理财策略
- (float)alipayFinancyWithMonth:(float)month money:(float)money {
    if(month == 6){
        return money + money *0.03/12 *6;
    }else if(month == 12){
        return money + money * 0.03 /12 *12;
    }else if(month == 24){
        return money + money *0.03/12 *24;
    }else {
        return 0;
    }
}

//有利网理财策略
- (float)youliFinancyWithMonth:(float)month money:(float)money {
    if(month == 6){
        return money + money *0.07/12 *6;
    }else if(month == 12){
        return money + money * 0.07 /12 *12;
    }else if(month == 24){
        return money + money *0.07/12 *24;
    }else {
        return 0;
    }
}

@end
