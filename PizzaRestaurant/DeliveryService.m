//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Mona Shamsolebad on 2019-08-08.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveredPizzas = [[NSMutableArray alloc] init];
        _car = [[DeliveryCar alloc] init];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza{
    
    [_deliveredPizzas addObject:pizza.description];
    [_car deliverPizza:pizza];
}

- (NSMutableArray *)getDeliveredPizzas{
    return _deliveredPizzas;
}

@end
