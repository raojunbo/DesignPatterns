//
//  Mocha.m
//  装饰的设计模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Mocha.h"


@interface Mocha()
@property (nonatomic, strong)Beverage *beverage;
@end

@implementation Mocha

- (instancetype)initWith:(Beverage *)beverage {
    if(self = [super init]){
        _beverage = beverage;
    }
    return self;
}

- (NSString *)getDescription {
    return [NSString stringWithFormat:@"%@+%@",[self getDescription],[self getDescription]];
}

- (float)cost {
    return 20 + self.beverage.cost;
}

@end
