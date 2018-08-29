//
//  RootViewController.m
//  装饰的设计模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "Beverage.h"
#import "Mocha.h"
#import "Whip.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Beverage *beverage = [[Beverage alloc]init];
   
    Beverage *beverage1 = [[Mocha alloc]init];
    beverage1 = [[Mocha alloc]initWith:beverage1];//用mocha装饰
    
    beverage1 = [[Mocha alloc]initWith:beverage1];//在用mocha装饰
    beverage1 = [[Whip alloc]initWith:beverage1];//用奶泡装饰
    
    
    //通过装饰，其实装饰的类型还是主类的类型。
    //装饰类的设计，装饰类既有主类的属性，本类也是主类类型。这样可以递归的方式来获得最总被装饰了的对象。
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
