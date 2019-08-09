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
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Mona *mona = [Mona new];
        DeliveryService *deliverService = [DeliveryService new];
        mona.deliveryService = deliverService;
        restaurantKitchen.delegate = mona;
        
        while (TRUE) {
            
            NSLog(@"Please pick the your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *sizeInput = commandWords[0];
            NSArray *toppings= [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count -1)];
            
            Pizza *pizza;
            
            PizzaSize pizSize =[Pizza sizeFromString: sizeInput];
            
            pizza = [restaurantKitchen makePizzaWithSize:pizSize toppings:toppings];
            
            NSLog(@"%@", [deliverService getDeliveredPizzas]);
        }
        
    }
    return 0;
}

