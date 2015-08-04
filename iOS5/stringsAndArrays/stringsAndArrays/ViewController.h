//
//  ViewController.h
//  stringsAndArrays
//
//  Created by Albert Tirtariyadi on 12-05-22.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

NSArray *myArray;
NSMutableString *myMutableString;
NSString *myString;
NSString *userInput;
NSMutableArray *myMutableArray; 
/*
 -seems like this is a static array that has to be initiated
 -if the array is not initated with a certain capacity, when printed, it will show off null as values
 -&& the initialization stage can either be static, or auto-dynamic. init will make it a dynamically allocated array, allocatig for itself when needed. However, initWithCapacity will let you state how many boxes you want and that's all you will have
 */
int x;

@interface ViewController : UIViewController

- (IBAction)textField:(id)sender;
- (IBAction)addButton:(id)sender;
- (IBAction)printButton:(id)sender;
- (IBAction)clearButton:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *displayLabel;
@property (strong, nonatomic) IBOutlet UILabel *displayLabelTwo;

//this part of the code makes the keyboard go away when Return or the background is touched
@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)textFieldReturn:(id)sender;
- (IBAction)backgroundTouched:(id)sender;


@end
