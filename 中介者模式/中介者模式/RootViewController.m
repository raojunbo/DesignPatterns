//
//  RootViewController.m
//  中介者模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "TypeOneMediator.h"
@interface RootViewController ()
@property
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TypeOneMediator *oneMediator = [TypeOneMediator alloc]init];
    Colleague *colleageA = [Colleague alloc]init];

    Colleague *colleageB =  [Colleague alloc]init];

    Colleague *colleageC =  [Colleague alloc]init];

    oneMediator.colleagueA = colleageA;
    oneMediator.colleagueB = colleageB;
    oneMediator.colleagueC = colleageC;

    colleageA.delegate = oneMediator;
    colleageB.delegate = oneMediator;
    colleageC.delegate = oneMediator;

    [colleageB changeValue:1];
    NSLog(@"这是修改后的信息%@",oneMediator.values);

    //这个例子
    //同事之间有一定的关系。同事A修改的分值，同事B的分值同样会修改。同事C的值统一会修改。
    //那么就有个问题，我同事A修改了值，我还要通过A取修改B的值，B的值修改了，B还要去修改C的值。这样就是对象间非常复杂的操作关系。
    //引入中介这后，这个几个对象之间的关系就变成只有中介者之间交互。这样关系就轻松多了
    //在很多

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
