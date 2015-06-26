//
//  MyDetailViewController.m
//  MyApplication_V1.0
//
//  Created by LiPeng on 15/6/24.
//  Copyright (c) 2015年 李晓鹏. All rights reserved.
//

#import "MyDetailViewController.h"
#import "Defined.h"
@interface MyDetailViewController ()

@end

@implementation MyDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //保存 save
    self.saveBT=[UIButton buttonWithType:UIButtonTypeSystem];
    self.saveBT.frame=CGRectMake(0, 0, 30, 30);
    [self.saveBT setBackgroundImage:[UIImage imageNamed:kRightSearchButtonImage] forState:UIControlStateNormal];
    //自定义视图  get时 _   set时 self
    UIBarButtonItem *rightItem=[[UIBarButtonItem alloc] initWithCustomView:_saveBT];
    self.navigationItem.rightBarButtonItem=rightItem;
    
    //返回 back
    self.backBT=[UIButton buttonWithType:UIButtonTypeSystem];
    self.backBT.frame=CGRectMake(0, 0, 30, 30);
    [self.backBT setBackgroundImage:[UIImage imageNamed:kLeftCategoryButtonImage] forState:UIControlStateNormal];
    //自定义视图  get时 _   set时 self
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc] initWithCustomView:_backBT];
    self.navigationItem.leftBarButtonItem=leftItem;
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
