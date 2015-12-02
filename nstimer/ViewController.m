//
//  ViewController.m
//  nstimer
//
//  Created by 杨元锋 on 15/11/30.
//  Copyright © 2015年 netcore. All rights reserved.
//

#import "ViewController.h"
#import "YYViewController.h"
@interface ViewController ()

@end

@implementation ViewController
 

- (void)viewDidLoad {
    [super viewDidLoad];
     
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 40, 40)];
    [button setTitle:@"开始" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(startqq) forControlEvents:UIControlEventTouchUpInside];
 
}


-(void)startqq
{
    YYViewController*svc = [[YYViewController alloc]init];
    [self.navigationController pushViewController:svc animated:YES];
}

@end
