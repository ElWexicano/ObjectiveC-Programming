//
//  main.m
//  PropertyListsChallenge
//
//  Created by Shane Doyle on 31/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *item = [NSMutableDictionary dictionary];
        
        [item setObject:@"Hello World"
                 forKey:@"string"];
        [item setObject:[NSData data]
                 forKey:@"data"];
        [item setObject:[NSDate date]
                 forKey:@"todaysDate"];
        [item setObject:[NSNumber numberWithInt:33]
                 forKey:@"integer"];
        [item setObject:[NSNumber numberWithFloat:2.13]
                 forKey:@"float"];
        [item setObject:@(YES)
                 forKey:@"boolean"];
        
        [items addObject:item];
        
        [item setObject:@"Bonjour World"
                 forKey:@"string"];
        [item setObject:[NSData data]
                 forKey:@"data"];
        [item setObject:[NSDate date]
                 forKey:@"todaysDate"];
        [item setObject:[NSNumber numberWithInt:39]
                 forKey:@"integer"];
        [item setObject:[NSNumber numberWithFloat:1.19]
                 forKey:@"float"];
        [item setObject:@(NO)
                 forKey:@"boolean"];
        
        [items addObject:item];
        
        for (NSDictionary *d in items) {
            NSLog(@"The plist contains the following items: %@", d);
        }
        
    }
    return 0;
}

