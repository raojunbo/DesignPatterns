//
//  Object_Adapter_Person.h
//  适配器模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Target_Person_protocol.h"
/*
 对象适配器采用的是组合
 */
@interface Object_Adapter_Person : NSObject<Target_Person_protocol>

- (instancetype)initWithPerson:(Person *)person;

@end
