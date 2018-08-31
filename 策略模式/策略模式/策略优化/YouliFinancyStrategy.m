//
//  YouliFinancyStrategy.m
//  策略模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "YouliFinancyStrategy.h"

@implementation YouliFinancyStrategy

- (float)finacyWithMonth:(float)month money:(float)money {
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
