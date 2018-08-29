//
//  RootViewController.m
//  原型模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "StudentModel.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    StudentModel *studentModel = [[StudentModel alloc]init];
    studentModel.name = @"你好";
    studentModel.age = @"18";
    studentModel.address = @"帝都";
    studentModel.totalScore = @"100分";
    
    //以一个对象为原型，构建的一个对象
    StudentModel *student2 = [studentModel clone];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
