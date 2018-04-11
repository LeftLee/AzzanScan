//
//  BLScanView.h
//  AzzanScan
//
//  Created by Massunsoft on 17/4/28.
//  Copyright © 2017年 Azzan. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol BLScanViewDelegate <NSObject>

-(void)getScanDataString:(NSString*)scanDataString;

@end


@interface BLScanView : UIView


@property (nonatomic,assign) id<BLScanViewDelegate> delegate;
@property (nonatomic,assign) int scanW; //扫描框的宽

- (void)startRunning; //开始扫描
- (void)stopRunning; //停止扫描


@end
