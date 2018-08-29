//
//  ColorViewFactory.h
//  抽象工厂
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//将原来的工厂方法的一条产品线，改成真正的工厂。能生产多种产品。
//而每种工厂根据特性，生产属性它自己的产品，或者通过他实现

@interface ColorViewFactory : NSObject

- (UIView *)colorViewWithFrame:(CGRect)rect;

- (UIButton *)buttonViewWithFrame:(CGRect)rect;

@end

