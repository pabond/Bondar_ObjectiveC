//
//  BPVCreature.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/7/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVCreature.h"

const uint8_t kBPVChildrenCount = 3;

@implementation BPVCreature

- (void)sayHi {
    NSLog(@"Creature %@ says HI!", self.name);
}

- (void)performGenderSpecificOperation {
    NSLog(@"Sleep well!");
}

@end
