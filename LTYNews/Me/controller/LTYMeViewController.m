//
//  LTYMeViewController.m
//  LTYNews
//
//  Created by 刘天宇 on 2018/11/13.
//  Copyright © 2018 lty. All rights reserved.
//

#import "LTYMeViewController.h"

@interface LTYMeViewController ()

@end

@implementation LTYMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar_icon_me_0_25x25_"];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_icon_me_17_24x24_"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];//设置图片不渲染
        self.tabBarItem.title = @"我的";
    }
    return self;
}

@end
