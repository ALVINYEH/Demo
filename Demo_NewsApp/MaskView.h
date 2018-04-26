//
//  MaskView.h
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MaskView : UIView
- (id) initWithFrame:(CGRect)frame;
- (void) setTitle:(NSString *)title;
- (void)setPageControlNum:(int)pageNum;
@end
