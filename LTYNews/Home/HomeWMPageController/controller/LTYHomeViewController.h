//
//  LTYHomeViewController.h
//  LTYNews
//
//  Created by 刘天宇 on 2018/11/13.
//  Copyright © 2018 lty. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTYHomeViewController : WMPageController

@property(nonatomic,strong) NSMutableArray *LTYtitles;
@property(nonatomic,strong) NSMutableArray<Class> *LTYChildViewControllers;

@end

NS_ASSUME_NONNULL_END
