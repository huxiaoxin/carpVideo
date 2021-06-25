//
//  CarpVideoAboutusViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoAboutusViewController.h"
#import <WebKit/WebKit.h>
@interface CarpVideoAboutusViewController ()

@end

@implementation CarpVideoAboutusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"关于我们";
    WKWebViewConfiguration * CarpVideoConfigar  = [[WKWebViewConfiguration alloc]init];
    WKWebView * CarpVideoWebs = [[WKWebView alloc]initWithFrame:CGRectMake(0, NaviH, SCREEN_Width, SCREEN_Height-NaviH-GK_SAFEAREA_BTM) configuration:CarpVideoConfigar];
    CarpVideoWebs.scrollView.showsVerticalScrollIndicator =  NO;
    [self.view addSubview:CarpVideoWebs];
    NSString * FilmFacoStr  = [[NSBundle mainBundle] pathForResource:@"Carpvideo" ofType:@"html"];
    [CarpVideoWebs loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:FilmFacoStr]]];
    
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
