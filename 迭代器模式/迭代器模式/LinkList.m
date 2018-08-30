//
//  LinkList.m
//  迭代器模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "LinkList.h"
#import "LinkedIterator.h"
@interface LinkList()

@end

@implementation LinkList

- (void)addData:(id)data {
    if(self.head == nil){
        self.head = [Node nodeWithData:data];
    }else {
        [self addData:data node:self.head];
    }
}

- (void)addData:(id)data node:(Node *)node {
    if(node.nextNode == nil){
        node.nextNode = [Node nodeWithData:data];
    }else {
        [self addData:data node:node.nextNode];
    }
}

- (id<Iterator>)getIterator {
    LinkedIterator *iterator = [[LinkedIterator alloc]initWithLinkList:self];
    return iterator;
}

@end
