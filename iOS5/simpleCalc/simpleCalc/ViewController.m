//
//  ViewController.m
//  simpleCalc
//
//  Created by Albert Tirtariyadi on 12-05-17.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize displayLabel = _displayLabel;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    firstNum = 0;
    secondNum = 0;
    ans = 0;
    firstNumString = @"";
    secondNumString = @"";
    appendString = @"0";
    operatorFlag = FALSE;
    addCheck = FALSE;
    subtractCheck = FALSE;
    multiplyCheck = FALSE;
    divideCheck = FALSE;
    self.displayLabel.text = @"0";
    
    //appendString = [firstNumString stringByAppendingString:secondNumString];

}

- (void)viewDidUnload
{
    [self setDisplayLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)zeroButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"0";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"0";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)oneButton:(id)sender {
   // self.displayLabel.text = [NSString stringWithFormat:@"%d", secondNum]; //converts the integer to a string to be printed on the label
    if (operatorFlag == FALSE) {
        appendString = @"1";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"1";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)twoButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"2";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"2";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)threeButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"3";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"3";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)fourButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"4";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"4";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)fiveButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"5";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"5";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)sixButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"6";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"6";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)sevenButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"7";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"7";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)eightButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"8";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"8";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)nineButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @"9";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @"9";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)pointButton:(id)sender {
    if (operatorFlag == FALSE) {
        appendString = @".";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
    } else {
        appendString = @".";
        secondNumString = [secondNumString stringByAppendingString: appendString];
        self.displayLabel.text = secondNumString;
    }
}

- (IBAction)clearButton:(id)sender {
    firstNum = 0;
    secondNum = 0;
    ans = 0;
    firstNumString = @"";
    secondNumString = @"";
    appendString = @"0";
    operatorFlag = FALSE;
    addCheck = FALSE;
    subtractCheck = FALSE;
    multiplyCheck = FALSE;
    divideCheck = FALSE;
    firstButtonPressed = FALSE;
    self.displayLabel.text = @"0";
}

- (IBAction)addButton:(id)sender {
    /*
    firstNumString = @"-6";
    firstNum = [firstNumString floatValue];
    printf("firstNum is %.2f\n",first);
    self.displayLabel.text = [NSString stringWithFormat:@"%f", firstNum];
     */
    
    if (firstButtonPressed == FALSE) {
        appendString = @"+";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
        firstButtonPressed = TRUE;
    } else {
        self.displayLabel.text = secondNumString;
        operatorFlag = TRUE;

    }
    addCheck = TRUE;
    subtractCheck = FALSE;
    multiplyCheck = FALSE;
    divideCheck = FALSE;    

}

- (IBAction)subtractButton:(id)sender {
    if (firstButtonPressed == FALSE) {
        appendString = @"-";
        firstNumString = [firstNumString stringByAppendingString: appendString];
        self.displayLabel.text = firstNumString;
        firstButtonPressed = TRUE;
    } else {
        self.displayLabel.text = secondNumString;
        operatorFlag = TRUE;

    }
    addCheck = FALSE;
    subtractCheck = TRUE;
    multiplyCheck = FALSE;
    divideCheck = FALSE;
}

- (IBAction)multiplyButton:(id)sender {
    operatorFlag = TRUE;
    addCheck = FALSE;
    subtractCheck = FALSE;
    multiplyCheck = TRUE;
    divideCheck = FALSE;
}

- (IBAction)divideButton:(id)sender {
    operatorFlag = TRUE;
    addCheck = FALSE;
    subtractCheck = FALSE;
    multiplyCheck = FALSE;
    divideCheck = TRUE;
}

- (IBAction)equalButton:(id)sender {
    //NSLog(@"%@ + %@ = ", firstNumString, secondNumString);
    
    firstNum = [firstNumString floatValue];
    secondNum = [secondNumString floatValue];
    
    if (addCheck == TRUE) {
        ans = firstNum + secondNum;
    } else if(subtractCheck == TRUE){
        ans = firstNum - secondNum;
    } else if(multiplyCheck == TRUE){
        ans = firstNum * secondNum;
    } else if(divideCheck == TRUE){
        ans = firstNum / secondNum;  
    }
    if(operatorFlag == TRUE){
        ansString = [NSString stringWithFormat:@"%.4f", ans];
        self.displayLabel.text = ansString;
    }else{
        self.displayLabel.text = @"0";
    }
    firstNum = 0;
    secondNum = 0;
    ans = 0;
    firstNumString = @"";
    secondNumString = @"";
    appendString = @"0";
    operatorFlag = FALSE;
    addCheck = FALSE;
    subtractCheck = FALSE;
    multiplyCheck = FALSE;
    divideCheck = FALSE;
    firstButtonPressed = FALSE;
}

@end
