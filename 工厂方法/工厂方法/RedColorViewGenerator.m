//
//  RedColorViewGenerator.m
//  工厂方法
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RedColorViewGenerator.h"

@implementation RedColorViewGenerator

- (ColorView *)colorViewWithFrame:(CGRect)frame {
    return [[RedView alloc]init];
}

@end
