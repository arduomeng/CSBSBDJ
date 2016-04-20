//
//  BDJNavigationController.m
//  CSBSBDJ
//
//  Created by Apple on 16/4/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BDJNavigationController.h"
#import "UIView+Extension.h"
@interface BDJNavigationController ()

@end

@implementation BDJNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{

    if (self.childViewControllers.count > 0) {
        // 设置返回按钮
        
        UIButton *backBtn = [[UIButton alloc] init];
        [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        [backBtn setTitle:@"返回" forState:UIControlStateNormal];
        [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        backBtn.size = CGSizeMake(100, 30);
        
        // 按钮内部元素的对齐方式
        backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        // 设置按钮内边距(使按钮像左边偏移)
        backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        
        // 注意设置是设置push进来的viewController的leftBar 不是self
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    }
    
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.enabled = YES;
        self.interactivePopGestureRecognizer.delegate = nil;
    }
    
    // 放后面的目的：push进来的控制器，可以修改leftBarButtonItem，覆盖默认设置
    [super pushViewController:viewController animated:animated];
    
}

- (void)back{
    [self popViewControllerAnimated:YES];
}


@end
