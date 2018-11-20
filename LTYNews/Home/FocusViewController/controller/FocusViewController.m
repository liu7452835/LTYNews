//
//  FocusViewController.m
//  LTYNews
//
//  Created by 刘天宇 on 2018/11/16.
//  Copyright © 2018 lty. All rights reserved.
//

#import "FocusViewController.h"

@interface FocusViewController ()

@end

@implementation FocusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    UILabel *labelx = [[UILabel alloc] init];
    labelx.text = @"fafagagaga";
    [labelx setBackgroundColor:[UIColor redColor]];
    labelx.frame =CGRectMake(0, 0, 100, 100);
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:labelx];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
