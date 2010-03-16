//
//  RetainTracker.m
//  Chapter 9
//
//  Created by Thomas Eapen on 10-03-16.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker

- (id)init {
	if (self = [super init]) {
		NSLog(@"init: Retain count of %d.", [self retainCount]);
	}
	return self;
}

- (void)dealloc {
	NSLog(@"dealloc called, bye bye");
	[super dealloc];
}

@end
