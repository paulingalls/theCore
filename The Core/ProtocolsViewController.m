//
//  ProtocolsViewController.m
//  The Core
//
//  Created by Paul Ingalls on 7/17/13.
//  Copyright (c) 2013 Paul Ingalls. All rights reserved.
//

#import "ChildViewController.h"
#import "ProtocolsViewController.h"

@interface ProtocolsViewController ()

@end

@implementation ProtocolsViewController

- (void) prepareForSegue:(UIStoryboardSegue *)aSegue sender:(id)sender
{
  UIViewController* theDestination = [aSegue destinationViewController];
  if ( [theDestination class] != [ChildViewController class] )
  {
    return;
  }
  
  NSIndexPath * theIndexPath = [self.myTableView indexPathForCell:sender];
  NSInteger theSelectedRow = [theIndexPath row];
  ChildViewController* theController = (ChildViewController*) theDestination;
  
  if( theSelectedRow == 0)
  {
    theController.myTitleText = @"Decider";
    theController.myContentFileName = @"decider";
  }
  else if( theSelectedRow == 1)
  {
    theController.myTitleText = @"Resolution";
    theController.myContentFileName = @"resolution";
  }
  else if( theSelectedRow == 2)
  {
    theController.myTitleText = @"Perfection Game";
    theController.myContentFileName = @"perfectionGame";
  }
  else if( theSelectedRow == 3)
  {
    theController.myTitleText = @"Check In";
    theController.myContentFileName = @"checkIn";
  }
  else if( theSelectedRow == 4)
  {
    theController.myTitleText = @"Check Out";
    theController.myContentFileName = @"checkOut";
  }
  else if( theSelectedRow == 5)
  {
    theController.myTitleText = @"Pass";
    theController.myContentFileName = @"pass";
  }
  else if( theSelectedRow == 6)
  {
    theController.myTitleText = @"Ask For Help";
    theController.myContentFileName = @"askForHelp";
  }
  else if( theSelectedRow == 7)
  {
    theController.myTitleText = @"Investigate";
    theController.myContentFileName = @"investigate";
  }
  else if( theSelectedRow == 8)
  {
    theController.myTitleText = @"Intention Check";
    theController.myContentFileName = @"intentionCheck";
  }
  else if( theSelectedRow == 9)
  {
    theController.myTitleText = @"Protocol Check";
    theController.myContentFileName = @"protocolCheck";
  }
  else if( theSelectedRow == 10)
  {
    theController.myTitleText = @"Personal Alignmnet";
    theController.myContentFileName = @"personalAlignment";
  }
  
}

- (void)tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)anIndexPath
{
    dispatch_async(dispatch_get_main_queue(), ^{
      UITableViewCell* theCell = [aTableView cellForRowAtIndexPath:anIndexPath];
      [self performSegueWithIdentifier:@"showProtocol" sender:theCell];
    });
  
}


-(IBAction)unwindToProtocolsViewController:(UIStoryboardSegue *) segue
{
  
}

@end
