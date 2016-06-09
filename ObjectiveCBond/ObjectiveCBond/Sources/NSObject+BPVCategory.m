//
//  NSObject+BPVCategory.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/9/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import "NSObject+BPVCategory.h"

@implementation NSObject (BPVCategory)

+ (id)object {
    return [[[self alloc] init] autorelease];
}

@end
