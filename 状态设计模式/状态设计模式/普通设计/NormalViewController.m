//
//  NormalViewController.m
//  状态设计模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "NormalViewController.h"


typedef NS_ENUM (NSInteger, PowerState)   {
    PowerOn = 0,
    PowerOff = 1,
    PowerRun = 2
};

@interface NormalViewController ()

@property (nonatomic, strong)PowerState powerState;

@end

@implementation NormalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //我们先从最普通的设计开始，这样才能发现与对比，为什么要用状态的设计模式
    self.powerState = PowerOff;
    
    //从下面的设计来看，当在添加一个状态时，要修改的地方，将急剧增加。不满足对外扩展开放，对内修改关闭。
    
}

- (void)powerOn {
    self.powerState = PowerOn;
    NSLog(@"开机了");
}

- (void)powerOff{
    self.powerState = PowerOff;
    NSLog(@"关机了");
}

- (void)nextChannel {
    if(self.powerState = PowerOn){
        NSLog(@"切换到下一个频道");
    }else {
        NSLog(@"没有开机");
    }
}

- (void)prevChanel {
    if(self.powerState == PowerOn){
        NSLog(@"上一个频道");
    }else {
        NSLog(@"没有开机");
    }
}

- (void)turnUp {
    if(self.powerState == PowerOn){
        NSLog(@"调高音量");
    }else {
        NSLog(@"灭有开机");
    }
}

- (void)turnOff {
    if(self.powerState == PowerOn){
        NSLog(@"调低音量");
    }else {
        NSLog(@"灭有开机");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
