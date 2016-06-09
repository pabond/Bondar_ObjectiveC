//
//  BPVCarWashBuilding.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVCarWashBuilding.h"

@implementation BPVCarWashBuilding

- (BPVCarWashBuilding *)addRoom {
    BPVCarWashBuilding *room = [BPVCarWashBuilding object];
    [self addRoomToCollection: room];
    
    return room;
}

@end
