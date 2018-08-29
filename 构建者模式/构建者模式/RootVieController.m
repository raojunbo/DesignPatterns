//
//  RootVieController.m
//  构建者模式
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootVieController.h"

#import "LenovoComputerBuilder.h"
@interface RootVieController ()

@end

@implementation RootVieController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     构造电脑，电脑的组成由CPU,显示器，主板，这是相对固定的。但子部分，CPU有各种实现的算法。所以这种情况使用构建者最好。
     
     需要构造的对象整题结构固定，当子部分的实现有各种算法
     */
    LenovoComputerBuilder *builder = [[LenovoComputerBuilder alloc]init];
    [[[[builder buildCPU:@"cpu"]buildDisplay:@"display"]buildMainBoard:@"mainboard"] build];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
