//
//  MyButton.m
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/27.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

- (id) initWithFrame:(CGRect)frame image:(NSString *)imageName title:(NSString *)title
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [self setTitle:title forState:UIControlStateNormal];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    }
    return self;
}

//确定image：myButton frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat w = contentRect.size.width;
    CGFloat h = w;
    CGFloat x = 0;
    CGFloat y = 0;
    return CGRectMake(x, y, w, h);
}

-(CGRect) titleRectForContentRect:(CGRect)contentRect
{
    CGFloat w = contentRect.size.width;
    CGFloat h = contentRect.size.height - contentRect.size.width;
    CGFloat x = 0;
    CGFloat y = contentRect.size.width;
    return CGRectMake(x, y, w, h);
}

@end
