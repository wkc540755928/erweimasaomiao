//
//  MyViewController.m
//  扫描
//
//  Created by 吴柯成 on 15/12/25.
//  Copyright © 2015年 com.tzyj.iphone64. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
{
    
    UIWebView *webview;

}

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self performSelectorOnMainThread:@selector(showWebView) withObject:nil waitUntilDone:YES];
    
}


-(void)showWebView
{
    
    webview = [[UIWebView alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-20)];
    
    [self.view addSubview:webview];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:self.url_01];
    
    [webview loadRequest:request];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
