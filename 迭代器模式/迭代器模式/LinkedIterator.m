//
//  LinkedIterator.m
//  迭代器模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "LinkedIterator.h"

@interface LinkedIterator()
@property (nonatomic, strong)LinkList *linkList;
@property (nonatomic, strong)Node *currentNode;
@end
@implementation LinkedIterator

- (id)next {
    self.currentNode = [self.currentNode nextNode];
    return self.currentNode;
}

- (BOOL)hasNext {
    if(self.currentNode.nextNode != nil){
        return YES;
    }else {
        return NO;
    }
}


- (instancetype)initWithLinkList:(LinkList *)linkList {
    if(self = [super init]){
        self.linkList = linkList;
        self.currentNode = linkList.head;
    }
    return self;
}

@end
