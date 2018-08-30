//
//  Iterator.h
//  迭代器模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Iterator <NSObject>

- (BOOL)hasNext;

- (id)next;

@end
