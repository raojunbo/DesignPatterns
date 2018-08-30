//
//  Expression.h
//  解释器设计模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>

//这是表达式接口

@protocol Expression <NSObject>

- (BOOL)interpret:(NSString *)context;

@end
