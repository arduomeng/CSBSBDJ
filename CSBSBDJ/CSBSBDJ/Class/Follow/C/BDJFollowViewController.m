//
//  BDJFollowViewController.m
//  CSBSBDJ
//
//  Created by Apple on 16/4/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BDJFollowViewController.h"
#import "UIBarButtonItem+Extension.h"
@interface BDJFollowViewController ()

@end

@implementation BDJFollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(addFollow) image:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click"];

}

- (void)addFollow{
    
}

@end
