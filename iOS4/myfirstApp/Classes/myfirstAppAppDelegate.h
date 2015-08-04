//
//  myfirstAppAppDelegate.h
//  myfirstApp
//
//  Created by Albert Tirtariyadi on 12-04-16.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class myfirstAppViewController;

@interface myfirstAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    myfirstAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet myfirstAppViewController *viewController;

@end

