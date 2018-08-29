//
//  IComputerBuilder.h
//  构建者模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IComputer.h"


//提供一个抽象的构建者。通过构建者去组合产品

@protocol IComputerBuilder <NSObject>

- (id<IComputerBuilder>)buildCPU:(NSString *)cpu;

- (id<IComputerBuilder>)buildDisplay:(NSString *)display;

- (id<IComputerBuilder>)buildMainBoard:(NSString *)mainboard;

- (id<IComputerBuilder>)buildOS:(NSString *)os;

- (id<IComputer>)build;

@end
