//
//  Portfolio.m
//  Stocks
//
//  Created by Shane Doyle on 28/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "StockHolding.h"
#import "Portfolio.h"

@implementation Portfolio

- (void)addStockToPortfolio:(StockHolding *)stockHolding
{
    if (!stocks) {
        stocks = [NSMutableArray array];
    }
    
    [stocks addObject:stockHolding];
}

- (float)currentValue
{
    float currentValue = 0.0;
    
    for (StockHolding *stock in stocks) {
        // Current Value is the valueInDollars - costInDollars
        
        currentValue += [stock valueInDollars] - [stock costInDollars];
    }
    
    return currentValue;
}

@end
