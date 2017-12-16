//
//  AppDelegate.m
//  DHKit
//
//  Created by 江道洪 on 2017/12/16.
//  Copyright © 2017年 SilenceVoid. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor blackColor];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[RootViewController new]];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
