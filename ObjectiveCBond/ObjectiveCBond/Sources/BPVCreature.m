//
//  BPVCreature.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/7/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVCreature.h"

const uint8_t kBPVChildrenCount = 3;

@interface BPVCreature ()

@property (nonatomic, retain) NSMutableArray *mutableChildren;

@end

@implementation BPVCreature

@dynamic children;

- (instancetype)init {
    self = [super init];
    self.mutableChildren = [[[NSMutableArray alloc] init] autorelease];
    
    return self;
}

- (void)dealloc {
    self.name = nil;
    
    [super dealloc];
}

- (void)fight {
    NSLog(@"%@ go to fight.", self.name);
}

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
}

- (BPVCreature *)giveBirthToChildWithName: (NSString *)name {
    BPVCreature *child = [self giveBirthToChild];
    [child setName: name];
    NSLog(@"Babys name is %@", name);
    return child;
}

- (BPVCreature *)giveBirthToChild {
    return [[BPVCreature new] autorelease];
}


- (BPVCreature *)addChild: (BPVCreature *)child {
    if (!child) {
        return nil;
    }
    
    [self.mutableChildren addObject: child];
    
    return child;
}

- (void)removeChild: (BPVCreature *)child {
    [self.children[0] removeObject: child];
}

- (void)sayHi {
    NSLog(@"Creature %@ says HI!", self.name);
}

@end
