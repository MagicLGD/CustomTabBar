//
//  AppDelegate.h
//  CustomTabBar
//
//  Created by User on 14-2-11.
//  Copyright (c) 2014年 User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTabbarViewController.h"
#import "CustomNavViewController.h"
#import "CustomBarButton.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) CustomNavViewController *navigationController;
@property (retain,nonatomic) CustomTabbarViewController *tabBarController;

@end
