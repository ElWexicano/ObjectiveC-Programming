//
//  main.c
//  yostring
//
//  Created by Shane Doyle on 02/01/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int spaceCount(const char *c)
{
    int count = 0;
    
    long lenght = strlen(c);
    
    for (int i = 0; i < lenght; i++) {
        if(c[i] == 0x20) {
            count++;
        }
    }
    
    return count;
}


int main(int argc, const char * argv[])
{
    char x = 0x21; // The character '!'
    
    while (x < '~') {
        printf("%x is %c\n", x, x);
        x++;
    }
    
    // Using char*
    
    // Get a pointer to 5 bytes of memory on the heap
    char *start = malloc(5);
    
    // Put 'L' in the first byte
    start[0] = 'L';
    
    // Put 'o' in the second byte
    start[1] = 'o';
    
    // Put 'v' in the third byte
    start[2] = 'v';
    
    // Put 'e' in the fourth byte
    start[3] = 'e';
    
    // Put zero in the fifth byte
    start[4] = '\0';
    
    // Print out the string and its length
    printf("%s has %zu characters\n", start, strlen(start));
    
    // Print out the third letter
    printf("The third letter is %c\n", start[2]);
    
    // Free the memory so that it can be reused
    free(start);
    start = NULL;
    
    
    // Use a String Literal
    
    char p = '!'; // The character '!'
    
    while (p <= '~') {
        printf("%x is %c\n", p, p);
        p++;
    }
    
    const char *love = "A backslash after two newlines and a tab:\n\n\t\\";
    
    printf("%s has %zu characters\n", love, strlen(love));
    printf("The third letter is %c\n", love[2]);
    
    
    // Challenge
    
    const char *sentence = "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));
    
    return 0;
}

