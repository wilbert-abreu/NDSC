//
//  Person.m
//  UITableView
//
//  Created by Wilbert Abreu on 3/31/13.
//  Copyright (c) 2013 WAA Apps. All rights reserved.
//

#import "Person.h"

@implementation Person 


-(id)initWithFname:(NSString *)aFname sname:(NSString *)aSname color:(UIColor *)col age:(int)aAge{
    self = [super init];
    if (self) {
        self.fname = aFname;
        self.sname = aSname;
        self.age = aAge;
        self.favoriteColor = col;
    }
    return self;
}

@end
