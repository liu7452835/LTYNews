//
//  LTYVideoViewController.m
//  LTYNews
//
//  Created by 刘天宇 on 2018/11/13.
//  Copyright © 2018 lty. All rights reserved.
//

#import "LTYVideoViewController.h"

@interface LTYVideoViewController ()

@end

@implementation LTYVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar_icon_video_0_25x25_"];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_icon_video_17_24x24_"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];//设置图片不渲染
        self.tabBarItem.title = @"视频";
    }
    return self;
}


@end
