//
//  ViewController.h
//  StudySystem
//
//  Created by apple on 15/11/6.
//  Copyright (c) 2015年 Fabius's Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>{

    IBOutlet UIWebView *webView;
    
    UIActivityIndicatorView *activityIndicator;

}


@end

