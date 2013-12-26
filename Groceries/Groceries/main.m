//
//  main.m
//  Groceries
//
//  Created by Shane Doyle on 26/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Challenge One
        
        NSString *grocery = @"Cake";
        NSString *chocolate = @"Chocolate";
        
        NSArray *array = [NSArray arrayWithObjects:grocery, chocolate, nil];
        
        for (NSString *item in array) {
            NSLog(@"The grocery is %@", item);
        }
        
        // Challenge Two
        
        NSString *namesString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        NSArray *names = [namesString componentsSeparatedByString:@"\n"];
        
        NSString *wordsString = [NSString stringWithContentsOfFile: @"/usr/share/dict/words"
                                                           encoding:NSUTF8StringEncoding
                                                              error:NULL];
     
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        NSUInteger numOfNames = [names count];
       
        for (int i = 0 ; i < numOfNames; i++ ) {
            
            NSString *name = [names objectAtIndex:i];
            
            for (NSString *word in words) {
                if ([name caseInsensitiveCompare:word] == NSOrderedSame) {
                    NSLog(@"%@ is a persons name and %@ is a word", name, word);
                }
            }
        }
        
    }
    return 0;
}

