//
//  ProtocolsViewController.h
//  The Core
//
//  Created by Paul Ingalls on 7/17/13.
//  Copyright (c) 2013 Paul Ingalls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProtocolsViewController : UITableViewController<UITableViewDelegate>

@property IBOutlet UITableView* myTableView;

-(IBAction)unwindToProtocolsViewController:(UIStoryboardSegue *) segue;

@end
