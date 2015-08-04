//
//  myfirstAppViewController.m
//  myfirstApp
//
//  Created by Albert Tirtariyadi on 12-04-16.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "myfirstAppViewController.h"

@implementation myfirstAppViewController

//this creates getters and setters for us using @synthesize, 
//which we need to do because we added properties for them in the header file
@synthesize myLabel;
@synthesize myButton;

-(IBAction)buttonPressed:(id)sender{
	//this basically makes the buttonPressed method, which will be called by the interface when the user hits the button
	[myLabel setText:@"Hello world!"];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
