//
//  RootViewController.m
//  状态设计模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //将一个对象，在不同的状态下的不同行为机型区分开。这样在有新的状态时，就可以只需添加新的状态类就可以了。对外是扩展的，对内是不可修改的，即是实现了。
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
