//
//  FirstViewController.m
//  CustomTabBar
//
//  Created by User on 14-2-11.
//  Copyright (c) 2014年 User. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstLevelTwoViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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
    // Do any additional setup after loading the view from its nib.
}
-(IBAction)showLevelTwo:(id)sender
{
    FirstLevelTwoViewController * controller= [[[FirstLevelTwoViewController alloc]initWithNibName:@"FirstLevelTwoViewController" bundle:nil]autorelease];
    [self.navigationController pushViewController:controller animated:YES];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
