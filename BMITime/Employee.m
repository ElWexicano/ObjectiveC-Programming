//
//  Employee.m
//  BMITime
//
//  Created by Shane Doyle on 27/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (void)addAssetsObject:(Asset *)asset
{
    // Check if assets is nil.
    if (!assets) {
        assets = [[NSMutableSet alloc] init];
    }
    
    [assets addObject:asset];
    [asset setHolder:self];
}

- (unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets.
    unsigned int sum = 0;
    
    for (Asset *asset in assets) {
        sum += [asset resaleValue];
    }
    
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeID], [self valueOfAssets]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
