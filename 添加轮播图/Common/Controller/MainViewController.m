//
//  MainViewController.m
//  MyApplication_V1.0
//
//  Created by LiPeng on 15/6/24.
//  Copyright (c) 2015年 李晓鹏. All rights reserved.
//

#import "MainViewController.h"
#import "TSViewController.h"
#import "BSViewController.h"
#import "SCViewController.h"
#import "UserViewController.h"
#import "Defined.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //管理 ViewControllers
    [self layoutViewControllers];
}
#pragma mark - 创建管理视图
-(void)layoutViewControllers{
    
    //今日特卖页面
    TSViewController *tsVC = [[TSViewController alloc]init];
    UINavigationController *tsNAVC = [[UINavigationController alloc]initWithRootViewController:tsVC];
    tsVC.title = @"今日特卖";
    tsNAVC.tabBarItem.image = [UIImage imageNamed:kTodaysSaleBarImage];
    
    //品牌销售界面
    BSViewController *bsVC = [[BSViewController alloc]init];
    UINavigationController *bsNAVC = [[UINavigationController alloc]initWithRootViewController:bsVC];
    bsVC.title = @"品牌销售";
    bsNAVC.tabBarItem.image = [UIImage imageNamed:kBrandSaleBarImage];
    
    //购物车界面
    SCViewController *scVC = [[SCViewController alloc]init];
    UINavigationController *scNAVC = [[UINavigationController alloc]initWithRootViewController:scVC];
    scVC.title = @"购物车";
    scNAVC.tabBarItem.image = [UIImage imageNamed:kShoppingCartBarImage];
    
    //用户界面
    UserViewController *userVC = [[UserViewController alloc]init];
    UINavigationController *userNAVC = [[UINavigationController alloc]initWithRootViewController:userVC];
    userVC.title = @"我的";
    userNAVC.tabBarItem.image = [UIImage imageNamed:kUserBarImage];
    
    self.viewControllers = @[tsNAVC,bsNAVC,scNAVC,userNAVC];
    
    //给所有的bar 设置颜色
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:1.000 green:0.615 blue:0.065 alpha:1.000]];
    self.tabBar.translucent=NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
