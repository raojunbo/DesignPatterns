//
//  TerminalExpression.h
//  解释器设计模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Expression.h"

@interface TerminalExpression : NSObject<Expression>

- (void)terminalExpression:(NSString *)data;

@end
