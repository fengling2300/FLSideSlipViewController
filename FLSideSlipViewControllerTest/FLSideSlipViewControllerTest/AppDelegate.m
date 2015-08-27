//
//  AppDelegate.m
//  FLSideSlipViewControllerTest
//
//  Created by apple on 15/8/15.
//  Copyright (c) 2015年 fengling. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LeftViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    ViewController *controller = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller];
    _menuViewController = [[FLSideSlipViewController alloc]initWithRootViewController:nav];
//    _menuViewController.leftDistance = 160;//设置滑动距离
//    _menuViewController.scaleSize = 0.85;//设置缩小比例
//    _menuViewController.animationType = AnimationTransitionAndScale;//设置动画类型
    _menuViewController.canSlideInPush = NO;
    
    LeftViewController *leftController = [[LeftViewController alloc] init];
    UIViewController *rightController = [[UIViewController alloc]init];
    
    _menuViewController.rightViewController = rightController;
    _menuViewController.leftViewController = leftController;
    
    self.window.rootViewController = _menuViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
