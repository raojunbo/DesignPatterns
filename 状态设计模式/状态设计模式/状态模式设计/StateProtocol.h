//
//  StateProtocol.h
//  状态设计模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StateProtocol <NSObject>

- (void)nextChannel;

- (void)preChannel;

- (void)turnUp;

- (void)turnDown;

@end
