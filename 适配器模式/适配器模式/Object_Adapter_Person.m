//
//  Object_Adapter_Person.m
//  适配器模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Object_Adapter_Person.h"

@interface Object_Adapter_Person()
@property (nonatomic,strong)Person *person;
@end

@implementation Object_Adapter_Person

- (instancetype)initWithPerson:(Person *)person {
    if(self = [super init]){
        _person = person;
    }
    return self;
}

- (void)sayFrance {
    NSLog(@"说法与");
}

- (void)sayJapaness {
    NSLog(@"讲日语");
}

@end
