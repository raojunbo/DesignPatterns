//
//  Node.h
//  迭代器模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, strong)Node *nextNode;//下一个结点
@property (nonatomic, strong)id data;//结点里的数据

+ (Node *)nodeWithData:(id)data;

@end
