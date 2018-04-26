//
//  PromptView.m
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "PromptView.h"

@implementation PromptView

- (id)initWithPoint:(CGPoint)point message:(int)message
{
    CGRect rect;
    NSString *labelString = nil;
    if (message < 10) {
        rect = CGRectMake(point.x, point.y, 20, 20);
        labelString = [NSString stringWithFormat:@"%d",message];
    } else if(message < 100) {
        rect = CGRectMake(point.x, point.y, 40, 20);
        labelString = [NSString stringWithFormat:@"%d",message];
    } else {
        rect = CGRectMake(point.x, point.y, 40, 20);
        labelString = [NSString stringWithFormat:@"%@",@"99+"];
    }
    
    self = [super initWithFrame:rect];
    if (self) {
        self.textColor = [UIColor whiteColor];
        self.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = [UIColor redColor];
        self.text = labelString;
        self.layer.cornerRadius = 10.0;
        self.layer.masksToBounds = true; //UIVIEW / UIlabel layer 按照形状剪切
        
    }
    return  self;
}

@end
