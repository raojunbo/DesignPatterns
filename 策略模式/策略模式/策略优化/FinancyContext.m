//
//  FinancyContext.m
//  策略模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "FinancyContext.h"
#import "FinancyStratery.h"

@interface FinancyContext()
@property (nonatomic, strong)id<FinancyStratery> finacy;
@end

@implementation FinancyContext

- (instancetype)initWithFinancy:(id<FinancyStratery>)finacy {
    if(self = [super init]){
        _finacy = finacy;
    }
    return self;
}

- (float)finacyWithMonth:(float)month money:(float)money {
    return [self.finacy finacyWithMonth:month money:money];
}

@end
