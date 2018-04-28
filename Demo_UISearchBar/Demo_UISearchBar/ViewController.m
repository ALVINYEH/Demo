//
//  ViewController.m
//  Demo_UISearchBar
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UISearchBarDelegate>
{
    NSArray *arr;
}



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self searchBar2];
}


//自定义 searcBar2
- (void) searchBar2
{
    UISearchBar *searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 100, 414, 50)];
    searchBar.showsCancelButton = true;
    searchBar.showsBookmarkButton = true;//书签
    searchBar.delegate = self;
    searchBar.backgroundColor = [UIColor colorWithRed:151.0/255.0 green:183.0/255.0 blue:213.0/255.0 alpha:1.0];
    [searchBar setImage:[UIImage imageNamed:@"bookmark.png"] forSearchBarIcon:UISearchBarIconBookmark state:UIControlStateNormal];
     [searchBar setImage:[UIImage imageNamed:@"bookmarkhighlighted.png"] forSearchBarIcon:UISearchBarIconBookmark state:UIControlStateHighlighted];
    [self.view addSubview:searchBar];
}


- (void) searchBar1{
    UISearchBar *searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 100, 414, 50)];
    searchBar.showsCancelButton = true;//cancel按钮是否显示
    searchBar.delegate = self;
    
    //补充属性
    searchBar.showsScopeBar = true;
    arr = @[@"a",@"d"];
    searchBar.scopeButtonTitles = arr;
    [self.view addSubview:searchBar];
}

// 点击cancel
- (void) searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    NSLog(@"cancel");
    [searchBar resignFirstResponder];//取消键盘
}

- (void) searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    NSLog(@"将在数据中搜索：%@ ",searchBar.text);
    [searchBar resignFirstResponder];
}

- (void) searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope
{
    NSLog(@"selectedScope:%ld",(long)selectedScope);
    NSLog(@"array = %@",[arr objectAtIndex:selectedScope]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
