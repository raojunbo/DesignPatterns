//
//  RootViewController.m
//  备忘录模式
//
//  Created by 饶君波 on 2018/8/30.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "RootViewController.h"
#import "Apple.h"
#import "NSObject+MementoCenter.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Apple *apple = [[Apple alloc]init];
    apple.name = @"富士苹果";
    apple.age = @(10);
    [apple saveStateWithKey:@"apple"];
    [apple recoverFromState:@"apple"];
    NSLog(@"这是name %@, %@",apple.name,apple.age);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
