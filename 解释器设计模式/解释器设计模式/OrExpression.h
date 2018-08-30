//
//  OrExpression.h
//  解释器设计模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Expression.h"

@interface OrExpression : NSObject<Expression>

- (instancetype)initWithExpr1:(id<Expression>)expr1 Expr2:(id<Expression>)erpre2;

@end
