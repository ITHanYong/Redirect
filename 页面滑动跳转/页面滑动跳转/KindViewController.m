//
//  KindViewController.m
//  页面滑动跳转
//
//  Created by HanYong on 2018/5/12.
//  Copyright © 2018年 HanYong. All rights reserved.
//

#import "KindViewController.h"

@interface KindViewController ()

@end

@implementation KindViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navBarBgAlpha = @"0.0";
    
    // 设置导航栏标题和返回按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // 设置导航栏标题和返回按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor darkGrayColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"kind";
    self.view.backgroundColor = [UIColor whiteColor];
    
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
