//
//  SimpleCar.m
//  CarApp
//
//  Created by Albert Tirtariyadi on 12-03-04.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SimpleCar.h"

@implementation SimpleCar

/*
 we condensed all that into that one @synthesize line.
 -@property replaces all of the interface method declarations for getters and setters
 -@synthesize replaces the actual method themselves
 -the getters and setters are now dynamically created and we don't need to waste time creating them
	-unless we need to do something really special
	-it's kind of like malloc vs static variables in C, but this is for dynamically creating methods (insane)
 */

@synthesize make, model, vin;

// convenience method
- (void) setMake: (NSString*)newMake
        andModel: (NSString*)newModel{
	
	[self setMake:newMake];
	[self setModel:newModel];
}

@end
