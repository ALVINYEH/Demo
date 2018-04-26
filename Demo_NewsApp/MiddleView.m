//
//  MiddleView.m
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "MiddleView.h"
#import "Constant.h"
#import "PromptView.h"
#import "MaskView.h"

@interface MiddleView()<UIScrollViewDelegate>
{
    NSArray *types;
    UIScrollView *scrollView;
    UIScrollView *newsScrollView;
    NSMutableArray *arrayInfo;
    MaskView *maskView;

}
@end

@implementation MiddleView

- (id)initWithFrame:(CGRect)frame newsType:(NSArray *)type
{
    self = [super initWithFrame:frame];
    if (self) {
        types = type;
        [self addScrollView];
    }
    return self;
}



- (void) addNewsScrollView
{
    newsScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 40, 414, 200)];
    newsScrollView.contentSize = CGSizeMake(414*3, 200);
    newsScrollView.contentOffset = CGPointMake(0, 0);
    newsScrollView.showsHorizontalScrollIndicator = false;
    newsScrollView.pagingEnabled = true;
    newsScrollView.delegate = self;
    int i = 0;
    arrayInfo = [[NSMutableArray alloc]init];
    for (NSDictionary *item in _newsInfo) {
        NSString *image = [item valueForKey:@"image"];
        NSString *info = [item valueForKey:@"info"];
        [arrayInfo addObject:info];
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(414*i++, 0, 414, 200)];
        imageView.image = [UIImage imageNamed:image];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [newsScrollView addSubview:imageView];
    }
    
    [self addSubview:newsScrollView];
    
    maskView = [[MaskView alloc]initWithFrame:CGRectMake(0, 240-20, 414, 20)];
    NSString *title = [arrayInfo objectAtIndex:0];
    [maskView setTitle:title];
    [maskView setPageControlNum:0];
    [self addSubview:maskView];
    
    
    
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    int currentPageNum = (int) scrollView.contentOffset.x / 414;
    NSString *title = [arrayInfo objectAtIndex:currentPageNum];
     [maskView setTitle:title];
    [maskView setPageControlNum:currentPageNum];
    
}

- (void) addScrollView
{
    scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 414, 40)];
    scrollView.contentSize = CGSizeMake(100*types.count, 40);
    scrollView.contentOffset = CGPointMake(0, 0);
    scrollView.backgroundColor = PINK_COLOR;
    scrollView.showsHorizontalScrollIndicator = false;
    scrollView.scrollEnabled = true;
    [self addSubview:scrollView];
    
    for (int i = 0; i < types.count; i++) {
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(i*100,0 , 100, 40)];
        NSString *btnTitle = [types objectAtIndex:i];
        [btn setTitle:btnTitle forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        // frame / tag 判断哪个button
        btn.tag = 10000 + i;
        [scrollView addSubview:btn];
        
        if ( i == 0) {
            btn.layer.borderColor = [UIColor cyanColor].CGColor;
            btn.layer.borderWidth = 1.0;
            btn.layer.cornerRadius = 5.0;
            PromptView *promptView = [[PromptView alloc]initWithPoint:CGPointMake(btn.frame.size.width-20, 0) message:9];
            [btn addSubview:promptView];
            
        }
        if ( i == 1) {
        
            PromptView *promptView = [[PromptView alloc]initWithPoint:CGPointMake(btn.frame.size.width-20, 0) message:5];
            [btn addSubview:promptView];
            
        }
        if ( i == 2) {
            
            PromptView *promptView = [[PromptView alloc]initWithPoint:CGPointMake(btn.frame.size.width-40, 0) message:98];
            [btn addSubview:promptView];
            
        }
        if ( i == 3) {
            
            PromptView *promptView = [[PromptView alloc]initWithPoint:CGPointMake(btn.frame.size.width-40, 0) message:99];
            [btn addSubview:promptView];
            
        }
        if ( i == 4) {
            
            PromptView *promptView = [[PromptView alloc]initWithPoint:CGPointMake(btn.frame.size.width-40, 0) message:999];
            [btn addSubview:promptView];
            
        }
        if ( i == 5) {
          
            PromptView *promptView = [[PromptView alloc]initWithPoint:CGPointMake(btn.frame.size.width-40, 0) message:985];
            [btn addSubview:promptView];
            
        }
    }
}

- (void) buttonAction:(UIButton *)btn
{
    btn.layer.borderColor = [UIColor cyanColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.layer.cornerRadius = 5.0;
    
    // 图层的快速遍历
    for (UIButton *item in scrollView.subviews) {
        if (item.tag >= 10000 && item.tag<=10000+types.count && (item.tag != btn.tag))
        {
            item.layer.borderWidth = 0.0;
        }
    }
}

@end
