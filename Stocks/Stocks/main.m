//
//  main.m
//  Stocks
//
//  Created by Shane Doyle on 26/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

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
       
        // Add the instances to the array.
        [stocks addObject:stock2];
        [stocks addObject:stock1];
        [stocks addObject:stock3];
        
        // Loop through the array and print out its information.
        for (StockHolding *stock in stocks) {
            NSLog(@"The cost in $%.2f and the value is $%.2f for %d shares", [stock costInDollars], [stock valueInDollars], [stock numberOfShares]);
        }
    }
    return 0;
}

