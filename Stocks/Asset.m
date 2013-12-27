//
//  Asset.m
//  Stocks
//
//  Created by Shane Doyle on 27/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label;
@synthesize resaleValue;

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%d>", [self label], [self resaleValue]];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
