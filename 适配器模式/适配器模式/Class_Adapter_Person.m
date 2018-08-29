//
//  Class_Adapter_Person.m
//  适配器模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Class_Adapter_Person.h"


@implementation Class_Adapter_Person<Target_Person_protocol>

- (void)sayFrench {
    NSLog(@"这是说法语");
}

- (void)sayJapaness {
    NSLog(@"这是说日语");
}

@end
