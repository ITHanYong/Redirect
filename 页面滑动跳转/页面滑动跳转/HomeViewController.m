//
//  HomeViewController.m
//  页面滑动跳转
//
//  Created by HanYong on 2018/5/12.
//  Copyright © 2018年 HanYong. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) UIButton *turnDetail;//跳转按钮(
@property (nonatomic, strong) DetailViewController *detailVC;

@end

@implementation HomeViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navBarBgAlpha = @"1.0";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"首页";
    
    self.turnDetail = [UIButton buttonWithType:UIButtonTypeSystem];
    self.turnDetail.frame = CGRectMake(10, 80, 80, 50);
    [self.turnDetail setTitle:@"跳转-详情" forState:UIControlStateNormal];
    [self.turnDetail addTarget:self action:@selector(turnPageDetail:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.turnDetail];
    
    self.detailVC = [DetailViewController new];
    
    self.navigationController.cloudox = @"hey";
    NSLog(@"%@",self.navigationController.cloudox);
}

//获取子视图
-(void)getSub:(UIView *)view andLevel:(int)level{
    
    NSArray *subviews = [view subviews];
    if ([subviews count] == 0) return;
    for (UIView *subview in subviews) {
        
        NSString *blank = @"";
        for (int i = 1; i < level; i++) {
            blank = [NSString stringWithFormat:@"  %@", blank];
        }
        NSLog(@"%@%d: %@", blank, level, subview.class);
        [self getSub:subview andLevel:(level+1)];
    }
}

-(void)turnPageDetail:(UIButton *)sender{
    
    [self.navigationController pushViewController:_detailVC animated:YES];
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
