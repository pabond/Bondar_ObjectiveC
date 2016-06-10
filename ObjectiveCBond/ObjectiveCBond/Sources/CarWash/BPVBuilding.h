//
//  BPVBuilding.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSObject+BPVCategory.h"

typedef enum {
    BPVBuildingTypeAdmin,
    BPVBuildingTypeCarWash
} BPVBuildingType;

@interface BPVBuilding : NSObject

@property (nonatomic, readonly) NSArray *rooms;

- (id)addRoom;

- (void)addRoomToCollection: (id)room;

- (id)addBuilding: (BPVBuildingType)type;

@end
