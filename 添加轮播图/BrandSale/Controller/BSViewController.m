//
//  BSViewController.m
//  MyApplication_V1.0
//
//  Created by LiPeng on 15/6/24.
//  Copyright (c) 2015年 李晓鹏. All rights reserved.
//

#import "BSViewController.h"
#import "Defined.h"
@interface BSViewController ()

@end

@implementation BSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //上方 NavigationLeftButton
    self.listButton=[UIButton buttonWithType:UIButtonTypeSystem];
    self.listButton.frame=CGRectMake(0, 0, 30, 30);
    [self.listButton setBackgroundImage:[UIImage imageNamed:kLeftCategoryButtonImage] forState:UIControlStateNormal];
    //自定义视图  get时 _   set时 self
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc] initWithCustomView:_listButton];
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
