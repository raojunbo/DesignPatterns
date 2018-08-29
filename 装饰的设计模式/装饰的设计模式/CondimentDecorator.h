//
//  CondimentDecorator.h
//  装饰的设计模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Beverage.h"

/*
 饮料的装饰这
 */
@interface CondimentDecorator : Beverage
- (instancetype)initWith:(Beverage *)beverage;
@end
