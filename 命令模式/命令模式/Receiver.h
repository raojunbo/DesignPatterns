//
//  Receiver.h
//  命令模式
//
//  Created by 饶君波 on 2018/8/29.
//  Copyright © 2018年 饶君波. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//正真的执行者,也就是命令的真正执行者



@interface Receiver : NSObject

@property (nonatomic, strong)UIView *receiverView;

- (void)makeDarker:(float)param;

- (void)makeLighter:(float)param;

@end
