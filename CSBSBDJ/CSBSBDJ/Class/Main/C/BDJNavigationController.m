//
//  BDJNavigationController.m
//  CSBSBDJ
//
//  Created by Apple on 16/4/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BDJNavigationController.h"
@interface BDJNavigationController ()

@end

@implementation BDJNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{

    [super pushViewController:viewController animated:animated];
    
//    if (self.childViewControllers.count > 1) {
        // 设置返回按钮
        
        UIButton *backBtn = [[UIButton alloc] init];
        [backBtn setTitle:@"返回" forState:UIControlStateNormal];
        [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [backBtn sizeToFit];
        backBtn.backgroundColor = [UIColor redColor];
    
    // 注意设置是设置push进来的viewController的leftBar 不是self
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
//    }
}



@end
