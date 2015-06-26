//
//  TSViewController.m
//  MyApplication_V1.0
//
//  Created by LiPeng on 15/6/24.
//  Copyright (c) 2015年 李晓鹏. All rights reserved.
//

#import "TSViewController.h"
#import "Defined.h"
#import "SCNavTabBarController.h"
#import "SDCycleScrollView.h"
@interface TSViewController () <SDCycleScrollViewDelegate,UITableViewDelegate,UITableViewDataSource>

@end

@implementation TSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //上方 NavigationLeftButton
    self.listButton=[UIButton buttonWithType:UIButtonTypeSystem];
    self.listButton.frame=CGRectMake(0, 0, 30, 30);
    [self.listButton setBackgroundImage:[UIImage imageNamed:kLeftCategoryButtonImage] forState:UIControlStateNormal];
    
    // 查找
    //自定义视图  get时 _   set时 self
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc] initWithCustomView:_listButton];
    self.navigationItem.leftBarButtonItem=leftItem;
    
    self.findButton=[UIButton buttonWithType:UIButtonTypeSystem];
    self.findButton.frame=CGRectMake(0, 0, 30, 30);
    [self.findButton setBackgroundImage:[UIImage imageNamed:kRightSearchButtonImage] forState:UIControlStateNormal];
    
    
    
    //自定义视图  get时 _   set时 self
    UIBarButtonItem *rightItem=[[UIBarButtonItem alloc] initWithCustomView:_findButton];
    self.navigationItem.rightBarButtonItem=rightItem;

    UIViewController *oneViewController = [[UIViewController alloc] init];
    oneViewController.title = @"上新";
    oneViewController.view.backgroundColor = [UIColor whiteColor];
    
    UIViewController *twoViewController = [[UIViewController alloc] init];
    twoViewController.title = @"最后疯抢";
    twoViewController.view.backgroundColor = [UIColor purpleColor];
    
    UIViewController *threeViewController = [[UIViewController alloc] init];
    threeViewController.title = @"女装";
    threeViewController.view.backgroundColor = [UIColor orangeColor];
    
    UIViewController *fourViewController = [[UIViewController alloc] init];
    fourViewController.title = @"鞋包";
    fourViewController.view.backgroundColor = [UIColor magentaColor];
    
    UIViewController *fiveViewController = [[UIViewController alloc] init];
    fiveViewController.title = @"母婴";
    fiveViewController.view.backgroundColor = [UIColor yellowColor];
    
    UIViewController *sixViewController = [[UIViewController alloc] init];
    sixViewController.title = @"居家";
    sixViewController.view.backgroundColor = [UIColor cyanColor];
    
    UIViewController *sevenViewController = [[UIViewController alloc] init];
    sevenViewController.title = @"美食";
    sevenViewController.view.backgroundColor = [UIColor blueColor];
    
    UIViewController *eightViewController = [[UIViewController alloc] init];
    eightViewController.title = @"配饰";
    eightViewController.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *ninghtViewController = [[UIViewController alloc] init];
    ninghtViewController.title = @"美妆";
    ninghtViewController.view.backgroundColor = [UIColor redColor];
    
    UIViewController *tenViewController = [[UIViewController alloc] init];
    tenViewController.title = @"昨日热卖";
    tenViewController.view.backgroundColor = [UIColor brownColor];
    
    SCNavTabBarController *navTabBarController = [[SCNavTabBarController alloc] init];
    navTabBarController.subViewControllers = @[oneViewController, twoViewController, threeViewController, fourViewController, fiveViewController, sixViewController, sevenViewController, eightViewController, ninghtViewController,tenViewController];
    
    // 显示箭头下拉
    navTabBarController.showArrowButton = NO;// yes显示箭头下拉
    [navTabBarController addParentController:self];
    

    
    // 情景二：采用网络图片实现
    NSArray *imagesURLStrings = @[
                                  @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
                                  @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
                                  @"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"
                                  ];
    // 情景三：图片配文字
    NSArray *titles = @[@"感谢您的支持，如果下载的",
                        @"如果代码在使用过程中出现问题",
                        @"您可以发邮件到gsdios@126.com",
                        @"感谢您的支持"
                        ];
    
    
    
    
    CGFloat w = self.view.bounds.size.width;
    
    //网络加载 --- 创建带标题的图片轮播器
    SDCycleScrollView *cycleScrollView2 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 44, w, 180) imageURLStringsGroup:nil]; // 模拟网络延时情景
    cycleScrollView2.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    cycleScrollView2.delegate = self;
    cycleScrollView2.titlesGroup = titles;
    cycleScrollView2.dotColor = [UIColor yellowColor]; // 自定义分页控件小圆标颜色
    cycleScrollView2.placeholderImage = [UIImage imageNamed:@"placeholder"];
    [self.view addSubview:cycleScrollView2];
    
    //             --- 模拟加载延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        cycleScrollView2.imageURLStringsGroup = imagesURLStrings;
    });
    
#pragma mark - 设置假 Cell
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 230, 375, 500) style:(UITableViewStylePlain)];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    cell.textLabel.text = @"这是 Vip 折扣店";
    cell.imageView.image = [UIImage imageNamed:@"005.jpg"];
    cell.detailTextLabel.text = @"您的私人衣柜";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
#pragma mark - SDCycleScrollViewDelegate

- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"---点击了第%ld张图片", index);
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
