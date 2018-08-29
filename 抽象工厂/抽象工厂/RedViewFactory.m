//
//  RedViewFactory.m
//  抽象工厂
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RedViewFactory.h"

@implementation RedViewFactory

- (UIView *)colorViewWithFrame:(CGRect)rect {
    return [[RedView alloc]init];
}

- (UIButton *)buttonViewWithFrame:(CGRect)rect {
    return [RedButton buttonWithType:UIButtonTypeCustom];
}

@end
