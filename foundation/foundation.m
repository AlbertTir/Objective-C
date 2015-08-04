#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	
	//this declares a pointer, NSString is a variable type I think
	NSString *testString;
	//I think this line initializes all the instance variable in the class
	testString = [[NSString alloc] init];
	/*
	 these two are essentially the same as the line above
	 testString = [NSString alloc];
	[testString init];
	looks like it's ok not to initialize variables, but still, it's good practice to do it anyway
	 */
	//this line basically puts the string into testString
	testString = @"Here's a test string in testString!";
	//NSLog is the printf here
	NSLog(@"testString: %@", testString);
	
	
	//looks like you can still do this in Objective C, but I'd rather try to learn the actual language than use an outdated language
	int num = 0;
	num = 65;
	printf("%d\n", num);
	 
	[pool drain];
	return 0;
}
