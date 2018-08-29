//
//  StudentModel.m
//  原型模式
//
//  Created by rjb on 2018/8/29.
//  Copyright © 2018年 rjb. All rights reserved.
//

#import "StudentModel.h"

@implementation StudentModel

- (id)clone {
    StudentModel *student = [[StudentModel alloc]init];
    student.name = self.name;
    student.age = self.age;
    student.address = self.address;
    student.totalScore = self.totalScore;
    return student;
}

@end
