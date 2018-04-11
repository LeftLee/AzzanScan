//
//  ViewController.m
//  AzzanScan
//
//  Created by Massunsoft on 17/4/28.
//  Copyright © 2017年 Azzan. All rights reserved.
//

#import "ViewController.h"
#import "BLScanController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 80, 40);
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"开始扫码" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(startScan) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

-(void)startScan{
    
    BLScanController *scanView = [[BLScanController alloc]init];
    
    [self.navigationController pushViewController:scanView animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
