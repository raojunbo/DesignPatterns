//
//  ColorViewGenerator.h
//  工厂方法
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ColorView.h"

@interface ColorViewGenerator : NSObject

- (ColorView *)colorViewWithFrame:(CGRect)frame;

@end
