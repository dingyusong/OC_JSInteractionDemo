//
//  JSCallOCViewController.m
//  OC_JSInteractionDemo
//
//  Created by 丁玉松 on 16/9/2.
//  Copyright © 2016年 Beijing Yingyan Internet Co., Ltd. All rights reserved.
//

#import "JSCallOCViewController.h"
#import <WebKit/WebKit.h>

@interface JSCallOCViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *uiWebView;

@end

@implementation JSCallOCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.109:3000/gbanker.html"]];
    self.uiWebView.delegate = self;
    [self.uiWebView loadRequest:request];
}


-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    
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
