//
//  ViewController.h
//  IOS自带二维扫描类
//
//  Created by mac527 on 15/11/9.
//  Copyright © 2015年 mac527. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVCaptureMetadataOutputObjectsDelegate>


-(BOOL)startReading;
-(void)stopReading;

//捕捉会话
@property (nonatomic, strong) AVCaptureSession *captureSession;
//展示layer
@property (nonatomic, strong) AVCaptureVideoPreviewLayer *videoPreviewLayer;
@property(nonatomic, assign)BOOL isReading;
@property (strong, nonatomic) UIView *boxView;
@property (strong, nonatomic) CALayer *scanLayer;

@property (strong, nonatomic)  UIView *viewPreview;
@property (strong, nonatomic)  UILabel *lblStatus;
@property (strong, nonatomic)  UIButton *startBtn;
- (void)startStopReading:(id)sender;



@end