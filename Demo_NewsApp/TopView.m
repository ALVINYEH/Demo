//
//  TopView.m
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "TopView.h"
#import "Constant.h"

@implementation TopView

- (id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:138.0/255.0 green:206.0/255.0 blue:245.0/255.0 alpha:1.0];
    }
    return self;
}

- (void) setTitle:(NSString *)title
{
    UILabel *label = [[UILabel alloc]init];
    label.text = title;
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor whiteColor];
    UIFont *font = [UIFont systemFontOfSize:20.0];
    label.font = font;
    CGSize labelWH = [title sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil]];
    label.frame = CGRectMake((UISCREEN_WIDTH - labelWH.width)/2, 20, labelWH.width, labelWH.height);
    [self addSubview:label];
}


@end
