//
//  BDJHomeViewController.m
//  CSBSBDJ
//
//  Created by Apple on 16/4/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BDJHomeViewController.h"
#import "BDJtempViewController.h"
#import "UIBarButtonItem+Extension.h"
@interface BDJHomeViewController ()

@end

@implementation BDJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(menu) image:@"MainTagSubIcon" highImage:@"MainTagSubIconClick"];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController pushViewController:[[BDJtempViewController alloc]init] animated:YES];
}

- (void)menu{
    
}

@end
