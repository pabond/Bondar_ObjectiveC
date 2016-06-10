//
//  BPVWasher.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVWasher.h"

@implementation BPVWasher

- (id)addWorker {
    BPVWasher *worker = [BPVWasher object];
    [self addWorkerToCollection: worker];
    
    return worker;
}

- (void)washCar {
    NSLog(@"I'm washing car");
}

@end
