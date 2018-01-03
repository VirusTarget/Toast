//
//  ViewController.m
//  Toast
//
//  Created by jkc on 16/5/23.
//  Copyright © 2016年 cjt. All rights reserved.
//

#import "ViewController.h"
#import "toast.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)show {
    toastString(@"1111111");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
