//
//  PeopleListViewController.m
//  UITableView
//
//  Created by Wilbert Abreu on 3/31/13.
//  Copyright (c) 2013 WAA Apps. All rights reserved.
//

#import "PeopleListViewController.h"
#import "Person.h" //list of people - 4
#import "PersonDetailViewController.h"
#import "MasterCell.h"

@interface PeopleListViewController ()

//creates list of people - 1 
@property(strong)NSArray *people;

@end

@implementation PeopleListViewController

//list of people - 2 
@synthesize people;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //list of people - 5
    Person *p1 = [[Person alloc] initWithFname:@"Scott" sname:@"Sherwood" color:[UIColor purpleColor] age:30];
    
     Person *p2= [[Person alloc] initWithFname:@"Janet" sname:@"Smith" color:[UIColor blueColor] age:26];
    Person *p3= [[Person alloc] initWithFname:@"John" sname:@"Blogs" color:[UIColor redColor] age:20];
    
    //list of people - 6 instantiate's the array
    self.people = [NSArray arrayWithObjects:p1, p2, p3, nil];
    
    
    
    //list of people - 3 instantiates list of people 
    //self.people = [NSArray array];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if([segue.identifier isEqualToString:@"PersonDetailSegue"]){
        //sender is UITbale view cell
        UITableViewCell *cell = (UITableViewCell *)sender;
        //tries to find which object that object cell represents
        //asks the table that we control to get the "index path of the cell that's been tapped 
        NSIndexPath *ip = [self.tableView indexPathForCell:cell];
        //gets person from people list that is at the row that is represented by the cell
        Person *p = [self.people objectAtIndex:ip.row];
    
        //sets the detailview controllers person object to the one repres
        PersonDetailViewController *pdvc = (PersonDetailViewController *)segue.destinationViewController;
        pdvc.person = p;
        
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1
    ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.people count]; //equals number of people in list
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //must go to storyboard, click on cell and put "cell" as identifying in attributes
    static NSString *CellIdentifier = @"Cell";
    MasterCell *cell = (MasterCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    Person *p1 = [self.people objectAtIndex:indexPath.row]; // finds the person that this cell represents gets the person out of the peole list
    
    //sets the text on that label to the person first name
    cell.textLabel.text = p1.fname; 

    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
