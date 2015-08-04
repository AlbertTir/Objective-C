//
//  BirdsAppDelegate.m
//  BirdWatching
//
//  Created by Albert Tirtariyadi on 12-06-09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BirdsAppDelegate.h"
#import "BirdSightingDataController.h"
#import "BirdsMasterViewController.h"

@implementation BirdsAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //this app starts off with the navigationcontroller object, so we use
    //the following code to cast the window's root view controller object to the appropriate type
    UINavigationController *navigatioNController = (UINavigationController *)self.window.rootViewController;
    
    //in the code below, we basically go to the beginning of the zeroth member of the nagivation controller's viewController array. Similar to going to the first box in a linked list
    BirdsMasterViewController *firstViewController = (BirdsMasterViewController *)[[navigatioNController viewControllers] objectAtIndex:0];
    
    BirdSightingDataController *aDataController = [[BirdSightingDataController alloc] init];
    firstViewController.dataController = aDataController;

    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
