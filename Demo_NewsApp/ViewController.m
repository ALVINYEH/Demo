//
//  ViewController.m
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "ViewController.h"
#import "TopView.h"
#import "Constant.h"
#import "MiddleView.h"


@interface ViewController ()
{
    TopView *topView;
    MiddleView *middleView;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addTopView];
    [self addMiddleView];

   
    
}
- (void) addTopView
{
    topView = [[TopView alloc]initWithFrame:CGRectMake(0, 0, UISCREEN_WIDTH, 60)];
    [topView setTitle:@"Hello World!"];
    [self.view addSubview:topView];
}

- (void) addMiddleView
{
    
     middleView = [[MiddleView alloc]initWithFrame:CGRectMake(0, 60, UISCREEN_WIDTH, 40+200) newsType:@[@"Hello",@"World",@"Hello",@"It",@"is",@"Me"]];
    [self.view addSubview:middleView];
    //image info
    NSDictionary *newsInfo0 = [NSDictionary dictionaryWithObjectsAndKeys:@"1.png",@"image",@"iOS",@"info", nil];
    NSDictionary *newsInfo1 = [NSDictionary dictionaryWithObjectsAndKeys:@"2.png",@"image",@"Andriod",@"info", nil];
    NSDictionary *newsInfo2 = [NSDictionary dictionaryWithObjectsAndKeys:@"3.png",@"image",@"Phone",@"info", nil];
    
    NSArray *newsInfo  = [[NSArray alloc]initWithObjects:newsInfo0,newsInfo1,newsInfo2, nil];
    //如何传递数据 1 自定义构造方法 2 属性
    middleView.newsInfo = newsInfo;
    [middleView addNewsScrollView];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
