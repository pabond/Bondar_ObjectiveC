//
//  BPVCreatureFemale.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/8/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVCreature.h"

@interface BPVCreatureFemale : BPVCreature

@property (nonatomic, readonly)             NSArray                  *children;
@property (nonatomic, assign, readwrite)    BPVCreatureGenderType    gender;

- (BPVCreature *)giveBirthToChildWithName: (NSString *)name;
- (BPVCreature *)giveBirthToChild;

- (BPVCreature *)addChild: (BPVCreature *)child;
- (void)removeChild: (BPVCreature *)child;
- (NSArray *)children;

@end
