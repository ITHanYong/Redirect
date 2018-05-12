//
//  AppDelegate.m
//  页面滑动跳转
//
//  Created by HanYong on 2018/5/12.
//  Copyright © 2018年 HanYong. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "ClassifyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    HomeViewController *home = [[HomeViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:home];
    nav1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:1];
    nav1.tabBarItem.title = @"首页";
    
    ClassifyViewController *classity = [[ClassifyViewController alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:classity];
    nav2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:2];
    nav2.tabBarItem.title = @"分类";
    
    UITabBarController *tab = [[UITabBarController alloc] init];
    [tab setViewControllers:[NSMutableArray arrayWithObjects:nav1,nav2, nil]];
    
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
