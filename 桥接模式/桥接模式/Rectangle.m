//
//  Rectangle.m
//  桥接模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (void)draw {
    NSLog(@"画三角型");
    [self.color bepaint:@"三角行"];
}

@end
