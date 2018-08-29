//
//  Class_Adapter_Person.h
//  适配器模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Person.h"
#import "Target_Person_protocol.h"

/*
 类适配器
 类适配器采用的是继承
 */
@interface Class_Adapter_Person : Person<Target_Person_protocol>

@end
