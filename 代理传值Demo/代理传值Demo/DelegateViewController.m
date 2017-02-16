//
//  DelegateViewController.m
//  代理传值Demo
//
//  Created by 抬头看见柠檬树 on 2017/2/16.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "DelegateViewController.h"

@interface DelegateViewController ()

@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 设置一个按钮，点击按钮返回上个界面，传值给上个界面
    [self setupButton];
}

- (void)setupButton
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(50, 50, 200, 44);
    [btn setTitle:@"点我传值" forState:UIControlStateNormal];
    [btn addTarget:self
            action:@selector(btnClick:)
  forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

// 3.设置执行传值的动作（在执行何种操作的情况下需要代理）
- (void)btnClick:(UIButton *)button
{
    if ([_delegate respondsToSelector:@selector(delegateViewController:value:)]) {
        [_delegate delegateViewController:self value:@"这是传的值"];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
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
