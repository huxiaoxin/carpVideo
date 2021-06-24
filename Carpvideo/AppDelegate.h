//
//  AppDelegate.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/4.
//

#import <UIKit/UIKit.h>
#import "CarpVideoBaseTabbarViewController.h"
#import "ORTabBarController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property(nonatomic,strong) UIWindow * window;
@property(nonatomic,strong) CarpVideoBaseTabbarViewController * CarpVideoTabbar;
@property (nonatomic, assign) BOOL isShouldOrientationMaskAll;
@property (nonatomic, weak, readonly) ORTabBarController *tabBarViewController;
/**< RootViewController */


+ (AppDelegate *)shareDelegate;

@end

