//
//  main.c
//  StructsChallenge
//
//  Created by Shane Doyle on 24/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    secondsSince1970 += 4000000;
    
    localtime_r(&secondsSince1970, &now);
    printf("4 million seconds in the future will be %d-%d-%d\n", now.tm_mon + 1, now.tm_mday, now.tm_year + 1900);
    
    return 0;
}

