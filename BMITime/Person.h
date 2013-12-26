//
//  Person.h
//  BMITime
//
//  Created by Shane Doyle on 26/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>

// The class Person inherits all the instance variables
// and methods defined by the class NSObject
@interface Person : NSObject
{
    // It has two instance variables.
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

// This method calculats the Body Mass Index.
- (float)bodyMassIndex;

@end
