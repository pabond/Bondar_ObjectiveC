//
//  BPVBuilding.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    BPVRoomCarWash,
    BPVRoomAdmin
} BPVRoomType;

@interface BPVBuilding : NSObject

- (id)addRoom: (BPVRoomType)type withWorkers: (uint8_t)count;

@end
