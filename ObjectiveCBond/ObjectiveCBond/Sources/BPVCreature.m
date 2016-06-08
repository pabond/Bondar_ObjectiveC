//
//  BPVCreature.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/7/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVCreature.h"

@implementation BPVCreature

@dynamic children;

- (void)dealloc {
    self.name = nil;
    
    [super dealloc];
}

- (void)fight {
    NSLog(@"%@ go to fight for family protection.", self.name);
}

- (NSArray *)children {
    return [[[[[NSMutableArray alloc] init] autorelease] copy] autorelease];
}

- (BPVCreature *)giveBirthToChildWithName: (NSString *)name {
    NSLog(@"Child was born and and named %@", name);
    return [[BPVCreature new] autorelease];
}

- (void)addChild: (BPVCreature *)child {
    if (child) {
        [self.children[0] addObject: child];
    }
}

- (void)removeChild: (BPVCreature *)child {
    [self.children[0] removeObject: child];
}

- (void)sayHi {
    NSLog(@"Creature named %@ says HI!", self.name);
}

@end

