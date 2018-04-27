//
//  MiddleView.h
//  Demo_NewsApp
//
//  Created by game-netease-chuyou on 2018/4/26.
//  Copyright © 2018年 chuyou. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MiddleView : UIView


@property (nonatomic, strong) NSArray *newsInfo;

- (void) addNewsScrollView;


- (id)initWithFrame:(CGRect)frame newsType:(NSArray *)type;

- (void) addMixImageTextFrame:(CGRect )frame image:(NSString *)image title:(NSString *)title url:(NSString *)url;
@end
