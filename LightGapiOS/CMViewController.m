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
    NSURLRequest* request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:10];
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
    [[NSURLCache sharedURLCache] removeCachedResponseForRequest:request];
    NSURLCache *sharedCache = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:nil];
    [NSURLCache setSharedURLCache:sharedCache];
    
    [[webView scrollView] setBounces: NO];
    [webView loadRequest:request];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
