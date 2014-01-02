//
//  main.c
//  Affirmation
//
//  Created by Shane Doyle on 02/01/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    if (argc != 3) {
        fprintf(stderr, "Usage Affiramtion <name> <number>\n");
        return 1;
    }
    
    int count = atoi(argv[2]);
    for (int i = 0; i < count; i++) {
        printf("%s is extremelly cool\n", argv[1]);
    }
    
    return 0;
}

