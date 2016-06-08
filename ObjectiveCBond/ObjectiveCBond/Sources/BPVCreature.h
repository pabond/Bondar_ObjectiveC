//
//  BPVCreature.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/7/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import <Foundation/Foundation.h>

extern const uint8_t kBPVChildrenCount;

typedef enum {
    BPVCreatureGenderTypeUnknown,
    BPVCreatureGenderTypeMale,
    BPVCreatureGenderTypeFemale
} BPVCreatureGenderType;

@interface BPVCreature : NSObject

@property (nonatomic, copy)     NSString  *name;
@property (nonatomic, readonly) NSArray   *children;

@property (nonatomic, assign, readwrite) NSInteger age;
@property (nonatomic, assign, readwrite) float     waight;

@property (nonatomic, assign, readwrite) BPVCreatureGenderType gender;

- (void)fight;
- (BPVCreature *)giveBirthToChildWithName: (NSString *)name;
- (BPVCreature *)giveBirthToChild;

- (BPVCreature *)addChild: (BPVCreature *)child;
- (void)removeChild: (BPVCreature *)child;
- (NSArray *)children;

- (void)sayHi;

@end
