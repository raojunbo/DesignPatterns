//
//  MementCenter.m
//  备忘录模式
//
//  Created by 饶君波 on 2018/8/30.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "MementCenter.h"
#import "MementoProtocol.h"

@implementation MementCenter

+ (void)saveMementToObject:(id<MementoProtocol>)object withKey:(NSString *)key {
    id data = [object currentState];//一个对象的当前状态
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"key"];
}

+ (id)mementoObjectWithKey:(NSString *)key {
    id data = nil;
    NSDictionary  *tmpData = [[NSUserDefaults standardUserDefaults]objectForKey:key];
    
    return tmpData;
}

@end
