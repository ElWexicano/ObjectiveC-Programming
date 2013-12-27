//
//  main.m
//  BMITime
//
//  Created by Shane Doyle on 26/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instance of Person
        Employee *person = [[Employee alloc] init];
        
        // Give the instance variables interesting values
        [person setWeightInKilos:86];
        [person setHeightInMeters:1.80];
        [person setEmployeeID:15];
        
        // Calculate the Body Mass Index
        float bmi = [person bodyMassIndex];
        NSLog(@"The person has a BMI of %.0f", bmi);
        
        NSLog(@"The person height is %.2f and weight is %d", [person heightInMeters], [person weightInKilos]);
        
        NSLog(@"Employee %d has a BMI of %.0f", [person employeeID], bmi);
    }
    return 0;
}

