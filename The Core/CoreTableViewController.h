//
//  ViewController.h
//  The Core
//
//  Created by Paul Ingalls on 7/17/13.
//  Copyright (c) 2013 Paul Ingalls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoreTableViewController : UITableViewController<UITableViewDelegate>

-(IBAction)unwindToCoreTableViewController:(UIStoryboardSegue *) segue;

@end
