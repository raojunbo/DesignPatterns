//
//  RootViewController.m
//  工厂方法
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "RedView.h"
#import "BlueView.h"
#import "RedColorViewGenerator.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RedColorViewGenerator *redGenerator =  [[RedColorViewGenerator alloc]init];
    
    //工厂方法相比于其他两种方法完全支持开闭原则。
    /*
     所谓的开闭原则就是对扩展开放，对修改关闭，再说白点就是实现工厂方法以后要进行扩展时不需要修改原有代码，
     只需要增加一个工厂实现类和产品实现类就可以。这样的好处可以降低因为修改代码引进错误的风险
     */
    
    //例如 这里采用工厂方法的核心是，是将对象的创建分配在相应的生产类里。实现生产的隔离。哈哈，就是这样的。
    ColorView *colorView = [redGenerator colorViewWithFrame:CGRectMake(0, 0, 0, 0 )];
    
    [self.view addSubview:colorView];
    
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
