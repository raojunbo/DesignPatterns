//
//  Node.m
//  迭代器模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (Node *)nodeWithData:(id)data {
    Node *node = [[self alloc] init];
    node.data = data;
    node.nextNode = nil;
    
    return node;
}

@end
