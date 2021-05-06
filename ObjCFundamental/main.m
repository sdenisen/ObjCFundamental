//
//  main.m
//  ObjCFundamental
//
//  Created by Sergey Denisenko on 06.05.2021.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import <stdlib.h>

typedef struct {
    char *name;
    size_t age;
} person_t;

void userLogin(person_t *user);

int main(int argc, const char * argv[]) {
    person_t user;
    userLogin(&user);
    
    return 0;
}

void userLogin(person_t *user){
    char buffer[256];
    
    NSLog(@"Please input your name: ");
    scanf("%s", buffer);
    user->name = malloc(sizeof(char) * strlen(buffer)+1);
    user->name = strcpy(user->name, buffer);
    
    NSLog(@"Please enter your age:");
    scanf("%lu", &user->age);
    
    NSLog(@"Nice to see you, %s (%lu)", user->name, user->age);
}
