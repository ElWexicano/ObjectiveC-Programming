//
//  main.c
//  PBR
//
//  Created by Shane Doyle on 24/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>
#include <math.h>


void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr)
{

    if (rPtr) {
        // Store the radius in the supplied address
        *rPtr = sqrt(x * x + y * y);
    }
    
    if (!thetaPtr) {
        return;
    }
    
    // Calculate theta
    float theta;
    if (x == 0.0) {
        theta = 0.0; // Technically considered undefined
    } else if(y > 0) {
        theta = M_PI_2;
    } else {
        theta = - M_PI_2;
    }
    
    // Store theta in the supplied address
    *thetaPtr = theta;
}

int main(int argc, const char * argv[])
{

    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // Pass the address of the integerPart as an argument
    fractionPart = modf(pi, &integerPart);
    
    // Find the value stored in integerPart;
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f)\n", x, y, radius, angle);
    
    return 0;
}

