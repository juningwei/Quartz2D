//
//  DrawView.m
//  05-绘制文字和图片
//
//  Created by 鞠凝玮 on 2018/8/15.
//  Copyright © 2018年 Ju. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSString *str =@"wqeawdad";
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[NSForegroundColorAttributeName] = [UIColor redColor];
    dic[NSFontAttributeName] = [UIFont systemFontOfSize:24];
    NSShadow *shadow = [[NSShadow alloc]init];
    shadow.shadowColor = [UIColor greenColor];
    shadow.shadowOffset = CGSizeMake(4, 4);
    shadow.shadowBlurRadius = 3;

    dic[NSShadowAttributeName] = shadow;
    [str drawAtPoint:CGPointZero withAttributes:dic];
}


@end
