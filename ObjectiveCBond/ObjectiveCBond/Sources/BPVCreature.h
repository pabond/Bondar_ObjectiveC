//
//  BPVCreature.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/7/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    BPVCreatureGenderTypeUnknown,
    BPVCreatureGenderTypeMale,
    BPVCreatureGenderTypeFemale
} BPVCreatureGenderType;

@interface BPVCreature : NSObject

@property (nonatomic, copy) NSString *name;

@end
