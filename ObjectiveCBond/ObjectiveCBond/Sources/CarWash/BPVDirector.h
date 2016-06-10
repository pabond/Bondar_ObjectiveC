//
//  BPVDirector.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVWorker.h"

@interface BPVDirector : BPVWorker

@property (nonatomic, assign) NSUInteger earnedMoney;

- (void)earnMoney;

@end
