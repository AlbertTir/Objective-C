//
//  BirdSightingDataController.m
//  BirdWatching
//
//  Created by Albert Tirtariyadi on 12-06-09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

/*
 the DataControllers:
 -creates the master collection that holds all BirdSighting objects
 -returns the number of BirdSighting objects in the collection
 -returns the BirdSighting object at a specific location in the collection
 -creates a new BirdSighting object using input from the user and adds it to the collection
 */

#import "BirdSightingDataController.h"
#import "BirdSighting.h"

@interface BirdSightingDataController ()
- (void)initializeDefaultDataList; //declares the list-creation method, and apparently you can do this in .m files
@end

@implementation BirdSightingDataController

@synthesize masterBirdSightingList = _masterBirdSightingList;

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
    }
    return self;
}

- (void)setMasterBirdSightingList:(NSMutableArray *)newList {
    if (_masterBirdSightingList != newList) {
        _masterBirdSightingList = [newList mutableCopy];
    }
}

- (NSUInteger)countOfList {
    //the count method is an NSArray method that counts the total number of items in an array. Even though we're using mutable arrays, because of inheritance, this works
    return [self.masterBirdSightingList count];
}

- (BirdSighting *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterBirdSightingList objectAtIndex:theIndex];
}


- (void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation {
    //this method basically takes user input, puts it into a name, location and date. And send a new BirdSighting off into the array
    BirdSighting *sighting;
    NSDate *today = [NSDate date];
    
    sighting = [[BirdSighting alloc] initWithName:inputBirdName location:inputLocation date:today];
    [self.masterBirdSightingList addObject:sighting];
    
}

- (void)initializeDefaultDataList {
    /*
     1) this assigns a new mutable array to the sightingList variable
     2) it passes some default data to the addBirdSightingWithName:Location method, which creates a new a BirdSighting object and adds it to the master list
     */
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    
    self.masterBirdSightingList = sightingList;
    [self addBirdSightingWithName:@"Pigeon" location:@"Everywhere"];
}
@end