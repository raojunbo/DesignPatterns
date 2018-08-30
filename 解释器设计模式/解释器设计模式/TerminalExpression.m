//
//  TerminalExpression.m
//  解释器设计模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "TerminalExpression.h"

@interface TerminalExpression()
@property (nonatomic, strong)NSString *data;
@end

@implementation TerminalExpression

- (void)terminalExpression:(NSString *)data {
    _data = data;
}

//解析一个表达式是否是最终表达式
- (BOOL)interpret:(NSString *)context {
    if([context containsString:self.data]){
        return true;
    }else {
        return NO;
    }
}


@end
