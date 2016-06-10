//
//  BPVAdminBuilding.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVAdminBuilding.h"

@implementation BPVAdminBuilding

- (BPVAdminBuilding *)addRoom {
    BPVAdminBuilding *room = [BPVAdminBuilding object];
    [self addRoomToCollection: room];
    
    return room;
}

@end
