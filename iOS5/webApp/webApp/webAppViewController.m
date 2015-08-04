//
//  webAppViewController.m
//  webApp
//
//  Created by Albert Tirtariyadi on 12-06-15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "webAppViewController.h"

@interface webAppViewController ()

@end

@implementation webAppViewController

@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *fullURL = @"http://google.ca"; //sets the website we want to load
    NSURL *url = [NSURL URLWithString:fullURL]; //this tells the text we just put into fullURL that it is a web address, so now we have a NSURL with the site address on it
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url]; //this tells the program what we're going to do with the URL object. We're going to request the URL
    [webView loadRequest:requestObj]; //we're going to load the request into our Web View that we called webView earlier

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
