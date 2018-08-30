//
//  LinkList.h
//  迭代器模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "Iterator.h"

@interface LinkList : NSObject

@property (nonatomic, strong)Node *head;//链表的头结点

- (void)addData:(id)data;

- (id<Iterator>)getIterator;//获得这个链表的迭代器

@end
