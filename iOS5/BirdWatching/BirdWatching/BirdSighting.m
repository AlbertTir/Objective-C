//
//  BirdSighting.m
//  BirdWatching
//
//  Created by Albert Tirtariyadi on 12-06-09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BirdSighting.h"

@implementation BirdSighting

@synthesize name = _name, location = _location, date = _date;
-(id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date
{ //not sure what this chunk of code is for, initializing variables?
    self = [super init];
    if (self){
        _name = name;
        _location = location;
        _date = date;
        return self;
    }
    return nil;
}

@end
