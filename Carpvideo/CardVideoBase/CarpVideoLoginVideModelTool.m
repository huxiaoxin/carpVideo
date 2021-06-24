#import "CarpVideoLoginVideModelTool.h"

@implementation CarpVideoLoginVideModelTool
+(void)CarpVideoLoginViewModel_loginSucced{
    [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"Carpvideo"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+(void)CarpVideoLoginViewModel_loginOut{
    [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"Carpvideo"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+(BOOL)CarpVideoLoginViewModel_isLogin{
    NSString * carpVideo_isloginStatus = [[NSUserDefaults standardUserDefaults] objectForKey:@"Carpvideo"];
    return [carpVideo_isloginStatus boolValue];
    
}
+(NSString *)CarpVideoLogonViewModel_userName{
    NSString * userNmae = [[NSUserDefaults standardUserDefaults] objectForKey:@"CarpvideoName"];
    return userNmae.length == 0 ? @"关耳羊羽" : userNmae;
}
@end
