//
//  LighterCommand.m
//  命令模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "LighterCommand.h"
#import "Receiver.h"

@interface LighterCommand()
@property (nonatomic, strong)Receiver *receive;
@property (nonatomic, assign)float paramter;
@end

@implementation LighterCommand

- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(float)paramter {
    if(self = [super init]){
        self.receive = receiver;
        self.paramter = paramter;
    }
    return self;
}

- (void)excute {
    [self.receive makeLighter:self.paramter];
}

-(void)backExcute {
    [self.receive makeDarker:self.paramter];
}

@end
