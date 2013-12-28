//
//  Portfolio.h
//  Stocks
//
//  Created by Shane Doyle on 28/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
{
    NSMutableArray *stocks;
}

- (void)addStockToPortfolio:(StockHolding *)stockHolding;
- (float)currentValue;

@end
