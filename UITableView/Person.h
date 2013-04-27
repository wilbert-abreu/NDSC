//
//  Person.h
//  UITableView
//
//  Created by Wilbert Abreu on 3/31/13.
//  Copyright (c) 2013 WAA Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong)NSString *fname;
@property (strong)NSString *sname;
@property (strong)UIColor *favoriteColor;
@property int age;

-(id)initWithFname:(NSString *)aFname sname:(NSString *)aSname color:(UIColor *)col age:(int)aAge;




@end
