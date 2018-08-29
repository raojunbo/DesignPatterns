//
//  RootViewController.m
//  抽象工厂
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "ColorViewFactory.h"
#import "RedViewFactory.h"
#import "BlueViewFactory.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //所谓的抽象工厂，就是将工厂方法的产品线扩大到多个产品线
    //利用了工厂方法的对外扩展，对内关闭的原则
    
    UIView      *redView = [[[RedViewFactory alloc]init] colorViewWithFrame:CGRectMake(0, 0, 0, 0)];
    UIButton    *redButton = [[[RedViewFactory alloc]init] buttonViewWithFrame:CGRectMake(0, 0, 0, 0)];
    
    UIView      *blueView = [[[BlueViewFactory alloc]init] buttonViewWithFrame:CGRectMake(0, 0, 0, 0)];
    UIButton    *blueButton = [[[BlueViewFactory alloc]init]buttonViewWithFrame:CGRectMake(0, 0, 0, 0)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
