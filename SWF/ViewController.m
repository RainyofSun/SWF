//
//  ViewController.m
//  SWF
//
//  Created by yxkjios on 2017/4/22.
//  Copyright © 2017年 LR. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property(nonatomic,strong)WKWebView* webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.webView];
    self.webView.backgroundColor = [UIColor whiteColor];
    [self loadDocument:@"blc.html"];
}

-(void)loadDocument:(NSString*)htmlName{
    NSString *bundlePath=[[NSBundle mainBundle]bundlePath];
    NSString *path=[bundlePath stringByAppendingPathComponent:htmlName];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSLog(@"%@",url);
//    self.webView.scalesPageToFit=YES;
    [self.webView loadRequest:request];
}

-(WKWebView *)webView{
    if (!_webView) {
        _webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    }
    return _webView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
