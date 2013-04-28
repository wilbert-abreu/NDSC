//
//  PersonDetailViewController.h
//  UITableView
//
//  Created by Wilbert Abreu on 4/5/13.
//  Copyright (c) 2013 WAA Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface PersonDetailViewController : UIViewController

@property(weak) IBOutlet UILabel *fnameLabel;
@property(weak) IBOutlet UILabel *snameLabel;
@property(weak) IBOutlet UILabel *ageLabel;

@property(strong) Person *person;


@end
