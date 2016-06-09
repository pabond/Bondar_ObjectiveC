//
//  BPVCreature.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/7/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSObject+BPVCategory.h"

extern const uint8_t kBPVChildrenCount;

typedef enum {
    BPVCreatureGenderTypeUnknown,
    BPVCreatureGenderTypeMale,
    BPVCreatureGenderTypeFemale
} BPVCreatureGenderType;

@interface BPVCreature : NSObject

@property (nonatomic, copy)                 NSString  *name;
@property (nonatomic, assign, readwrite)    NSInteger age;
@property (nonatomic, assign, readwrite)    float     waight;

- (void)sayHi;
- (void)performGenderSpecificOperation;

@end
