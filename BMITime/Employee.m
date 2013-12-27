//
//  Employee.m
//  BMITime
//
//  Created by Shane Doyle on 27/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
