//
//  BlueViewFactory.m
//  抽象工厂
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "BlueViewFactory.h"

@implementation BlueViewFactory

-(UIView*)colorViewWithFrame:(CGRect)rect {
    return [[BlueView alloc]init];
}

- (UIButton *)buttonViewWithFrame:(CGRect)rect {
    return [BlueButton buttonWithType:UIButtonTypeCustom];
}

@end
