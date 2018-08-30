//
//  Colleague.h
//  中介者模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "AbstractColleague.h"

@interface Colleague : AbstractColleague
@property (nonatomic, assign)float value;

- (void)changeValue:(float)value;

@end
