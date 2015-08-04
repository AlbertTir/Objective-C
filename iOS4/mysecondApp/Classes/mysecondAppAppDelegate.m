//
//  mysecondAppAppDelegate.m
//  mysecondApp
//
//  Created by Albert Tirtariyadi on 12-04-16.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "mysecondAppAppDelegate.h"

@implementation mysecondAppAppDelegate

@synthesize window, tabBarController, txtInput, lblMessage;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
	//add the tab bar controller as a sub view to the window
	[window addSubview:[tabBarController view]];

    // Override point for customization after application launch.
	[window makeKeyAndVisible];
	
	[self.window makeKeyAndVisible]; //this is needed to even start the app up. If we use the above line, it'll just show a black screen 
    
    //return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField{
	if (txtInput == theTextField) {
		[txtInput resignFirstResponder];
	}
	
	//update the label
	lblMessage.text = txtInput.text;
	return 0;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[txtInput release];
	[lblMessage release];
	[tabBarController release];
    [window release];
    [super dealloc];
}


@end
