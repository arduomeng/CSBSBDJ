//
//  AppDelegate.m
//  CSBSBDJ
//
//  Created by Apple on 16/4/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "AppDelegate.h"
#import "BDJTabBarViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *windows = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    
    self.window = windows;
    
    windows.rootViewController = [[BDJTabBarViewController alloc] init];
    
    [windows makeKeyAndVisible];
    
    // 初始化导航栏和tabbar
    [self setUpNavTabbar];
    
    return YES;
    
    
}

- (void)setUpNavTabbar{
    
    /*
        当属姓名后面有UI_APPEARANCE_SELECTOR 说明。则可以通过appearance设置
     */
    
    // TabBarItem
    UITabBarItem *item = [UITabBarItem appearance];
    
    NSMutableDictionary *attr = [[NSMutableDictionary alloc] init];
    attr[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    attr[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *attr2 = [[NSMutableDictionary alloc] init];
    attr2[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    attr2[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    [item setTitleTextAttributes:attr forState:UIControlStateNormal];
    [item setTitleTextAttributes:attr2 forState:UIControlStateSelected];
    
    // NavigationBar
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    NSMutableDictionary *attrNav = [[NSMutableDictionary alloc] init];
    attrNav[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    attrNav[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    navBar.titleTextAttributes = attrNav;
}

@end
