//
//  CustomNavViewController.m
//  Yunho2
//
//  Created by l on 13-6-4.
//
//

#import "CustomNavViewController.h"

@interface CustomNavViewController ()

@end

@implementation CustomNavViewController
@synthesize flagArray;
@synthesize tabbarViewController;
- (void)dealloc
{
    self.flagArray = nil;
    self.tabbarViewController = nil;
    [super dealloc];
}
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
	// Do any additional setup after loading the view.
    self.flagArray = [NSMutableArray arrayWithCapacity:0];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated tabbarHidden:(BOOL)hidden
{
    //[super pushViewController:viewController animated:animated];
    //CustomTabbarViewController *tabbarViewController = (CustomTabbarViewController *)self.tabBarController;
    [self.tabbarViewController hideTabBar:hidden];
    [self.flagArray addObject:[NSNumber numberWithBool:hidden]];
    [super pushViewController:viewController animated:animated];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //[super pushViewController:viewController animated:animated];
    //CustomTabbarViewController *tabbarViewController = (CustomTabbarViewController *)self.tabBarController;
    
    [self.tabbarViewController hideTabBar:YES];
    [self.flagArray addObject:[NSNumber numberWithBool:YES]];
    [super pushViewController:viewController animated:animated];
}
-(void)popToRootViewControllerAnimated:(BOOL)animated
{
    //[super popToRootViewControllerAnimated:animated];
    //CustomTabbarViewController *tabbarViewController = (CustomTabbarViewController *)self.tabBarController;
    [self.tabbarViewController hideTabBar:NO];
    [self.flagArray removeAllObjects];
    [super popToRootViewControllerAnimated:animated];
}

-(void)popViewControllerAnimated:(BOOL)animated
{
    //CustomTabbarViewController *tabbarViewController = (CustomTabbarViewController *)self.tabBarController;
    if (self.flagArray.count == 1) {
        [self.tabbarViewController hideTabBar:NO];
    }else if (self.flagArray.count > 1){
        NSNumber *tempNum = [self.flagArray objectAtIndex:self.flagArray.count-2];
        BOOL hidden = [tempNum boolValue];
        [self.tabbarViewController hideTabBar:hidden];
    }
    [self.flagArray removeLastObject];
    [super popViewControllerAnimated:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
