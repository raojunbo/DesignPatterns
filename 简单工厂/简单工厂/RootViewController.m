//
//  RootViewController.m
//  简单工厂
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "FruitsFactory.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //通过简单工厂创建苹果,并调用水果的方法
    Fruits *fruits = [FruitsFactory fruitsFactory:kAapple];
    [fruits taste];
    
    //在水果工厂里创建苹果，并调用它的专有方法
    Apple *apple = (Apple *)[FruitsFactory fruitsFactory:kAapple];
    [apple fresh];
    
    //在水果工厂里面创建桔子
    Orange *orange = (Orange *)[FruitsFactory fruitsFactory:kOrange];
    [orange orangeMethod];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
