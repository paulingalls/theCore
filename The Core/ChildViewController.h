//
//  ChildViewControllersViewController.h
//  The Core
//
//  Created by Paul Ingalls on 7/17/13.
//  Copyright (c) 2013 Paul Ingalls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChildViewController : UIViewController

@property IBOutlet UILabel* myTitleLabel;
@property IBOutlet UIWebView* myWebView;

@property NSString* myContentFileName;
@property NSString* myTitleText;

@end
