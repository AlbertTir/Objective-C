//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by Albert Tirtariyadi on 12-06-09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) BirdSightingDataController *dataController;

@end
