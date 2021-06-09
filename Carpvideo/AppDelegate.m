//
//  AppDelegate.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/4.
//

#import "AppDelegate.h"
#import "CarpVideoBaseTabbarViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
+ (AppDelegate *)shareDelegate
{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   #pragma mark -- 初始化导航配置
   [self initGKNavConfigers];
    self.window =  [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [NSClassFromString(@"CarpVideoBaseTabbarViewController") new];
    // Override point for customization after application launch.
    return YES;
}
#pragma mark--导航初始化
-(void)initGKNavConfigers{
    GKNavigationBarConfigure *CarpVideoCofigers = [GKNavigationBarConfigure sharedInstance];
    [CarpVideoCofigers setupDefaultConfigure];
    CarpVideoCofigers.backgroundColor = [UIColor whiteColor];
    CarpVideoCofigers.backStyle = GKNavigationBarBackStyleBlack;
    CarpVideoCofigers.titleColor = [UIColor blackColor];
    CarpVideoCofigers.titleFont = KFZPFont(16);
}

@end
