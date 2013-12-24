//
//  main.m
//  TimeAfterTime
//
//  Created by Shane Doyle on 24/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSLog(@"The new date lives at %p", now);
        NSLog(@"The new date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
        NSDate *future = [now dateByAddingTimeInterval:1000000];
        NSLog(@"In 100,000 seconds it will be %@", future);
        
        // Challenge
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1986];
        [comps setMonth:11];
        [comps setDay:15];
        [comps setHour:3];
        [comps setMinute:45];
        [comps setSecond:0];
        
        // Set the calendar.
        NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        // Get my Date Of Birt as a NSDate Object.
        NSDate *dateOfBirth = [gregorianCalendar dateFromComponents:comps];
        
        // Get the seconds between two dates.
        double secondsSinceBirth = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"The number of seconds since I was born is %f", secondsSinceBirth);
    }
    return 0;
}

