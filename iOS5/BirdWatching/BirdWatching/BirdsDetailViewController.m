//
//  BirdsDetailViewController.m
//  BirdWatching
//
//  Created by Albert Tirtariyadi on 12-06-09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BirdsDetailViewController.h"
#import "BirdSighting.h" 

@interface BirdsDetailViewController ()
- (void)configureView;
@end

@implementation BirdsDetailViewController

@synthesize sighting = _sighting, birdNameLabel = _birdNameLabel, locationLabel = _locationLabel, dateLabel = _dateLabel; //synthesizes the accessor methods for the properties of the BirdSighting object we will use later

#pragma mark - Managing the detail item

-(void)setSighting:(BirdSighting *)newSighting
{
    //so it looks like this checks if the entry exists or not, if it doesn't, add it in and update the cells
    if (_sighting != newSighting){
        _sighting = newSighting;
        
        //update the view
        [self configureView];
    }
}
- (void)configureView
{
    // Update the user interface for the detail item.
    BirdSighting *theSighting = self.sighting;
    
    static NSDateFormatter *formatter = nil;
    //checks if the date formatter is empty, if it is, allocate memory for it and set its properties as Medium Style
    if (formatter == nil){
        formatter = [[NSDateFormatter alloc]init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if (theSighting){ //notice there's no comparison? this will just check if this thing exists and it does, so it will give back yes/true
        //since this will pretty much always happen, it does the following: (set the labels as their appropriate values
        self.birdNameLabel.text = theSighting.name;
        self.locationLabel.text = theSighting.location;
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)theSighting.date];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{  
    // to release the strong reference to the sighting property
    self.sighting = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
