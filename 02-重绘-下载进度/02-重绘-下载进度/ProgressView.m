//
//  ProgressView.m
//  02-重绘-下载进度
//
//  Created by 鞠凝玮 on 2018/8/14.
//  Copyright © 2018年 Ju. All rights reserved.
//

#import "ProgressView.h"

@interface ProgressView()
@end

@implementation ProgressView

-(void)setProgress:(CGFloat)progress{
    _progress = progress;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect{
    CGFloat width = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);
    

    CGFloat r = width < height ? width/2 : height/2;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2, height/2) radius:r-2 startAngle:-M_PI_2 endAngle:-M_PI_2+_progress*M_PI*2 clockwise:YES];
    [[UIColor redColor]set];
    [path stroke];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
