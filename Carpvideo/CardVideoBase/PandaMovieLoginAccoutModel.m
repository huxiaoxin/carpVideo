#import "PandaMovieLoginAccoutModel.h"

@implementation PandaMovieLoginAccoutModel
+(void)PandaMovieLoginsuccedAction{
    [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"PandaMoview"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+(void)PandaMoviewLoginOutAction{
    [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"PandaMoview"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+(BOOL)PandaMoviewuserIsLogin{
    NSString * filmFacotry_islogin = [[NSUserDefaults standardUserDefaults] objectForKey:@"PandaMoview"];
    return [filmFacotry_islogin boolValue];
    
}
+(NSString *)PandaMoViewgetuserName{
    NSString * userNmae = [[NSUserDefaults standardUserDefaults] objectForKey:@"PandaMovieName"];
    return userNmae.length == 0 ? @"精钢芭比🐰" : userNmae;
}
@end
