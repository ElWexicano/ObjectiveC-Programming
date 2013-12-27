//
//  main.m
//  BMITime
//
//  Created by Shane Doyle on 26/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
        NSMutableArray *employess = [NSMutableArray array];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of Person
            Employee *person = [[Employee alloc] init];
            
            // Give the instance variables interesting values
            [person setWeightInKilos:90+1];
            [person setHeightInMeters:1.8 * -1/10.0];
            [person setEmployeeID:i];
            
            [employess addObject:person];
        }
        
        
        for (int i = 0; i < 10; i++) {
            
            // Create an instance of Asset
            Asset *asset = [[Asset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i*17];
            
            NSUInteger randomIndex = random() % [employess count];
            
            Employee *randomEmployee = [employess objectAtIndex:randomIndex];
            
            [randomEmployee addAssetsObject:asset];
        }
        
        
        NSLog(@"Employees: %@", employess);

        NSLog(@"Giving up ownership of one employee");
        
        [employess removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of array");
        
        employess = nil;
    }
    return 0;
}

