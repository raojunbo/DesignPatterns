//
//  MementoProtocol.h
//  备忘录模式
//
//  Created by 饶君波 on 2018/8/30.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoProtocol <NSObject>

- (id)currentState;//获取状态

- (void)recoverFromState:(id)state;//恢复状态

@end
