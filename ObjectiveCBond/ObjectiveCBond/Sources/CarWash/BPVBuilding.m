//
//  BPVBuilding.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVBuilding.h"

@interface BPVBuilding ()

@property (nonatomic, retain) NSMutableArray *mutableRooms;

@end

@implementation BPVBuilding

@dynamic rooms;

- (instancetype)init {
    self = [super init];
    self.mutableRooms = [NSMutableArray object];
    
    return self;
}

- (void)dealloc {
    [self setMutableRooms: nil];
    
    [super dealloc];
}

- (void)addRoomToCollection: (id)room {
    room ? [self.mutableRooms addObject: room] : nil;
}

- (id)addRoom {
    return nil;
}

- (NSArray *)rooms {
    return [[[self mutableRooms] copy] autorelease];
}

- (void)removeRoom: (id)room {
    room ? [self.mutableRooms removeObject: room] : nil;
}

@end
