//
//  Logger.m
//  Callbacks
//
//  Created by Shane Doyle on 31/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "Logger.h"

@implementation Logger
- (void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}


// Example of Helper Object Callback Implementation.

// Called each time a chunk of data arrives.
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    // Create a mutable data if it doesn't already exist
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
}

// Called when the last chunk has been processed.
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:incomingData encoding:NSUTF8StringEncoding];
    
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
}

// Called if the fetch fails
- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    NSLog(@"connection failed with the following error: %@", [error localizedDescription]);
    incomingData = nil;
}


// Example of Notifications Callback Implementation. This is called by the notification in main.
- (void) zoneChanged:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

@end
