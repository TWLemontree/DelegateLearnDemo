//
//  ViewController.m
//  代理传值Demo
//
//  Created by 抬头看见柠檬树 on 2017/2/16.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "DelegateViewController.h"

@interface ViewController ()<DelegateViewControllerDelegate>

@property (nonatomic, weak) UILabel *lbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 设置控件
    [self setupUI];
    
}

- (void)setupUI
{
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 200, 50)];
    lbl.text = @"未传值";
    [self.view addSubview:lbl];
    _lbl = lbl;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(50, 130, 50, 44);
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

// 点击跳转到写有Delegate的界面
- (void)btnClick:(UIButton *)button
{
    DelegateViewController *vc = [[DelegateViewController alloc] init];
    vc.delegate = self;
    vc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)delegateViewController:(DelegateViewController *)vc value:(NSString *)value
{
    // 从delegateViewController跳转回来后，设置lbl传来的值
    _lbl.text = value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
