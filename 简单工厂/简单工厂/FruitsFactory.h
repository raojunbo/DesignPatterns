//
//  FruitsFactory.h
//  简单工厂
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruits.h"
#import "Apple.h"
#import "Orange.h"
#import "Banana.h"

typedef NS_ENUM(NSInteger) {
    kAapple,
    kOrange,
    kBanana,
} FruitsType ;

@interface FruitsFactory : NSObject

+ (Fruits *)fruitsFactory:(FruitsType)type;

@end
