//
//  BPVDirector.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVDirector.h"

@implementation BPVDirector

- (id)addWorker {
    BPVDirector *worker = [BPVDirector object];
    [self addWorkerToCollection: worker];
    
    return worker;
}

- (void)earnMoney {
    NSLog(@"I'm earning money.");
}

@end
