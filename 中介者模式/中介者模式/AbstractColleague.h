//
//  AbstractColleague.h
//  中介者模式
//
//  Created by rjb on 2018/8/30.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ColleagueDelegate <NSObject>

- (void)colleagueEvent:(AbstractColleague *)colleague;

@end

@interface AbstractColleague : NSObject
@property (nonatomic, weak)id<ColleagueDelegate> delegate;
@end
