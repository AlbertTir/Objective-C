//
//  ViewController.h
//  helloWorld
//
//  Created by Albert Tirtariyadi on 12-05-16.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

bool greetWorld;
NSString* word;

@interface ViewController : UIViewController {
    UITextField *textField; //still not sure what this is for
}

//various buttons
- (IBAction)displayButton:(id)sender;
- (IBAction)clearButton:(id)sender;
- (IBAction)printString:(id)sender;
- (IBAction)printText:(id)sender;

//the label
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

//to make keyboard go away by either pressing Return or tapping the background
@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)textFieldReturn:(id)sender;
- (IBAction)backgroundTouched:(id)sender;

@end
