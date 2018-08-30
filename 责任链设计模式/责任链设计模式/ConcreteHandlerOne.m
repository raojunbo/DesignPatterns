//
//  ConcreteHandlerOne.m
//  责任链设计模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "ConcreteHandlerOne.h"

@implementation ConcreteHandlerOne

- (void)handleRequest:(Person *)person {
    if( [person.name isEqualToString:@"张三"]){
        NSLog(@"处理这个请求")
    }else {
        NSLog(@"不是张三,发给下一个处理者");
        [self.sucessHandler handleRequest:person];
    }
}
@end
