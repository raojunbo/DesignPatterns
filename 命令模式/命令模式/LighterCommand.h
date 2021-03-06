//
//  LighterCommand.h
//  命令模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "Receiver.h"

@interface LighterCommand : NSObject<CommandProtocol>

- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(float)paramter ;

@end
