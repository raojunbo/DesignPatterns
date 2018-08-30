//
//  Receiver.m
//  命令模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "Receiver.h"

@implementation Receiver

- (void)makeDarker:(float)param {
    NSLog(@"关闭灯");
}

- (void)makeLighter:(float)param {
    NSLog(@"打卡灯");
}

@end
