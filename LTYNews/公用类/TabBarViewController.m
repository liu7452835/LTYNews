//
//  TabBarViewController.m
//  LTYNews
//
//  Created by 刘天宇 on 2018/11/14.
//  Copyright © 2018 lty. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]} forState:UIControlStateSelected];
       
    }
    return self;
}

@end
