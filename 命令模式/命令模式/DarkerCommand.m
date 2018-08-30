//
//  DarkerCommand.m
//  命令模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "DarkerCommand.h"

@interface DarkerCommand()
@property (nonatomic, strong)Receiver *receiver;
@property (nonatomic, assign)float paramter;
@end

@implementation DarkerCommand

//一个command必须知道接受者，执行的参数

- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(float)paramter; {
    if(self = [self init]){
        self.receiver = receiver;
        self.paramter = paramter;
    }
    return self;
}


- (void)excute {
    //执行一个操作
    [self.receiver makeDarker:self.paramter];
}

- (void)backExcute {
    //执行相反的操作
    [self.receiver makeLighter:self.paramter];
}

@end
