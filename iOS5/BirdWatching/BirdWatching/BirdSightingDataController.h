//
//  BirdSightingDataController.h
//  BirdWatching
//
//  Created by Albert Tirtariyadi on 12-06-09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BirdSighting; //needs this here or else the corresponding line below will give error

@interface BirdSightingDataController : NSObject

@property(nonatomic, copy) NSMutableArray *masterBirdSightingList; //the copy attribute ensures that a copy of the object should be used for later assignment

//these are the three data-access methods
-(NSUInteger)countOfList;
-(BirdSighting *) objectInListAtIndex:(NSUInteger)theIndex;
-(void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation;

@end
