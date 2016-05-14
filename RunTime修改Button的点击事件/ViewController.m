//
//  ViewController.m
//  RunTime修改Button的点击事件
//
//  Created by lanou on 16/4/20.
//  Copyright © 2016年 WangJin. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+FinishClick.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(100, 100, 50, 50);
    button1.backgroundColor = [UIColor grayColor];
    button1.name = @"tuijian";
    button1.block = ^{
        NSLog(@"点击了按钮1");
    };
//    button1.currentImageColor = [UIColor redColor];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(250, 100, 50, 50);
    button2.backgroundColor = [UIColor grayColor];
    button2.block = ^{
        NSLog(@"点击了按钮2");
    };
    [self.view addSubview:button2];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
