//
//  main.m
//  Constants
//
//  Created by Shane Doyle on 31/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // In literal NSString, use \u for arbitrary unicode chars
        NSLog(@"\u03c0 is %f", M_PI);
        
        // Print the larger of two numbers
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        
        NSLog(@"Money is %@", currency);
    }
    return 0;
}

