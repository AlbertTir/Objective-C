//
//  SimpleCar.h
//  CarApp
//
//  Created by Albert Tirtariyadi on 12-03-04.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface SimpleCar : NSObject {
	NSString* make;
	NSString* model;
	NSNumber* vin; //vehicle identification number
}

@property(readwrite, retain) NSString* make;
@property(readwrite, retain) NSString* model;
@property(readwrite, retain) NSNumber* vin;

/*
 this is another way to write down all those methods without all the lines
 @property declarations are used to tell the compiler we are declaring a property
	-the attributes are the read/write status, and retain is for memory management
	-so these new Property methods are for our interface, we will use Synthesizers for the Implementations
 */

//convenience method
-(void) setMake: (NSString*)newMake
	   andModel:	(NSString*)newModel;

@end
