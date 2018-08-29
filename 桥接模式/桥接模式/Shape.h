//
//  Shape.h
//  桥接模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Color.h"

@interface Shape : NSObject

@property (nonatomic, strong)id<Color> color;

- (void)draw;

@end
