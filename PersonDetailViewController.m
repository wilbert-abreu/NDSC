//
//  PersonDetailViewController.m
//  UITableView
//
//  Created by Wilbert Abreu on 4/5/13.
//  Copyright (c) 2013 WAA Apps. All rights reserved.
//

#import "PersonDetailViewController.h"
@interface PersonDetailViewController ()

@end

@implementation PersonDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    self.fnameLabel.text = self.person.fname;
    self.snameLabel.text = self.person.sname;
    self.ageLabel.text = [NSString stringWithFormat:@"%d",self.person.age];
    
    [self.view setBackgroundColor:self.person.favoriteColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
