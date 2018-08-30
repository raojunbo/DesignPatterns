//
//  LinkedIterator.h
//  迭代器模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
#import "LinkList.h"
//真正的针对具体集合的迭代器
//这个就是Linklist的迭代器

@interface LinkedIterator : NSObject<Iterator>

- (instancetype)initWithLinkList:(LinkList *)linkList;

@end
