//
//  NSObject+MementoCenter.m
//  备忘录模式
//
//  Created by 饶君波 on 2018/8/30.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "NSObject+MementoCenter.h"
#import "MementCenter.h"
@implementation NSObject (MementoCenter)

- (void)saveStateWithKey:(NSString *)key {
    id <MementoProtocol> obj = (id<MementoProtocol>)self;
    if([obj respondsToSelector:@selector(currentState)]){
        [MementCenter saveMementToObject:obj withKey:key];
    }
}

- (void)recoverFroStateWithKey:(NSString *)key {
    id state  = [MementCenter mementoObjectWithKey:key];
    id<MementoProtocol> obj = (id<MementoProtocol>)self;
    if([obj respondsToSelector:@selector(respondsToSelector:)]){
        [obj recoverFromState:state];
    }
}
@end
