//
//  BPVAccountant.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVAccountant.h"

@implementation BPVAccountant

- (id)addWorker {
    BPVAccountant *worker = [BPVAccountant object];
    [self addWorkerToCollection: worker];
    
    return worker;
}

- (NSUInteger)moneyCount {
    NSUInteger money = self.money;
    NSLog(@"I'm accountant, now is in cashbox %lu USD", (unsigned long)money);
    return money;
}

@end
