//
//  Color.h
//  桥接模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Color <NSObject>

- (void)bepaint:(NSString *)shape;

@end
