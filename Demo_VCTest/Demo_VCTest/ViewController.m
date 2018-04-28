//
//  ViewController.m
//  Demo_VCTest
//
//  Created by game-netease-chuyou on 2018/4/28.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
{
    SecondViewController *svc;
}
@property (weak, nonatomic) IBOutlet UIButton *deallocVC;
@end

@implementation ViewController
//加载视图
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor= [UIColor grayColor];
    svc = [[SecondViewController alloc]init];
    NSLog(@"viewDidLoad");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (svc == nil) {
        svc = [[SecondViewController alloc]init];
    }
    [self.navigationController pushViewController:svc animated:true];
}

//即将可见
- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear");
}

//已经可见
- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear");
}

//即将消失
- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"viewWillDisappear");
}
//已经消失
- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDisappear");
}

//已经废弃
//- (void)viewWillUnload
//{}
//
//- (void)viewDidUnload
//{
//
//}
//销毁
- (void)dealloc
{
    NSLog(@"dealloc");
}

- (IBAction)deallocVC:(id)sender {
    svc = nil;
}




@end
