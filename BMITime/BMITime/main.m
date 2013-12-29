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
        
        NSMutableArray *employess = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of Person
            Employee *person = [[Employee alloc] init];
            
            // Give the instance variables interesting values
            [person setWeightInKilos:90+1];
            [person setHeightInMeters:1.8 * -1/10.0];
            [person setEmployeeID:i];
            
            [employess addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            
            // Create an instance of Asset
            Asset *asset = [[Asset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i*17];
            
            NSUInteger randomIndex = random() % [employess count];
            
            Employee *randomEmployee = [employess objectAtIndex:randomIndex];
            
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employess sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"Employees: %@", employess);

        NSLog(@"Giving up ownership of one employee");
        
        [employess removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employess = nil;
    }
    
    sleep(100);
    return 0;
}

