//
//  AppDelegate.h
//  test123
//
//  Created by kf1 on 14-9-16.
//  Copyright (c) 2014年 kf1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "FLSideSlipViewController.h"
#import "LeftViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (retain,nonatomic)FLSideSlipViewController *menuViewController;

@end
