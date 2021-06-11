//
//  AppDelegate.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/4.
//

#import "AppDelegate.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
+ (AppDelegate *)shareDelegate
{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}
- (CarpVideoBaseTabbarViewController *)CarpVideoTabbar{
    if (!_CarpVideoTabbar) {
        _CarpVideoTabbar = [[CarpVideoBaseTabbarViewController alloc]init];
    }
    return _CarpVideoTabbar;
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   #pragma mark -- 初始化导航配置
   [self initGKNavConfigers];
    self.window =  [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = self.CarpVideoTabbar;
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
    if (@available(ios 11.0,*)) {
        UIScrollView.appearance.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        UITableView.appearance.estimatedRowHeight = 0;
        UITableView.appearance.estimatedSectionFooterHeight = 0;
        UITableView.appearance.estimatedSectionHeaderHeight = 0;
    }
}

@end
