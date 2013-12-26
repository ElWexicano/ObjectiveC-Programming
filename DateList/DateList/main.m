//
//  main.m
//  DateList
//
//  Created by Shane Doyle on 26/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
        float oneDay = 24.0 * 60.0 * 60.0;
        
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tommorrow = [now dateByAddingTimeInterval:oneDay];
        NSDate *yesterday = [now dateByAddingTimeInterval:-oneDay];
        
        // Create an array containing all three (nil terminates the list)
        NSArray *dateList = [NSArray arrayWithObjects:now, tommorrow, yesterday, nil];
        
        // How many dates are there?
        NSLog(@"There are %lu dates", [dateList count]);
        
        // Print a couple
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        
        // Loop through the array
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is a date: %@ at position %d", d, i);
        }
        
        // For-Loop
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // Lets use a muteable array
        NSMutableArray *muteableDateList = [NSMutableArray array];
        
        [muteableDateList addObject:now];
        [muteableDateList addObject:yesterday];
        
        // Put tommorow at the start of the array.
        [muteableDateList insertObject:tommorrow atIndex:0];
        
        for (NSDate *d in muteableDateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // Remove the first date
        [muteableDateList removeObjectAtIndex:0];
        
        // Remove another date
        [muteableDateList removeObjectIdenticalTo:now];
        
        NSLog(@"The array contains %lu objects", [muteableDateList count]);
    }
    return 0;
}

