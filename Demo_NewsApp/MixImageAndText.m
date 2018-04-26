//
//  MixImageAndText.m
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import "MixImageAndText.h"
@interface MixImageAndText()
{
    UIImageView *imageView;
    UILabel *label;
    UILabel *url;
}
@end


@implementation MixImageAndText

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.height *2, self.frame.size.height)];
        
    }
    return self;
}

- (void) setImage:(NSString *)imageName
{
    imageView.image = [UIImage imageNamed:imageName];
}
@end
