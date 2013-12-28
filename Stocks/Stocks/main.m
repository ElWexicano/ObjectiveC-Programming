//
//  main.m
//  Stocks
//
//  Created by Shane Doyle on 26/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instance of NSMutableArry.
        NSMutableArray *stocks = [NSMutableArray array];
        
        // Create an instance of StockHolding.
        StockHolding *stock1 = [[StockHolding alloc] init];
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares:40];

        // Create a 2nd instance of StockHolding.
        StockHolding *stock2 = [[StockHolding alloc] init];
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        
        // Create another instance of StockHolding.
        StockHolding *stock3 = [[StockHolding alloc] init];
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
       
        // Create an instance of ForeignStockHolding.
        ForeignStockHolding *stock4 = [[ForeignStockHolding alloc] init];
        [stock4 setPurchaseSharePrice:55.10];
        [stock4 setCurrentSharePrice:60.01];
        [stock4 setNumberOfShares:300];
        [stock4 setConversionRate:1.23];

        // Create another instance of ForeignStockHolding.
        ForeignStockHolding *stock5 = [[ForeignStockHolding alloc] init];
        [stock5 setPurchaseSharePrice:123.17];
        [stock5 setCurrentSharePrice:131.99];
        [stock5 setNumberOfShares:220];
        [stock5 setConversionRate:0.73];
        
        // Add the instances to the array.
        [stocks addObject:stock2];
        [stocks addObject:stock1];
        [stocks addObject:stock3];
        [stocks addObject:stock4];
        [stocks addObject:stock5];
        
        
        // Create a portfolio
        Portfolio *portfolio = [[Portfolio alloc] init];
        
        
        // Loop through the array and print out its information.
        for (StockHolding *stock in stocks) {

            [portfolio addStockToPortfolio:stock];
            
            NSLog(@"The cost in $%.2f and the value is $%.2f for %d shares", [stock costInDollars], [stock valueInDollars], [stock numberOfShares]);
        }
        
        NSLog(@"The current value of the portfolio is %.2f", [portfolio currentValue]);
        
    }
    return 0;
}

