//
//  FruitsFactory.m
//  简单工厂
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "FruitsFactory.h"

@implementation FruitsFactory


//要扩展的化，只能从这里扩展，添加类型，并子这里添加case的修改
//对内在扩展时，修改了这个类，
+ (Fruits *)fruitsFactory:(FruitsType)type {
    Fruits *fruits = nil;
    switch (type) {
        case kAapple:
        {
            fruits = [[Apple alloc]init];
        }
            break;
        case kOrange:{
            fruits = [[Orange alloc]init];
        }
            break;
        case kBanana:{
            fruits = [[Banana alloc]init];
        }
            break;
        default:
            break;
    }
    return fruits;
}

@end
