//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
// /Users/monashamsolebad/Downloads/iOS-Student-PizzaRestaurant-master/PizzaRestaurant

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Mona.h"
#import "Sam.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Mona *mona = [Mona new];
        Sam *sam = [Sam new];
        
        while (TRUE) {
            
            NSLog(@"Please pick the manager(mona,sam,none) and your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *manager = commandWords[0];
            NSString *sizeInput = commandWords[1];
            NSArray *toppings= [commandWords subarrayWithRange:NSMakeRange(2, commandWords.count -2)];
            
            restaurantKitchen.delegate = nil;
            
            if ([manager isEqualToString:@"mona"]) {
                restaurantKitchen.delegate = mona;
            }
            
            if ([manager isEqualToString:@"sam"]) {
                restaurantKitchen.delegate = sam;
            }
            
            Pizza *pizza;
            
            PizzaSize pizSize =[Pizza sizeFromString: sizeInput];
            
            pizza = [restaurantKitchen makePizzaWithSize:pizSize toppings:toppings];
            
            NSLog(@"\n Here is your order : %@" , pizza);
        }
        
    }
    return 0;
}

