//
//  ChildViewControllersViewController.m
//  The Core
//
//  Created by Paul Ingalls on 7/17/13.
//  Copyright (c) 2013 Paul Ingalls. All rights reserved.
//

#import "ChildViewController.h"

@interface ChildViewController ()

@end

@implementation ChildViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  if (nil != self.myContentFileName)
  {
    NSString *theHtmlFile = [[NSBundle mainBundle] pathForResource:self.myContentFileName
                                                            ofType:@"html"
                                                       inDirectory:@"protocols html"];
    NSURL* theUrl= [NSURL fileURLWithPath:theHtmlFile];
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:theUrl]];
  }
  
  if (nil != self.myTitleText)
  {
    self.myTitleLabel.text = self.myTitleText;
  }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
