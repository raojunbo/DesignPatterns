//
//  RootViewController.m
//  模板方法模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController


/*
 从MethodViewController继承的viewDidLoad方法，方法的执行逻辑顺序在父类已经写好，子类只需要实现方法就可以了。
 setUpView
 setEvent
 setNofification
 是按照父类定义的顺序执行，且是执行的是子类真正的实现
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)setUpView {
    //实现父类的方法
}

- (void)setEvent {
    //实现父类的方法
}

- (void)setNotification {
    //实现父类的方法
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
