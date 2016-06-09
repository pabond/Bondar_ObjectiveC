//
//  BPVAccountant.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVWorker.h"
#import "BPVWorckersProtocol.h"

@interface BPVAccountant : BPVWorker <BPVWorckersProtocol>

@property (nonatomic, assign) NSUInteger money;

- (NSUInteger)moneyCount;

@end
