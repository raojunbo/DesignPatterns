//
//  Apple.m
//  备忘录模式
//
//  Created by 饶君波 on 2018/8/30.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import "Apple.h"

@implementation Apple

- (id)currentState {
    return @{@"name":self.name,@"age":self.age};
}

- (void)recoverFromState:(id)state {
    NSDictionary *data = state;
    self.name = data[@"name"];
    self.age = data[@"age"];
}


@end
