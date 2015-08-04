//
//  mysecondAppAppDelegate.h
//  mysecondApp
//
//  Created by Albert Tirtariyadi on 12-04-16.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class mysecondAppAppDelegate;

@interface mysecondAppAppDelegate : NSObject <UIApplicationDelegate> {
    //UIWindow *window;
	IBOutlet UIWindow *window;
	IBOutlet UITabBarController *tabBarController;
	IBOutlet UITextField *txtInput;
	IBOutlet UILabel *lblMessage;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet UITextField *txtInput;
@property (nonatomic, retain) IBOutlet UILabel *lblMessage;

@end

