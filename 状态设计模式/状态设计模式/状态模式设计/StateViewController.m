//
//  StateViewController.m
//  状态设计模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "StateViewController.h"
#import "PowerOnState.h"
#import "StateProtocol.h"

@interface StateViewController ()
@property (nonatomic, strong)id<StateProtocol> state;
@end

@implementation StateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.state  = [[PowerOnState alloc]init];
}

- (void)powerOn {
    [self.state turnUp];
}

- (void)powerOff {
    [self.state turnDown];
}

- (void)nextChannel {
    [self.state nextChannel];
}

- (void)preChannel {
    [self.state preChannel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
