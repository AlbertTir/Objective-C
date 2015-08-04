#import <Foundation/Foundation.h>
#import "SimpleCar.h"

int main (int argc, const char * argv[]) {
	
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	SimpleCar *myCar = [[SimpleCar alloc] init]; //this creates a pointer to an instance of SimpleCar called myCar
	
	NSNumber *newVin = [NSNumber numberWithInt:123]; //need to pass NSNumber to the setVin method, so we make one here and initialize it with the value 123
	
	[myCar setVin:newVin]; //invoke our methods, myCar will be receiving the message, and then we use the method setVin
	[myCar setMake:@"Honda" andModel:@"Civic"]; //same idea, but we use @ sign to tell the compiler that what comes next is a string
	
	NSLog(@"The car is: %@ %@", [myCar make], [myCar model]);
	NSLog(@"The vin is: %@", [myCar vin]);
	
	[myCar release]; //then we just release the allocated memory
	
    [pool drain];
    return 0;
}
