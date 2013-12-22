//
//  main.c
//  TwoFloats
//
//  Created by Shane Doyle on 22/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    // Declare the two variables of type float.
    float valueOne;
    float valueTwo;
    
    // Assign the first value 3.14
    valueOne = 3.14;
    
    printf("The first value is %f.\n", valueOne);
    
    // Assign the second value 43.0
    valueTwo = 43.0;
    
    printf("The second value is %f.\n", valueTwo);
    
    // Declar the variable that will hold the sum of the floats.
    double sumOfFloats;
    sumOfFloats = valueOne + valueTwo;
    
    // Print the sum of the floats.
    printf("The sum of the two floats is %f.\n", sumOfFloats);
    
    return 0;
}

