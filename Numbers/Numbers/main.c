//
//  main.c
//  Numbers
//
//  Created by Shane Doyle on 22/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{

    unsigned long x = 255;
    // Print x in Base-10 (Decimal)
    printf("x is %lu.\n", x);
    // Print x in Base-8 (Octal)
    printf("In octal, x is %lo.\n", x);
    // Print x in Base-16 (Hexadecimal)
    printf("In hexadecimal, x is %lx.\n", x);
    // Print aritmetic operation
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
    // Print integer division
    printf("11 / 3 = %d remainder of %d\n", 11 / 3, 11 % 3);
    // Print floating division
    printf("11 / 3 = %f\n", 11 / (float) 3);
    // Print absolute value
    printf("The absolute value of -5 is %d\n", abs(-5));
    
    // Print floating point numbers
    double y = 12345.6789;
    // Print using decimal notation
    printf("y is %f\n", y);
    // Print using scientific notation
    printf("y is %e\n", y);
    
    // Limit to two digits.
    printf("y is %.2f\n", y);
    printf("y is %.2e\n", y);
    
    
    // Challenge
    printf("The sine of %d is %.3f\n", 1, sin(1));
    
    return 0;
}

