//
//  main.m
//  StringsChallenge
//
//  Created by Shane Doyle on 25/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSString *lament = @"Why me!?";
        
        NSString *x = [NSString stringWithFormat:@"The best number is %d", 5];
        
        if ([lament isEqualToString:x]) {
            NSLog(@"%@ and %@ are equal", lament, x);
        } else {
            NSLog(@"%@ and %@ are not equal", lament, x);
        }
        
        NSUInteger charCount = [x length];
        
        NSLog(@"The charachter count of x is %lu", charCount);
        
        
        // Chapter 14 Challenge
        
        NSHost *currentHost = [NSHost currentHost];
        
        NSString *hostName = [currentHost localizedName];
        
        NSLog(@"The host name is %@", hostName);
        
    }
    return 0;
}

