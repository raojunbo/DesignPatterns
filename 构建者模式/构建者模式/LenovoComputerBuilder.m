//
//  LenovoComputerBuilder.m
//  构建者模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "LenovoComputerBuilder.h"

@interface LenovoComputerBuilder()

@property (nonatomic)id<IComputer> computer;

@end

@implementation LenovoComputerBuilder

- (instancetype)init {
    self = [super init];
    if(self){
        _computer = [[LenovoComputer alloc]init];
    }
    return self;
}

- (id<IComputerBuilder>)buildCPU:(NSString *)cpu {
    [_computer cpu:cpu];
    return self;
}

- (id<IComputerBuilder>)buildDisplay:(NSString *)display {
    [_computer display:display];
    return self;
}

- (id<IComputerBuilder>)buildMainBoard:(NSString *)mainboard {
    [_computer mainboard:mainboard];
    return self;
}

- (id<IComputerBuilder>)buildOS:(NSString *)os {
    [_computer os];
    return self;
}

- (id<IComputer>)build {
    NSLog(@"构建一台联想电脑");
    return _computer;
}

@end
