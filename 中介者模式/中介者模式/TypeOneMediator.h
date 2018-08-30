//
//  TypeOneMediator.h
//  中介者模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "AbstractMediator.h"
#import "Colleague.h"
@interface TypeOneMediator : AbstractMediator

@property (nonatomic, strong)Colleague *colleagueA;
@property (nonatomic, strong)Colleague *colleagueB;
@property (nonatomic, strong)Colleague *colleagueC;

-(NSDictionary *)values;

@end
