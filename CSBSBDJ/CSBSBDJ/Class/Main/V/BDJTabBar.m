//
//  BDJTabBar.m
//  CSBSBDJ
//
//  Created by Apple on 16/4/20.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BDJTabBar.h"
#import "UIView+Extension.h"

@interface BDJTabBar ()

@property (nonatomic, strong) UIButton *plus;

@end

@implementation BDJTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        _plus = [[UIButton alloc] init];
        [_plus setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [_plus setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        
        _plus.size = _plus.currentImage.size;
        
        [self addSubview:_plus];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    
    _plus.center = CGPointMake(self.width * 0.5, self.height * 0.5);
    
    int index = 0;
    
    CGFloat W = self.width * 0.2;
    CGFloat H = self.height;
    
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            
            view.frame = CGRectMake(index * W, 0, W, H);
            if (index++ == 1) {
                index++;
                continue;
            }
        }
    }
}

@end
