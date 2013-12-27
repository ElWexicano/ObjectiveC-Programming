//
//  Employee.h
//  BMITime
//
//  Created by Shane Doyle on 27/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;

- (void)addAssetsObject:(Asset *)asset;
- (unsigned int)valueOfAssets;

@end
