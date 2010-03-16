#import <Foundation/Foundation.h>
#import "RetainTracker.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	RetainTracker *tracker = [RetainTracker new]; //1
	[tracker retain];//2
	NSLog(@"%d", [tracker retainCount]);
	[tracker retain]; //3
	NSLog(@"%d", [tracker retainCount]);
	[tracker release]; //2
	NSLog(@"%d", [tracker retainCount]);
	[tracker release]; //1
	NSLog(@"%d", [tracker retainCount]);
	[tracker retain]; //2
	NSLog(@"%d", [tracker retainCount]);
	[tracker release]; //1
	NSLog(@"%d", [tracker retainCount]);
	[tracker release]; //0 dealloc'ed
	
    [pool drain];
    return 0;
}
