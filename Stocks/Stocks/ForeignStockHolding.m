//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Shane Doyle on 27/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float) costInDollars
{
    float cost = [super costInDollars];
    return cost * [self conversionRate];
}

- (float) valueInDollars
{
    float value = [super valueInDollars];
    return value * [self conversionRate];
}

@end
