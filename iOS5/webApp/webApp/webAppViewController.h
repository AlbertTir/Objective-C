//
//  webAppViewController.h
//  webApp
//
//  Created by Albert Tirtariyadi on 12-06-15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webAppViewController : UIViewController <UIWebViewDelegate> {IBOutlet UIWebView *webView;}
//adding <UIWebViewDelegate> gives us more control over our web view, like tracking when a page started loading or finished loading
//{.....} tells the program that we're going to be displaing a Web View and that its name will be webView

@property (nonatomic, retain) UIWebView *webView;//makes it so webView can be used by other files

@end
