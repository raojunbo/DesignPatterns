//
//  StudentModel.h
//  原型模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrototypeCopyProtocol.h"

@interface StudentModel : NSObject<PrototypeCopyProtocol>
@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSString *address;
@property (nonatomic, strong)NSString *age;
@property (nonatomic, strong)NSString *totalScore;

- (id)clone ;
@end
