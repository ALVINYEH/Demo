//
//  ViewController.m
//  Demo_UIScrollView
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>{
    UIScrollView *scrollview;
    NSTimer *timer;
    int imageIndex;
    UIPageControl *pageControl;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    [self scrollview5];
}

-(void)scrollview5{
    scrollview = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 414, 200)];
    scrollview.contentSize = CGSizeMake(414*4, 200);
    scrollview.backgroundColor = [UIColor clearColor];//清除背景
    scrollview.pagingEnabled = true;
    scrollview.delegate = self;
    for (int index = 0; index < 4; index++) {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(index*414, 0, 414, 200)];
        NSString *imagePath = [NSString stringWithFormat:@"%d.jpg",index+1];
        imageView.image = [UIImage imageNamed:imagePath];
        [scrollview addSubview:imageView];
    }
    [self.view addSubview:scrollview];
    
    pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0, 160, 414, 20)];
    pageControl.numberOfPages = 4;
    pageControl.currentPage = 0;
    pageControl.backgroundColor = [UIColor grayColor];
    [self.view addSubview:pageControl];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(imagePlay) userInfo:nil repeats:true];
    imageIndex = 0;
}
-(void)imagePlay{
    
    pageControl.currentPage = imageIndex;
    scrollview.contentOffset = CGPointMake(imageIndex*414, 0);
    imageIndex++;
    if (imageIndex >= 4) {
        imageIndex = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
