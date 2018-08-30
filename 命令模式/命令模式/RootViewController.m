//
//  RootViewController.m
//  命令模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "RootViewController.h"
#import "Receiver.h"
#import "DarkerCommand.h"
#import "LighterCommand.h"
#import "Invoker.h"

@interface RootViewController ()
@property (nonatomic, strong)Receiver *receiver;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.receiver = [[Receiver alloc]init];
}

- (void)buttonClick:(UIButton *)btn{
    if(btn.tag == 1){
        DarkerCommand *darkerCommand = [[DarkerCommand alloc]initWithReceiver:self.receiver paramter:1];
        [[Invoker sharedInstance] addAndExcute:darkerCommand];
    }else if(btn.tag == 2){
        LighterCommand *lighterCommand = [[LighterCommand alloc]initWithReceiver:self.receiver paramter:0];
        [[Invoker sharedInstance] addAndExcute:lighterCommand];
    }else {
        [[Invoker sharedInstance] goBack];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
