//
//  main.c
//  Coolness
//
//  Created by Shane Doyle on 22/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    // While Loop
    int i = 0;
    while (i < 12) {
        printf("%d. Shane is Cool\n", i);
        i++;
    }
    
    // For Loop
    int x;
    for (x = 0; x < 12; x++) {
        
        if (x % 3 == 0) {
            continue;
        }
        
        printf("Checking x = %d\n", x);
        
        if (x + 90 == x * x) {
            break;
        }
    }
    
    printf("The answer is %d.\n", x);
    
    // Do-While Loop
    
    int y = 0;
    do {
        printf("%d. Shane is Cool\n", y);
        y++;
    } while (y < 13);
    
    // Challenge
    
    for (int z = 99; z >= 0; z-=3) {
        
        if (z % 3 == 0) {
            printf("%d\n", z);
        }
        
        if (z % 5 == 0) {
            printf("Found One!\n");
            continue;
        }
        
    }
    
    return 0;
}

