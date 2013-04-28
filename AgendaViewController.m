//
//  AgendaViewController.m
//  NDSC APP
//
//  Created by Wilbert Abreu on 4/28/13.
//  Copyright (c) 2013 WAA Apps. All rights reserved.
//

#import "AgendaViewController.h"
#import "AgendaCell.h"

#define fridaySection 0
#define saturdaySection 1
#define sundaySection 2
#define numberOfSections 3

@interface AgendaViewController ()

@end

@implementation AgendaViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    //self.navigationController.navigationBar.topItem.title = @"Contacts";
    //NSLog(@"Index of viewcontroller = %@", self.navigationController.viewControllers );
    self.navigationController.navigationBar.topItem.title = @"AGENDA";
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"NDSCSchedule" ofType:@"plist"];
    NSDictionary *creatureDictionary = [[NSDictionary alloc] initWithContentsOfFile:plistCatPath];
    
    self.FridayArray = creatureDictionary[@"Friday, March 29, 2013"];
    self.SaturdayArray  = creatureDictionary[@"Saturday, March 30, 2013"];
    self.SundayArray = creatureDictionary[@"Sunday, March 31, 2013"];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    // Remove table cell separator
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
    
    // Assign our own backgroud for the view
    self.parentViewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"NDSCBackground"]];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    // Add padding to the top of the table view
    UIEdgeInsets inset = UIEdgeInsetsMake(15, 0, 10, 0);
    self.tableView.contentInset = inset;
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [[self navigationItem] setBackBarButtonItem:backButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return numberOfSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section){
        case fridaySection:
            //return [self.bugs count];
            return [self.FridayArray count];
        case saturdaySection:
            //return [self.animals count];
            return [self.SaturdayArray count];
        case sundaySection:
            //return [self.animals count];
            return [self.SundayArray count];
        default:
            return 0;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section){
        case fridaySection:
            return @"Friday, March 29, 2013";
        case saturdaySection:
            return @"Saturday, March 30, 2013";
        case sundaySection:
            return @"Sunday, March 31, 2013";
        default:
            return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AgendaCell *cell = (AgendaCell *)[tableView dequeueReusableCellWithIdentifier:@"agenda"];
    
    switch (indexPath.section)
    {
            
        case fridaySection:
            cell.firstLabel.text = self.FridayArray[indexPath.row][@"Event Name"];
            cell.secondLabel.text = self.FridayArray[indexPath.row][@"Time"];
            break;
        case saturdaySection:
            cell.firstLabel.text = self.SaturdayArray[indexPath.row][@"Event Name"];
            cell.secondLabel.text = self.SaturdayArray[indexPath.row][@"Time"];
            break;
        case sundaySection:
            cell.firstLabel.text = self.SundayArray[indexPath.row][@"Event Name"];
            cell.secondLabel.text = self.SundayArray[indexPath.row][@"Time"];
            break;
        default:
            cell.firstLabel.text = @"Not Found";
            break;
    }
    
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
