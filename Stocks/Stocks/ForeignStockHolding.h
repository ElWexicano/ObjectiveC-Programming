//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Shane Doyle on 27/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding

{
    float conversionRate;
}

@property float conversionRate;

@end
