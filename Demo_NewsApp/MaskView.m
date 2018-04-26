//
//  MaskView.m
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "MaskView.h"
@interface MaskView()
{
    UILabel *label;
    UIPageControl *pageControl;
}

@end

@implementation MaskView

-(id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:1.0];
        self.alpha = 0.7;
        label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width - 100, self.frame.size.height)];
        label.textColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label];
    }
    return self;
}

- (void)setPageControlNum:(int)pageNum
{
    if (pageControl == nil) {
        pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(self.frame.size.width-100, 0, 100, self.frame.size.height)];
        pageControl.numberOfPages = 3;
        pageControl.currentPage = 0;
        [self addSubview:pageControl];
    } else {
        pageControl.currentPage = pageNum;
    }
}

- (void) setTitle:(NSString *)title
{
    label.text = title;
}

@end
