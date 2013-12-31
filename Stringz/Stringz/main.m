//
//  main.m
//  Stringz
//
//  Created by Shane Doyle on 31/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        // Writing an NSString to a File
        
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Shane is cool\n"];
        }
        
        
        // Declare a pointer to an NSError object, but don't instantiate it.
        
        NSError *error = nil;
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed with error: %@", [error localizedDescription]);
        }
        
        
        // Reading files with NSString
        
        NSString *string = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                                           encoding:NSASCIIStringEncoding
                                                              error:&error];
        
        if (!string) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conv looks like this: %@", string);
        }
        
    }
    return 0;
}

