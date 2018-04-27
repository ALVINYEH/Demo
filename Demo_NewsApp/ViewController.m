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
#import "MyButton.h"


@interface ViewController ()
{
    TopView *topView;
    MiddleView *middleView;
    UIView *searchView;
    UISearchBar *searchBar;
    UIView *nightView;
    UILabel *nightLabel;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addTopView];
    //[self addMiddleView];
    //[self addMyButton];
    //[self addSearchView];
    [self addNightModel];

   
    
}

- (void) addNightModel
{
    nightView = [[UIView alloc]initWithFrame:CGRectMake(0, 65, 414, 80)];
    nightView.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
    nightLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 80, 80)];
    nightLabel.text = @"暗夜模式:";
    [nightView addSubview:nightLabel];
    UISwitch *_switch = [[UISwitch alloc]initWithFrame:CGRectMake(80, (80-31)/2, 51, 31)];
    [_switch addTarget:self action:@selector(switchAciton:) forControlEvents:UIControlEventValueChanged];
    [nightView addSubview:_switch];
    [self.view addSubview:nightView];
}

- (void) switchAciton:(UISwitch *)_switch
{
    if ([_switch isOn]) {
        self.view.backgroundColor = [UIColor blackColor];
        nightView.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:1.0];
        nightLabel.textColor = [UIColor whiteColor];
        topView.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:1.0];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
        nightView.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
        nightLabel.textColor = [UIColor blackColor];
        topView.backgroundColor = [UIColor colorWithRed:138.0/255.0 green:206.0/255.0 blue:245.0/255.0 alpha:1.0];
    }
    
}

- (void) addSearchView
{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(UISCREEN_WIDTH-55, 15, 30, 30)];
    [btn setImage:[UIImage imageNamed:@"search.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(searchAction) forControlEvents:UIControlEventTouchUpInside];
    [topView addSubview:btn];
}

- (void) searchAction
{
    searchView = [[UIView alloc]initWithFrame:CGRectMake(0, 60, UISCREEN_WIDTH, UISCREEN_HEIGHT-60)];
    searchView.backgroundColor = [UIColor  whiteColor];
    searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 414, 50)];
    [searchView addSubview:searchBar];
    [self.view addSubview:searchView];
    
}
- (void )touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [searchBar resignFirstResponder];
    if (searchView) {
        [searchView removeFromSuperview];
        searchView = nil;
    }
    
}

- (void) addMyButton
{
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:0.7];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 65, UISCREEN_WIDTH, 80)];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    MyButton *btn = [[MyButton alloc]initWithFrame:CGRectMake(0, 0, 60, 80) image:@"tel.npg" title:@"电话"];
    [view addSubview:btn];
}

- (void) addTopView
{
    topView = [[TopView alloc]initWithFrame:CGRectMake(0, 0, UISCREEN_WIDTH, 60)];
    [topView setTitle:@"Hello World!"];
    [self.view addSubview:topView];
}

- (void) addMiddleView
{
    
     middleView = [[MiddleView alloc]initWithFrame:CGRectMake(0, 60, UISCREEN_WIDTH, 40+200+140) newsType:@[@"Hello",@"World",@"Hello",@"It",@"is",@"Me"]];
    [self.view addSubview:middleView];
    //image info
    NSDictionary *newsInfo0 = [NSDictionary dictionaryWithObjectsAndKeys:@"1.png",@"image",@"iOS",@"info", nil];
    NSDictionary *newsInfo1 = [NSDictionary dictionaryWithObjectsAndKeys:@"2.png",@"image",@"Andriod",@"info", nil];
    NSDictionary *newsInfo2 = [NSDictionary dictionaryWithObjectsAndKeys:@"3.png",@"image",@"Phone",@"info", nil];
    
    NSArray *newsInfo  = [[NSArray alloc]initWithObjects:newsInfo0,newsInfo1,newsInfo2, nil];
    //如何传递数据 1 自定义构造方法 2 属性
    middleView.newsInfo = newsInfo;
    [middleView addNewsScrollView];

    //混排
    [middleView addMixImageTextFrame:CGRectMake(0, 245, UISCREEN_WIDTH, 60) image:@"4.jpg" title:@"在一个单位中，可能是存在多个不同的应用，比如学校会有财务的系统会有学生工作的系统，还有图书馆的系统等等，如果每个系统都用独立的账号认证体系，会给用户带来很大困扰，也给管理带来很大不便。所以需要设计一种统一登录的解决方案。比如我登陆了百度账号，进贴吧时发现已经登录了，进糯米发现也自动登录了。常见的有两种情况." url:@"http://www.163.com"];
    [middleView addMixImageTextFrame:CGRectMake(0, 310, UISCREEN_WIDTH, 60) image:@"5.jpg" title:@"在一个单位中，可能是存在多个不同的应用，比如学校会有财务的系统会有学生工作的系统，还有图书馆的系统等等，如果每个系统都用独立的账号认证体系，会给用户带来很大困扰，也给管理带来很大不便。所以需要设计一种统一登录的解决方案。比如我登陆了百度账号，进贴吧时发现已经登录了，进糯米发现也自动登录了。常见的有两种情况." url:@"http://www.163.com"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
