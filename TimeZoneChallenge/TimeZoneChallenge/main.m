//
//  main.m
//  TimeZoneChallenge
//
//  Created by Shane Doyle on 25/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        
        BOOL isDaylightSavingTime = [timeZone isDaylightSavingTime];
        
        if (isDaylightSavingTime) {
            NSLog(@"You are currently in daylight savings time");
        } else {
            NSLog(@"You are not in daylight savings time");
        }
        
    }
    return 0;
}

