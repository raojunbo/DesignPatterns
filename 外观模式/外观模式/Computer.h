//
//  Computer.h
//  外观模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPU.h"
#import "Memory.h"
#import "Disk.h"

@interface Computer : NSObject

//为了用户更好的使用这个computer,提供外观模式的接口

- (void)startUp;

- (void)showdown;

@end
