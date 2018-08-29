//
//  Person.h
//  适配器模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, strong)NSString *personId;
@property (nonatomic, strong)NSString *name;

- (void)sayEnglist;

@end
