//
//  LineView.m
//  01-基本图形绘制
//
//  Created by 鞠凝玮 on 2018/8/14.
//  Copyright © 2018年 Ju. All rights reserved.
//

#import "LineView.h"

@implementation LineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawCurve];
}

- (void)drawLine{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 10)];
    [path addLineToPoint:CGPointMake(50, 50)];
    [path addLineToPoint:CGPointMake(100, 180)];
    CGContextAddPath(ctx, path.CGPath);
    [[UIColor redColor]set];
    CGContextStrokePath(ctx);
    
}

- (void)drawLine2{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 10)];
    [path addLineToPoint:CGPointMake(50, 50)];
    CGContextSetRGBStrokeColor(ctx, 0, 0, 255, 1);
    CGContextAddPath(ctx, path.CGPath);
    UIBezierPath *path2 = [UIBezierPath bezierPath];

    [path2 moveToPoint:CGPointMake(100, 100)];
    [path2 addLineToPoint:CGPointMake(100, 190)];
    CGContextAddPath(ctx, path2.CGPath);
    CGContextSetRGBStrokeColor(ctx, 0, 255, 0, 1);
    CGContextSetLineWidth(ctx, 10);

    CGContextStrokePath(ctx);

}

- (void)drawCurve{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 10)];
    [path addQuadCurveToPoint:CGPointMake(150, 190) controlPoint:CGPointMake(180, 180)];
    CGContextSetLineWidth(ctx, 5);
    CGContextSetRGBStrokeColor(ctx, 255, 0, 0, 1);
    CGContextAddPath(ctx, path.CGPath);
    CGContextStrokePath(ctx);
    
    
}



@end
