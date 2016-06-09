//
//  BPVWashRoom.h
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "BPVRoom.h"

@interface BPVWashRoom : BPVRoom

@property (nonatomic, assign, getter=isWorkerInside, setter=serIsWorkerInside:) BOOL workerInside;
@property (nonatomic, assign, getter=isCarInside, setter=setIsCarInside:)       BOOL carInside;

@property (nonatomic, retain) id worker;
@property (nonatomic, retain) id car;

@end
