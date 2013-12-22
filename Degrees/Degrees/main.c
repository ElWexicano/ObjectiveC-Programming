//
//  main.c
//  Degrees
//
//  Created by Shane Doyle on 22/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

static float lastTemperature = 50.0;

float fahrenheitToCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsisu is %f Fahrenheit\n", cel, fahr);
    return fahr;
}


int main(int argc, const char * argv[])
{

    float freezeInC = 0;
    float freezeInF = fahrenheitToCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n", freezeInF);
    printf("The last temperature converted was %f\n", lastTemperature);
    
    return EXIT_SUCCESS;
}

