//
//  DelegateViewController.h
//  代理传值Demo
//
//  Created by 抬头看见柠檬树 on 2017/2/16.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"

// 2.设置代理
@class DelegateViewController;
@protocol DelegateViewControllerDelegate <NSObject>

@optional
// 代理方法的第一个参数默认写成传递自己，从第二个参数开始才是想要传递的值。
- (void)delegateViewController:(DelegateViewController *)vc value:(NSString *)value;

@end

@interface DelegateViewController : UIViewController

// 1.定义代理属性
@property (nonatomic, weak) id<DelegateViewControllerDelegate> delegate;

@end
