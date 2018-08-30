//
//  RootViewController.m
//  责任链设计模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "RootViewController.h"
#import "ConcreteHandlerOne.h"
#import "ConcreteHandlerTwo.h"
#import "ConcreteHandlerThree.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /*
     如果对iOS的事件响应机制了解得就不用看这个demo了。原理与事件的响应机制一样
     */
    Handler *hander1 = [[ConcreteHandlerOne alloc]init];
    Handler *hander2 = [[ConcreteHandlerTwo alloc]init];
    Handler *hander3 = [[ConcreteHandlerThree alloc]init];
    
    hander1.sucessHandler = hander2;
    hander2.sucessHandler = hander3;
    
    Person *person = [[Person alloc]init];
    person.name = @"名字";
    [hander1 handleRequest:person];
    
    //从责任链上看，handle1处理交给handle2处理，handle2处理后交给handler3处理。
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
