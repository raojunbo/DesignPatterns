//
//  RootViewController.m
//  适配器模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "Class_Adapter_Person.h"
#import "Object_Adapter_Person.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //类适配器
   id<Target_Person_protocol> *classPerson = [[Class_Adapter_Person alloc]init];
    [classPerson sayJapaness];
    
    //对象适配器
    id<Target_Person_protocol> *objectPerson = [[[Object_Adapter_Person alloc]initWithPerson:[Person alloc]init]];
    [objectPerson sayFrench];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
