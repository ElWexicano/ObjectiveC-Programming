//
//  Person.m
//  BMITime
//
//  Created by Shane Doyle on 26/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end
