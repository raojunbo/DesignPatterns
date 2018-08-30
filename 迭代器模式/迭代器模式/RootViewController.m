//
//  RootViewController.m
//  迭代器模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "RootViewController.h"
#import "LinkList.h"
#import "LinkedIterator.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    LinkList *linkList = [[LinkList alloc]init];
    [linkList addData:@"第一个结点"];
    [linkList addData:@"第二个节点"];
    [linkList addData:@"第三个节点"];
    LinkedIterator *iterator = [linkList getIterator];
    while ([iterator hasNext]) {
        Node *node = [iterator next];
        NSLog(@"这是结点内容%@",node.data);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


@end
