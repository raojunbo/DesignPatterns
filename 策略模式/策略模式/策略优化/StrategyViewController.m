//
//  StrategyViewController.m
//  策略模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "StrategyViewController.h"
#import "FinancyContext.h"
#import "YouliFinancyStrategy.h"
@interface StrategyViewController ()

@end

@implementation StrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //将策略算法用一个类进行封装。这是主要的目的.外部只需要针对协议编程就可以了。如果有其他的新的策略
    //直接添加新的类就可以了。对扩展时开放的。对内部修改是关闭的。
    //至于要不要Context，则可以选择性的实现。
    YouliFinancyStrategy *youliStrategy = [[YouliFinancyStrategy alloc]init];
    FinancyContext *context = [[FinancyContext alloc]initWithFinancy:youliStrategy];
    [context finacyWithMonth:6 money:20];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
