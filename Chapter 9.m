#import <Foundation/Foundation.h>
#import "RetainTracker.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	RetainTracker *tracker = [RetainTracker new]; //1
	[tracker retain];//2
	[tracker autorelease];//2
	[tracker release];
	NSLog(@"Releasing Pool");
    [pool release];
    return 0;
}
