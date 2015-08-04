//
//  webAppAppDelegate.h
//  webApp
//
//  Created by Albert Tirtariyadi on 12-06-15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class webAppViewController;

@interface webAppAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) webAppViewController *viewController;

@end
