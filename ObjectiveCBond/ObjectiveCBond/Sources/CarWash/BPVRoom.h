//
//  BPVRoom.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVBuilding.h"

typedef enum {
    BPVWorkerWasher,
    BPVRoomAccountant,
    BPVWorkerDirector
} BPVWorkerType;

@interface BPVRoom : BPVBuilding

@property (nonatomic, readonly) NSArray *workers;

- (void)addWorkerToCollection: (id)worker;

- (id)addWorker;

@end
