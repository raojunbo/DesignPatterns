//
//  Computer.m
//  外观模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "Computer.h"

@interface Computer()
@property (nonatomic, strong)CPU *cpu;
@property (nonatomic, strong)Memory *memory;
@property (nonatomic, strong)Disk *disk;
@end

@implementation Computer
- (instancetype)init{
    if(self = [super init]){
        
    }
    return self;
}

- (void)startUp {
    [self.cpu startup];
    [self.memory startup];
    [self.disk startup];
}

- (void)shutdown {
    [self.cpu shutdown];
    [self.memory showdown];
    [self.disk showdown];
}

@end
