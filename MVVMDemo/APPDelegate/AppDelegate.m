//
//  AppDelegate.m
//  MVVMDemo
//
//  Created by jzl on 16/7/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "TableViewController.h"

@interface AppDelegate ()
{
    UINavigationController *nav;
}
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    TableViewController *VC=[[TableViewController alloc] init];
    nav=[[UINavigationController alloc] initWithRootViewController:VC];
    self.window.rootViewController=nav;
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(changeColor) userInfo:nil repeats:YES];
    nav.navigationBar.tintColor=[UIColor blackColor];
    nav.navigationBar.titleTextAttributes=[NSDictionary dictionaryWithObject:[UIColor blackColor] forKey:NSForegroundColorAttributeName];
 
    return YES;
}
-(void)changeColor{
    [UIView animateWithDuration:2 animations:^{
        nav.navigationBar.barTintColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
    
    }];
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
