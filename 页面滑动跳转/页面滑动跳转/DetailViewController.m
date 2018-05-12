//
//  DetailViewController.m
//  页面滑动跳转
//
//  Created by HanYong on 2018/5/12.
//  Copyright © 2018年 HanYong. All rights reserved.
//

#import "DetailViewController.h"
#import "KindViewController.h"

@interface DetailViewController ()<UINavigationControllerDelegate>

@end

@implementation DetailViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navBarBgAlpha = @"0.0";
    
    // 设置导航栏标题和返回按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
}

//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//
//    // 设置导航栏标题和返回按钮颜色
//    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
//
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"详情";
    //    self.view.backgroundColor = [UIColor lightGrayColor];
    self.view.backgroundColor = [UIColor colorWithRed:0xe0/255.0f green:0x7a/255.0f blue:0x40/255.0f alpha:1.0f];

    self.navigationController.delegate = self;
    //    self.navigationController.delegate = self.navigationController;
    
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    [back setTitle:@"Back" forState:UIControlStateNormal];
    [back setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(toBackView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toNextView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

// 返回上一页
- (void)toBackView {
    [self.navigationController popViewControllerAnimated:YES];
}

// 进入新界面
- (void)toNextView {
    KindViewController *kindVC = [[KindViewController alloc] init];
    [self.navigationController setNavigationBarHidden:YES];
    [self.navigationController pushViewController:kindVC animated:YES];
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
