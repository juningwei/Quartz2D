//
//  PieView.m
//  03-饼图
//
//  Created by 鞠凝玮 on 2018/8/15.
//  Copyright © 2018年 Ju. All rights reserved.
//

#import "PieView.h"

@implementation PieView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSArray *arr = @[@10,@10,@20,@20,@40];
    CGFloat start = 0;
    CGFloat end = 0;
    CGFloat r = CGRectGetWidth(rect) < CGRectGetHeight(rect) ? CGRectGetWidth(rect)/2 : CGRectGetHeight(rect)/2;
    for (int i=0;i<arr.count;i++){
        CGFloat num = [arr[i] floatValue];
        CGFloat angle = M_PI*2*num/100.0;
        start = end;
        end = start + angle;
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CGRectGetWidth(rect)/2, CGRectGetHeight(rect)/2) radius:r startAngle:start endAngle:end clockwise:YES];
        [path addLineToPoint:CGPointMake(CGRectGetWidth(rect)/2, CGRectGetWidth(rect)/2)];
        [[UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1] set];
        [path fill];
        
    }
}



@end
