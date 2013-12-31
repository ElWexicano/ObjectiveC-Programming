//
//  main.m
//  Callbacks
//
//  Created by Shane Doyle on 31/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        Logger *logger = [[Logger alloc] init];
        
        // Register logger to recieve a notification when the time zone changes.
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChanged:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        // Example of an Helper Object Callback. Look at Logger for implementation of the methods.
        __unused NSURLConnection *fetchConnection = [[NSURLConnection alloc]
                                                     initWithRequest:request
                                                            delegate:logger
                                                     startImmediately:YES];
        
        // An example of Target-Action Callback.
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

