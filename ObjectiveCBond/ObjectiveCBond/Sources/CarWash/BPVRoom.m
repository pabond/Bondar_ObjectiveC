//
//  BPVRoom.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVRoom.h"

@interface BPVRoom ()

@property (nonatomic, retain) NSMutableArray *mutableWorkers;

@end

@implementation BPVRoom

@dynamic workers;

- (instancetype)init {
    self = [super init];
    self.mutableWorkers = [NSMutableArray object];
    
    return self;
}

- (void)dealloc {
    [self setMutableWorkers: nil];
    
    [super dealloc];
}

- (void)addWorkerToCollection: (id)worker {
    worker ? [self.mutableWorkers addObject: worker] : nil;
}

- (id)addWorker {
    return nil;
}

@end
