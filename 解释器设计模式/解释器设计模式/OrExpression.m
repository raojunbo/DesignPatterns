//
//  OrExpression.m
//  解释器设计模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "OrExpression.h"

@interface OrExpression()
@property (nonatomic ,strong)id<Expression> expr1;
@property (nonatomic, strong)id<Expression> expr2;
@end

@implementation OrExpression

- (instancetype)initWithExpr1:(id<Expression>)expr1 Expr2:(id<Expression>)erpre2 {
    if(self = [super init]){
        
    }
    return self;
}

- (BOOL)interpret:(NSString *)context {
    return [self.expr1 interpret:context]|| [self.expr2 interpret:context];
}

@end
