//
//  LTYHomeViewController.m
//  LTYNews
//
//  Created by 刘天宇 on 2018/11/13.
//  Copyright © 2018 lty. All rights reserved.
//

#import "LTYHomeViewController.h"
#import "FocusViewController.h"
#import "HeadlineTableViewController.h"
#import "VideoViewController.h"
#import "FunViewController.h"
#import "SportViewController.h"
#import "NewEraViewController.h"
#import "NewsViewController.h"

#define MenuHEIGHT SCREENWIDTH/9

@interface LTYHomeViewController ()

@end

@implementation LTYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    
    
    UIView *searchView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,2*SCREENWIDTH/3, CURRENTNAVIGATIONBARHEIGHT -10)];
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0,2*SCREENWIDTH/3, CURRENTNAVIGATIONBARHEIGHT -10)];
    searchBar.placeholder = @"请输入数据";
    [searchView addSubview:searchBar];
    self.navigationItem.titleView = searchView;
   

    
    
    self.selectIndex = 1;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"channel_plus_15x15_"] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, MenuHEIGHT, MenuHEIGHT);
    self.menuView.rightView = btn;
    [btn addTarget:self action:@selector(rightButtonAction) forControlEvents:UIControlEventTouchUpInside];
}
- (IBAction)leftBarItemAction:(UIBarButtonItem *)sender {
    NSLog(@"刷新数据");
    
}



- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        self.tabBarItem.image = [UIImage imageNamed:@"tabbar_icon_news_0_40x33_"];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_icon_news_17_40x34_"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];//设置图片不渲染
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]} forState:UIControlStateSelected];
        self.tabBarItem.title = @"首页";
        //下列属性需要在初始化中设置
        self.menuViewStyle = WMMenuViewStyleDefault;//无下划线默认模式
        self.menuItemWidth = SCREENWIDTH/6;
        self.titleColorNormal = [UIColor lightGrayColor];
        self.titleColorSelected = [UIColor blackColor];
        self.titleSizeNormal = 15;
        self.titleSizeSelected = 15;
     
    }
    return self;
}





#pragma mark - 右侧按钮触发方法
- (void)rightButtonAction{
    NSLog(@"添加或删除菜单栏条目");
}


#pragma mark - WMPageController的dataSource

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index{
    return self.LTYtitles[index];
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index{
    UIViewController *childVC = [[self.LTYChildViewControllers[index] alloc] init];
    
    return childVC;
}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController{
    return self.LTYtitles.count;
}

#pragma mark - WMPageController要求实现的方法

//WMPageControllerd菜单栏位置
- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView{
    return CGRectMake(0, CURRENTNAVIGATIONBARHEIGHT+CURRENTSTATUSHEIGHT, SCREENWIDTH,MenuHEIGHT);//相对于父视图，需要考虑导航栏和状态栏高度
}

//WMPageControllerd内容位置
- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView{
    return CGRectMake(0, CURRENTNAVIGATIONBARHEIGHT+CURRENTSTATUSHEIGHT+MenuHEIGHT,SCREENWIDTH, SCREENHEIGHT -(CURRENTNAVIGATIONBARHEIGHT+CURRENTSTATUSHEIGHT+MenuHEIGHT+CURRENTTABBARHEIGHT));
}


#pragma mark - 懒加载

- (NSMutableArray *)LTYtitles{
    if (!_LTYtitles) {
        _LTYtitles = [[NSMutableArray alloc] initWithObjects:@"关注",@"头条",@"视频",@"娱乐",@"体育",@"新时代",@"要闻", nil];
    }
    return _LTYtitles;
}

-(NSMutableArray<Class> *)LTYChildViewControllers{
    if (!_LTYChildViewControllers) {
        _LTYChildViewControllers = [[NSMutableArray alloc] initWithObjects:[FocusViewController class],[HeadlineTableViewController class], [VideoViewController class],[FunViewController class],[SportViewController class],[NewEraViewController class],[NewsViewController class],nil];
    }
    return _LTYChildViewControllers;
}


@end
