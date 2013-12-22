//
//  main.c
//  Triangle
//
//  Created by Shane Doyle on 22/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA, float angleB)
{
    float angleC;
    
    if (angleA + angleB > 180) {
        return 0;
    } else {
        angleC = 180 - (angleA + angleB);
    }
    
    return angleC;
}

int main(int argc, const char * argv[])
{

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    
    return 0;
}

