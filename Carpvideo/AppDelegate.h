//
//  AppDelegate.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/4.
//

#import <UIKit/UIKit.h>
#import "CarpVideoBaseTabbarViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property(nonatomic,strong) UIWindow * window;
@property(nonatomic,strong) CarpVideoBaseTabbarViewController * CarpVideoTabbar;
+ (AppDelegate *)shareDelegate;

@end

