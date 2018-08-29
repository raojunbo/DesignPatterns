//
//  RootViewController.m
//  桥接模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "Color.h"
#import "White.h"
#import "Shape.h"
#import "Rectangle.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id<Color> white = [[White alloc]init];
    Shape *shape = [[Rectangle alloc]init];
    shape.color = white;
    [shape draw];
    
    //从上面可以看出
    //桥接模式的场景：
    //类似于绘制形状，有多个形状，每个形状的颜色还不一样。如果全部用继承的化。会造成n*n个类。
    //这是可以采用桥接模式，将继承关系转换成关联关系。
    //,桥接模式的本质是将继承关系转换成关联的关系。从而降低了类与类之间的耦合度，减少了系统中的类的数量，也减少了代码量
    

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
