//
//  ViewController.m
//  The Core
//
//  Created by Paul Ingalls on 7/17/13.
//  Copyright (c) 2013 Paul Ingalls. All rights reserved.
//

#import "ChildViewController.h"
#import "CoreTableViewController.h"

@interface CoreTableViewController ()

@end

@implementation CoreTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger theSelectedRow = [indexPath row];
  if (theSelectedRow == 0)
  {
    dispatch_async(dispatch_get_main_queue(), ^{
      [self performSegueWithIdentifier:@"showCommitments" sender:self];
    });
  }
  else if (theSelectedRow == 1)
  {
    dispatch_async(dispatch_get_main_queue(), ^{
      [self performSegueWithIdentifier:@"showProtocols" sender:self];
    });
  }
  
}

- (void) prepareForSegue:(UIStoryboardSegue *)aSegue sender:(id)sender
{
  UIViewController* theDestination = [aSegue destinationViewController];
  if ( [theDestination class] != [ChildViewController class] )
  {
    return;
  }
  
  if ([[aSegue identifier] isEqualToString: @"showCommitments"])
  {
    ChildViewController* theController = (ChildViewController*) theDestination;
    
    theController.myTitleText = @"Core Commitments";
    theController.myContentFileName = @"commitments";
  }
}

-(IBAction)unwindToCoreTableViewController:(UIStoryboardSegue *) segue
{
  
}

@end
