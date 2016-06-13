//
//  ViewController.m
//  StudySystem
//
//  Created by apple on 15/11/6.
//  Copyright (c) 2015年 Fabius's Studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //加载网页
    NSURL *url=[NSURL URLWithString:@"http://219.139.241.120:8080/Default.html"];
    NSURLRequest *request=[[NSURLRequest alloc] initWithURL:url];
    webView.scrollView.bounces=NO;
    webView.delegate=self;
    [webView loadRequest:request];
    
    //是否与用户交互（即用户能不能控制webview）
    [webView setUserInteractionEnabled:YES];
}


//开始加载的时候执行该方法。
- (void)webViewDidStartLoad:(UIWebView *)webView{
    
    //创建UIActivityIndicatorView背底半透明View
    UIView *view = [[UIView alloc] initWithFrame:self.view.frame];
    [view setBackgroundColor:[UIColor blackColor]];
    view.tag=108;
    [view setAlpha:0.3];
    [self.view addSubview:view];
    
    activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 62.0f, 62.0f)];
    [activityIndicator setCenter:view.center];
    [activityIndicator setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];
    [view addSubview:activityIndicator];
    
    [activityIndicator startAnimating];
    
}
//加载完成的时候执行该方法。
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [activityIndicator stopAnimating];
    UIView *view = (UIView*)[self.view viewWithTag:108];
    [view removeFromSuperview];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
