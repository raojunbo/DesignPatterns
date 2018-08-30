//
//  AndExpression.m
//  解释器设计模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "AndExpression.h"

@interface AndExpression()
@property (nonatomic, strong)id<Expression> expr1;
@property (nonatomic, strong)id<Expression> expr2;
@end
@implementation AndExpression


- (instancetype)initWithExpr1:(id<Expression>)expr1 expr2:(id<Expression>)expr2 {
    if(self = [super init]){
        _expr1 = expr1;
        _expr2 = expr2;
    }
    return self;
}

- (BOOL)interpret:(NSString *)context {
    return [self.expr1 interpret:context] && [self.expr2 interpret:context];
}

@end
