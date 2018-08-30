//
//  TypeOneMediator.m
//  中介者模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "TypeOneMediator.h"

@implementation TypeOneMediator

- (NSDictionary *)values {
    return @{
             @"A":@(self.colleagueA.value),
             @"B":@(self.colleagueB.value),
             @"C":@(self.colleagueC.value)
             };
}

- (void)colleagueEvent:(id<AbstractColleague>)colleague {
    if([colleague isEqualToString:self.colleagueA]){
        self.colleagueB.value = self.colleagueA.value *2;
        self.colleagueC.value = self.colleagueA.value *4;
    }else if([colleague isEqualToString:self.colleagueB]){
        self.colleagueA.value = self.colleagueB.value *2;
        self.colleagueC.value = self.colleagueB.value *4;
    }else if([colleague isEqualToString:self.colleagueC]){
        self.colleagueA.value = self.colleagueC.value *2;
        self.colleagueB.value = self.colleagueC.value *4;
    }
}

@end
