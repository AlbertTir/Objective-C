//
//  AddSightingViewControllerViewController.h
//  BirdWatching
//
//  Created by Albert Tirtariyadi on 12-06-25.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddSightingViewControllerDelegate;

@interface AddSightingViewControllerViewController : UITableViewController <UITextFieldDelegate>
//by adding the <UITextFieldDelegate> to the above line, it signals that the add scene adopts what we just did to the textfields we had in the add scene
@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;

//why did I have to put a colon when naming these in the pop-up menu?
- (IBAction)cancel:(id)sender; 
- (IBAction)done:(id)sender;

@property (weak, nonatomic) id <AddSightingViewControllerDelegate> delegate; //after you declare the delegate property, Xcode warns you that it needs to have accessor methods; this issue will be resolved when the necessary methods are implemeneted (in this case, done and cancel)

@end

@protocol AddSightingViewControllerDelegate <NSObject>

- (void)addSightingViewControllerDidCancel:(AddSightingViewControllerViewController *)controller;
- (void)addSightingViewControllerDidFinish:(AddSightingViewControllerViewController *)controller name:(NSString *)name location:(NSString *)location;

@end