//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Mona Shamsolebad on 2019-08-07.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)initWithSize: (PizzaSize) size andToppings :(NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size ;
        _toppings = toppings;
    }
    return self;
}
+(Pizza *) largePepperoni {
    return  [[Pizza alloc]initWithSize:LARGE andToppings:@[@"pepperoni", @"ham" ,@"cheese"]];
}
+(Pizza *) meatLoversWithSize :(PizzaSize) size {
    return  [[Pizza alloc]initWithSize:size andToppings:@[@"meat", @"ham" ,@"cheese"]];
}
             
+(PizzaSize) sizeFromString : (NSString *) str{
    NSString *lowerd= str.lowercaseString;
    if([lowerd isEqualToString:@"small"]){
        return SMALL;
    }
   else if([lowerd isEqualToString:@"medium"]){
        return MEDIUM;
    }
   else {
       return LARGE;
   }
}
- (NSString *)description
{
    NSString *toppings;
    if (_toppings.count > 0){
        toppings = [_toppings componentsJoinedByString:@", "];
    }
    else {
        toppings = @"no toppings";
    }
    return [NSString stringWithFormat:@"Pizza - %d size and toppings: %@", _size , toppings];
}

@end
