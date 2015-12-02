//
//  YYViewController.m
//  nstimer
//
//  Created by 杨元锋 on 15/12/2.
//  Copyright © 2015年 netcore. All rights reserved.
//

#import "YYViewController.h"

@interface YYViewController ()
@property (weak,nonatomic) UILabel *label;
@end

@implementation YYViewController
{
    NSTimer *timer;
    int num;
    BOOL yyes;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 40, 40)];
    [button setTitle:@"开始" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(startqq) forControlEvents:UIControlEventTouchUpInside];
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 40, 40)];
    [self.view addSubview:label];
    label.backgroundColor = [UIColor lightGrayColor];
    num = 20;
    self.label = label;
    self.label.text = [NSString stringWithFormat:@"%d",num];
    
    UIButton *sbutton = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.view.frame)-40, 100, 40, 40)];
    [sbutton setTitle:@"暂停" forState:UIControlStateNormal];
    sbutton.backgroundColor = [UIColor blueColor];
    [self.view addSubview:sbutton];
    
    [sbutton addTarget:self action:@selector(stopqq) forControlEvents:UIControlEventTouchUpInside];
    
    
}


-(void)startqq
{
    if (!timer)
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(stopqq3) userInfo:nil repeats:YES];
    }
}

-(void)stopqq
{
    if (yyes)
    {
        [timer setFireDate:[NSDate distantPast]];
        yyes = !yyes;
    }else
    {
        [timer setFireDate:[NSDate distantFuture]];
        yyes = !yyes;
    }
    
    //    if (timer.valid)
    //    {
    //        [timer setFireDate:[NSDate distantFuture]];
    //        [timer invalidate];
    //        timer = nil;
    //    }else
    //    {
    //        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(stopqq3) userInfo:nil repeats:YES];
    //    }
}

-(void)stopqq3
{
    if (num>=1)
    {
        num -= 1;
        
        self.label.text = [NSString stringWithFormat:@"%d",num];
    }else
    {
        [timer invalidate];
//        timer = nil;
    }
}

-(void)dealloc
{
    NSLog(@"已经销毁");
}

@end
