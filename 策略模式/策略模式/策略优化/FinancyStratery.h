//
//  FinancyStratery.h
//  策略模式
//
//  Created by rjb on 2018/8/31.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FinancyStratery <NSObject>

- (float)finacyWithMonth:(float)month money:(float)money;

@end
