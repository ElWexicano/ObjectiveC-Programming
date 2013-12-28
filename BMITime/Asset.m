//
//  Asset.m
//  BMITime
//
//  Created by Shane Doyle on 27/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label;
@synthesize resaleValue;
@synthesize holder;

- (NSString *) description
{
    
    if ([self holder]) {
            return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", [self label], [self resaleValue], [self holder]];
    } else {
            return [NSString stringWithFormat:@"<%@: $%d unassigned>", [self label], [self resaleValue]];
    }
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
