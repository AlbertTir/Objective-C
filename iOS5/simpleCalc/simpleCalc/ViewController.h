//
//  ViewController.h
//  simpleCalc
//
//  Created by Albert Tirtariyadi on 12-05-17.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

float firstNum;
float secondNum;
float ans;
NSString *ansString;
NSString *firstNumString;
NSString *secondNumString;
NSString *appendString;
bool operatorFlag; //operatorFlag is to switch over between storing in 1st or 2nd variable
bool addCheck;
bool subtractCheck;
bool multiplyCheck;
bool divideCheck;
bool firstButtonPressed; //check for first button pressed

@interface ViewController : UIViewController

- (IBAction)zeroButton:(id)sender;
- (IBAction)oneButton:(id)sender;
- (IBAction)twoButton:(id)sender;
- (IBAction)threeButton:(id)sender;
- (IBAction)fourButton:(id)sender;
- (IBAction)fiveButton:(id)sender;
- (IBAction)sixButton:(id)sender;
- (IBAction)sevenButton:(id)sender;
- (IBAction)eightButton:(id)sender;
- (IBAction)nineButton:(id)sender;
- (IBAction)pointButton:(id)sender;

- (IBAction)clearButton:(id)sender;
- (IBAction)addButton:(id)sender;
- (IBAction)subtractButton:(id)sender;
- (IBAction)multiplyButton:(id)sender;
- (IBAction)divideButton:(id)sender;
- (IBAction)equalButton:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *displayLabel;

@end
