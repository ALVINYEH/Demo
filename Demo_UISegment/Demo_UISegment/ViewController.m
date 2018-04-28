//
//  ViewController.m
//  Demo_UISegment
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>
{
    NSArray *array;
    UITextView *textView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self segmentcontrol1];
    [self pageControl1];
    [self textView1];
}



- (void) segmentcontrol1{
    
    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:@[
                                                                             [UIImage imageNamed:@"check.png"],
                                                                             [UIImage imageNamed:@"search.png"],
                                                                             [UIImage imageNamed:@"tools.png"]]];
    segment.frame = CGRectMake(0, 80, 320, 30);
    [segment addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segment];
}

- (void) segmentAction:(UISegmentedControl *)segment
{
    NSLog(@"hello : %ld",[segment selectedSegmentIndex]);
}

- (void) pageControl1
{
    UIPageControl *pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, 160, 414, 20)];
    pageControl.numberOfPages = 10;//共有多少页
    pageControl.currentPage = 3; //现在第几页
    pageControl.backgroundColor = [UIColor grayColor];
    [self.view addSubview:pageControl];
}

- (void) textView1
{
    textView = [[UITextView alloc]initWithFrame:CGRectMake(20, 250, 200, 100)];
    textView.textColor = [UIColor blackColor];
    textView.font = [UIFont systemFontOfSize:18.0];
    textView.delegate = self;
    textView.text = @"textViewtextViewtextViewtextViewtextViewtextView";
    textView.scrollEnabled = true;
    [self.view addSubview:textView];
    
}

//点击空白处
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [textView resignFirstResponder];
    
}

- (void) textViewDidEndEditing:(UITextView *)textView
{
    NSLog(@"%@",textView.text);
    
}


// uicontrol 是 uiview的子类 2 xx的父类


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
