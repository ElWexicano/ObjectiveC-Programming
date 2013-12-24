//
//  main.c
//  Addresses
//
//  Created by Shane Doyle on 24/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>
#include <limits.h>

int main(int argc, const char * argv[])
{

    int i = 17;
    
    // Get the variable address
    printf("i stores its value at %p\n", &i);
    
    // Get the function address
    printf("this function starts at %p\n", main);
    
    // Store addresses in pointers
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    
    // Get the value of the integer stored.
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    
    // Store data at a particular address.
    *addressOfI = 18;
    printf("Now i is %d\n", i);
    
    // Find the size of an int
    printf("An int is %zu bytes\n", sizeof(i));
    
    // Find the size of a pointer. If it is 4 bytes long you are running in 32 bit and if it is 8 bytes you are running in 64 bit.
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    
    // Set a pointer to null for use later.
    float *myNullPointer;
    myNullPointer = NULL;
    
    
    // Challenge, show how much memory a float consumes.
    printf("A float consumes %zu memory\n", sizeof(float));
    
    printf("The smallest number a short can store is %d\n", SHRT_MIN);
    
    printf("The largest number a short can store is %d\n", SHRT_MAX);
    
    
    return 0;
}

