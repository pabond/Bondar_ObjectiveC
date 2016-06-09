//
//  BPVCreatureFemale.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/8/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVCreatureFemale.h"

@interface BPVCreatureFemale ()

@property (nonatomic, retain) NSMutableArray *mutableChildren;

@end

@implementation BPVCreatureFemale

@dynamic children;

- (instancetype)init
{
    self = [super init];
    self.gender = BPVCreatureGenderTypeFemale;
    self.mutableChildren = [NSMutableArray object];
    
    return self;
}

- (void)dealloc {
    self.name = nil;
    self.mutableChildren = nil;
    
    [super dealloc];
}

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
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


- (BPVCreature *)giveBirthToChildWithName: (NSString *)name {
    BPVCreature *child = [self giveBirthToChild];
    [child setName: name];
    NSLog(@"Babys name is %@", name);
    
    return child;
}

- (BPVCreature *)giveBirthToChild {
    NSLog(@"Child was born!");
    
    return [BPVCreature object];
}

- (void)performGenderSpecificOperation {
    [self giveBirthToChild];
}

@end
