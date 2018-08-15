//
//  BarView.m
//  04-柱状图
//
//  Created by 鞠凝玮 on 2018/8/15.
//  Copyright © 2018年 Ju. All rights reserved.
//

#import "BarView.h"

@implementation BarView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSArray *arr = @[@10,@25,@100,@30,@70];
    CGFloat x = 0;
    CGFloat w = CGRectGetWidth(rect)/(arr.count*2-1);
    for (int i=0;i<arr.count;i++){
        CGFloat h = CGRectGetHeight(rect)*[arr[i] floatValue]/100;
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x+i*2*w, CGRectGetHeight(rect)-h, w, h)];
        [[UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1] set];
        [path fill];
    }
    
}


@end
