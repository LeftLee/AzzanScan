//
//  BLScanController.m
//  AzzanScan
//
//  Created by Massunsoft on 17/4/28.
//  Copyright © 2017年 Azzan. All rights reserved.
//

#import "BLScanController.h"
#import <AVFoundation/AVFoundation.h>
#import "BLScanView.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height


@interface BLScanController ()<BLScanViewDelegate>

{
    int line_tag;
    UIView *highlightView;
    NSString *scanMessage;
    BOOL isRequesting;
}

@property (nonatomic,weak) BLScanView *scanV;

@end

@implementation BLScanController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BLScanView *scanV = [[BLScanView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    scanV.delegate = self;
    [self.view addSubview:scanV];
    _scanV = scanV;
}

-(void)getScanDataString:(NSString*)scanDataString{
    
    NSLog(@"二维码内容：%@",scanDataString);
    
}




@end
