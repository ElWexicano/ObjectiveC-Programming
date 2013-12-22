//
//  main.c
//  Turkey
//
//  Created by Shane Doyle on 22/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // Declare the variable called 'weight' of type float
    float weight;
    
    // Put a number in that variable
    weight = 14.2;
    
    // Log it to the user
    printf("The turkey weighs %f.\n",weight);
    
    // Declare another variable of type float
    float cookingTime;
    
    // Caculate the cooking time and store it in the variable
    cookingTime = 15.0 + 15.0 * weight;
    
    // Log that to the user
    printf("Coook it for %f minutes.\n", cookingTime);
    
    return 0;
}

