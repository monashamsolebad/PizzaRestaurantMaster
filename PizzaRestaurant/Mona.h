//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Mona Shamsolebad on 2019-08-07.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface Mona : NSObject<KitchenDelegate>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end

NS_ASSUME_NONNULL_END
