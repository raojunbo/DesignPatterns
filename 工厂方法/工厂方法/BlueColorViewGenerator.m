//
//  BlueColorViewGenerator.m
//  工厂方法
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "BlueColorViewGenerator.h"

@implementation BlueColorViewGenerator

- (ColorView *)colorViewWithFrame:(CGRect)frame {
    return [[BlueView alloc]init];
}

@end
