//
//  AppDelegate.m
//  CustomTabBar
//
//  Created by User on 14-2-11.
//  Copyright (c) 2014年 User. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"


@implementation AppDelegate
@synthesize navigationController;
@synthesize tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    self.tabBarController=[self initTabBar];
    self.window.rootViewController = self.tabBarController;
    
    [self.window makeKeyAndVisible];

    return YES;
}
-(CustomTabbarViewController*)initTabBar
{
    NSArray * viewControllers=nil;
    //创建一个静态数组，并关联导航控制器
    CustomTabbarViewController* tabBarController = [[[CustomTabbarViewController alloc]init]autorelease];
    
        FirstViewController* firstViewController =[[[FirstViewController alloc]init]autorelease];
        SecondViewController* secondViewController =[[[SecondViewController alloc]init]autorelease];
        ThirdViewController* thirdViewController = [[[ThirdViewController alloc]init]autorelease];
        FourthViewController* fourthViewController = [[[FourthViewController alloc]init]autorelease];
        FifthViewController* fifthViewController = [[[FifthViewController alloc]init]autorelease];
        CustomNavViewController *FriendNavController =[[[CustomNavViewController alloc] initWithRootViewController:firstViewController]autorelease];  //实例化导航控制器，并关联视图控制器
        CustomNavViewController *HouseNavController =[[[CustomNavViewController alloc] initWithRootViewController:secondViewController]autorelease];
        CustomNavViewController *HomeNavController = [[[CustomNavViewController alloc] initWithRootViewController:thirdViewController]autorelease];
        CustomNavViewController *ConditionNavController = [[[CustomNavViewController alloc] initWithRootViewController:fourthViewController]autorelease];
        CustomNavViewController *sysNacController = [[[CustomNavViewController alloc] initWithRootViewController:fifthViewController]autorelease];
        viewControllers = [NSArray arrayWithObjects:FriendNavController,HouseNavController,HomeNavController,ConditionNavController,sysNacController,nil];
        FriendNavController.tabbarViewController = tabBarController;
        HouseNavController.tabbarViewController = tabBarController;
        HomeNavController.tabbarViewController = tabBarController;
        ConditionNavController.tabbarViewController = tabBarController;
        sysNacController.tabbarViewController = tabBarController;
    
    
    tabBarController.arrayViewcontrollers = viewControllers;   //将导航控制器数组关联到tabBar
    //    [self.window addSubview:tabViewController.view];   //添加tabBar视图到window

    [tabBarController touchBtnAtIndex:0];
    
    //tabBarController.delegate = self;
     CustomBarButton *barButton = [tabBarController.arrayBarButtons objectAtIndex:0];
      [barButton setBadgeValue:nil];
    
    return tabBarController;

}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
