//
//  BDJProfileViewController.m
//  CSBSBDJ
//
//  Created by Apple on 16/4/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BDJProfileViewController.h"
#import "UIBarButtonItem+Extension.h"
@interface BDJProfileViewController ()

@end

@implementation BDJProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *setting = [UIBarButtonItem itemWithTarget:self action:@selector(setting) image:@"mine-setting-icon" highImage:@"mine-setting-icon-click"];
    UIBarButtonItem *night = [UIBarButtonItem itemWithTarget:self action:@selector(night) image:@"mine-sun-icon" highImage:@"mine-sun-icon-click"];
    self.navigationItem.rightBarButtonItems = @[setting, night];
}

- (void)setting{
    
}

- (void)night{
    
}

@end
