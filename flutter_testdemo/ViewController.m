//
//  ViewController.m
//  flutter_testdemo
//
//  Created by jiumao on 2020/5/11.
//  Copyright © 2020 jiumao. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    UIButton *btn = [UIButton new];
    [btn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100.0, 200.0, 100.0, 60.0);
    [self.view addSubview:btn];
}

- (void)buttonAction:(UIButton *)sender {
    FlutterEngine *flutterEngine =
        ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController =
        [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    [self.navigationController pushViewController:flutterViewController animated:YES];
//    [self presentViewController:flutterViewController animated:YES completion:nil];
}

@end
