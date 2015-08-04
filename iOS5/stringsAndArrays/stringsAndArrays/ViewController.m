//
//  ViewController.m
//  stringsAndArrays
//
//  Created by Albert Tirtariyadi on 12-05-22.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize displayLabel;
@synthesize displayLabelTwo;
@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //myArray = [NSArray arrayWithObjects:@"foo",@"bar",@"baz",nil];
    myMutableString  = [NSMutableString stringWithCapacity:4];
    
    //makes an array with a capacity of 10
    myMutableArray = [[NSMutableArray alloc]init];
    x = 0;
    
    //stores 10 numbers in myMutableArray
    for (x = 0; x < 20; x++) {
        [myMutableArray insertObject: [NSString stringWithFormat:@"This is NSString number %d", x+1] atIndex:x];
    }
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setDisplayLabel:nil];
    [self setDisplayLabelTwo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)textField:(id)sender {
}

- (IBAction)addButton:(id)sender {
    //this crashes the program
    userInput = textField.text;
    NSLog(@"%@", userInput);

}

- (IBAction)printButton:(id)sender {

    displayLabel.text = NULL;
    displayLabelTwo.text = NULL;
    NSString *strOne = [myArray objectAtIndex:0];
    NSString *strTwo = [myArray objectAtIndex:1];
    NSString *strThree = [myArray objectAtIndex:2];
    
    //so as far as I can tell, using NSMutableString and NSString has no difference whatsoever YET
    
    [myMutableString appendFormat:@"%@,\n\n%@,\n\n%@", strOne, strTwo, strThree];
    displayLabel.text = myMutableString;
    
    myString = [NSString stringWithFormat:@"%@,\n\n%@,\n\n%@", strOne, strTwo, strThree];
    displayLabelTwo.text = myString;
     
    
for (x = 0; x<20; x++) {
    //printing out the content of myMutableArray
    NSLog(@"NSString number %d is :%@", x+1, [myMutableArray objectAtIndex:x]);
}
//checking for a certain position's content
NSLog(@"the content of %d box is %@", 9, [myMutableArray objectAtIndex:9]);
    
}

- (IBAction)clearButton:(id)sender {
    textField.text = NULL;
    displayLabel.text = NULL;
    displayLabelTwo.text = NULL;
}

- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTouched:(id)sender {
    [textField resignFirstResponder];
}
@end
