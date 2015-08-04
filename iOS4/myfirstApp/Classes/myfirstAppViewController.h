//
//  myfirstAppViewController.h
//  myfirstApp
//
//  Created by Albert Tirtariyadi on 12-04-16.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myfirstAppViewController : UIViewController {
	//what we basically did here was made a label, and a button
	UILabel *myLabel;
	UIButton *myButton;
	
}

@property (nonatomic, retain) IBOutlet UILabel *myLabel;
@property (nonatomic, retain) IBOutlet UIButton *myButton;
//here, we made it so when the user presses the button, we call the buttonPressed method
- (IBAction)buttonPressed:(id)sender;

@end

