//
//  ViewController.m
//  02-重绘-下载进度
//
//  Created by 鞠凝玮 on 2018/8/14.
//  Copyright © 2018年 Ju. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet ProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label.text = [NSString stringWithFormat:@"%.2d%%",0];

}
- (IBAction)drag:(id)sender {
    UISlider *slider = (UISlider *)sender;
    self.progressView.progress = slider.value;
    
    self.label.text = [NSString stringWithFormat:@"%.2f%%",slider.value*100];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
