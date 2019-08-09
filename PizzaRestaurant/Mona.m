//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Mona Shamsolebad on 2019-08-07.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Mona.h"
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

@implementation Mona

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    [_deliveryService deliverPizza:pizza];
}

@end
