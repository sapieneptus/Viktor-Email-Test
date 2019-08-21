//
//  ViewController.m
//  ViktorEmailTestObjc
//
//  Created by Chris Fuentes on 8/20/19.
//  Copyright © 2019 chrisf.io. All rights reserved.
//

#import "ViewController.h"
@import WebKit;

@interface ViewController ()
@property (strong, nonatomic) IBOutlet WKWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *url = [NSURL URLWithString:@"https://<URL_GOES_HERE>"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}


@end
