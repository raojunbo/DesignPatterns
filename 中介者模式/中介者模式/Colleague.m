//
//  Colleague.m
//  中介者模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

- (void)changeValue:(float)value {
    self.value = value;
    
    if(self.delegate && [self.delegate respondsToSelector:@selector(colleagueEvent:)]){
        [self.delegate colleagueEvent:self];
    }
}

@end
