//
//  BDJTabBarViewController.m
//  CSBSBDJ
//
//  Created by Apple on 16/4/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BDJTabBarViewController.h"
#import "BDJHomeViewController.h"
#import "BDJNewsViewController.h"
#import "BDJFollowViewController.h"
#import "BDJProfileViewController.h"
#import "BDJNavigationController.h"
#import "BDJTabBar.h"
@interface BDJTabBarViewController ()

@end

@implementation BDJTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建子控制器
    BDJHomeViewController *vc1 = [[BDJHomeViewController alloc] init];
    [self addChildVC:vc1 title:@"精华" image:@"tabBar_essence_icon" SelectedImage:@"tabBar_essence_click_icon"];
    
    BDJNewsViewController *vc2 = [[BDJNewsViewController alloc] init];
    [self addChildVC:vc2 title:@"新帖" image:@"tabBar_me_icon" SelectedImage:@"tabBar_new_click_icon"];
    
    BDJFollowViewController *vc3 = [[BDJFollowViewController alloc] init];
    [self addChildVC:vc3 title:@"关注" image:@"tabBar_me_icon" SelectedImage:@"tabBar_me_click_icon"];
    
    BDJProfileViewController *vc4 = [[BDJProfileViewController alloc] init];
    [self addChildVC:vc4 title:@"精华" image:@"tabBar_friendTrends_icon" SelectedImage:@"tabBar_friendTrends_click_icon"];
    
    // 替换tabbar
    BDJTabBar *tabBar = [[BDJTabBar alloc] init];
    [self setValue:tabBar forKey:@"tabBar"];
    
    
}


- (void)addChildVC:(UIViewController *)VC title:(NSString *)title image:(NSString *)image SelectedImage:(NSString *)SelectedImage{
    
    VC.title = title;
    VC.tabBarItem.image = [UIImage imageNamed:image];
    
    // 取消image蓝色状态
    UIImage *temp = [UIImage imageNamed:SelectedImage];
    VC.tabBarItem.selectedImage = [temp imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    BDJNavigationController *nav = [[BDJNavigationController alloc] initWithRootViewController:VC];
    [self addChildViewController:nav];
}

@end
