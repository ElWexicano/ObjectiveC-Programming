//
//  main.c
//  BMICalc
//
//  Created by Shane Doyle on 24/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#include <stdio.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person person)
{
    return person.weightInKilos / (person.heightInMeters * person.heightInMeters);
}


int main(int argc, const char * argv[])
{
    Person person;
    
    person.heightInMeters = 1.80;
    person.weightInKilos = 86;
    
    printf("Person weighs %i in kgs\n", person.weightInKilos);
    printf("Person is %.2f meters tall\n", person.heightInMeters);
    
    float bmi = bodyMassIndex(person);
    printf("Person has a BMI of %.2f\n", bmi);
    
    return 0;
}

