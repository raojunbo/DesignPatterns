//
//  IComputer.h
//  构建者模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IComputer <NSObject>

- (void)cpu:(NSString *)cpu;

- (void)display:(NSString *)display;

- (void)mainboard:(NSString *)mainboard;

- (void)os;

@end
