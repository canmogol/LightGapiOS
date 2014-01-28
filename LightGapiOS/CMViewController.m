//
//  CMViewController.m
//  LightGapiOS
//
//  Created by Can A. MOGOL on 28/01/14.
//  Copyright (c) 2014 Can A. MOGOL. All rights reserved.
//

#import "CMViewController.h"

@interface CMViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation CMViewController

@synthesize webView;

- (void)viewDidLoad
{
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"html"];
    NSString *html = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    
    [[webView scrollView] setBounces: NO];
    [webView loadHTMLString:html baseURL:baseURL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
