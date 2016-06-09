//
//  BPVAccountant.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVWorker.h"

@interface BPVAccountant : BPVWorker

@property (nonatomic, assign) NSUInteger money;

- (NSUInteger)moneyCount;

@end
