//
//  main.m
//  ImageFetch
//
//  Created by Shane Doyle on 31/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Writing an NSData object to a file.
        
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return EXIT_FAILURE;
        }
        
        NSLog(@"The file is %lu bytes", [data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:NSDataWritingAtomic
                                   error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return EXIT_FAILURE;
        }
        
        NSLog(@"Success");
        
        // Reading an NSData from a file.
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes", [readData length]);
        
    }
    return 0;
}

