//
//  MementCenter.h
//  备忘录模式
//
//  Created by 饶君波 on 2018/8/30.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MementCenter : NSObject

+ (void)saveMementToObject:(id<MementoProtocol>)object withKey:(NSString *)key;

+ (id)mementoObjectWithKey:(NSString *)key;

@end
