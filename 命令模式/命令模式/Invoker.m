//
//  Invoker.m
//  命令模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "Invoker.h"


@interface Invoker()

@property (nonatomic, strong)NSMutableArray *array;

@end
@implementation Invoker

+ (instancetype)sharedInstance {
    static Invoker *instace = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instace = [[Invoker alloc]init];
    });
}

- (instancetype)init {
    if(self = [super init]){
        _array = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)goBack {
    id<CommandProtocol> command = self.array.lastObject;
    //每一个命令有其执行相反的操作
    [command backExcute];
}

- (void)addAndExcute:(id<CommandProtocol>)command {
    //添加并执行
    [self.array addObject:command];
    [command excute];
}

@end
