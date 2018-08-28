//
//  DetailViewController.h
//  原型模式
//
//  Created by rjb on 2018/8/28.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

