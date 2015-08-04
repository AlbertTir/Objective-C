//
//  ViewController.m
//  helloWorld
//
//  Created by Albert Tirtariyadi on 12-05-16.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textField;
@synthesize displayLabel = _displayLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    greetWorld = TRUE;
    word = [[NSString alloc] init];
    word = @"Here's a test string";
    
}

- (void)viewDidUnload
{
    [self setDisplayLabel:nil];
    [self setTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)displayButton:(id)sender {
    self.displayLabel.text = @"Hello world!";

    if (greetWorld == TRUE) {
        self.displayLabel.text = @"Hello world!";
        greetWorld = FALSE;
    } else {
        self.displayLabel.text = @"Goodbye world!";
        greetWorld = TRUE;
    }
}

- (IBAction)clearButton:(id)sender {
    self.displayLabel.text = NULL;
    self.textField.text = NULL;
    greetWorld = TRUE;
}

- (IBAction)printString:(id)sender {
    self.displayLabel.text = word;
}

- (IBAction)printText:(id)sender {
    NSMutableString *inputString; 
    inputString = [NSMutableString stringWithString:self.textField.text];
    self.displayLabel.text = inputString;
    //self.textField.text = NULL;
}

- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTouched:(id)sender {
    [textField resignFirstResponder];
}

@end
