//
//  ORHotVideoPraiseDataModel.m
//  OrangeVideo
//
//  Created by chenyuan on 2021/2/3.
//

#import "ORHotVideoPraiseDataModel.h"

@implementation ORHotVideoPraiseDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.address = [NSString gnh_addressWithString:ORAddPraiseAddress];
        self.hostType = GNHBaseURLTypeClient;
        self.parseCls = [GNHRootBaseItem class];
        self.isAutoShowNetworkErrorToast = NO;
        self.requestType = MDFRequestTypePost;
    }
    return self;
}

- (AFURLSessionManager *)beforeSendRequest:(AFHTTPSessionManager *)sessionManager
{
    NSDictionary *header = [self httpHeader];
        
    sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];
    sessionManager.responseSerializer = [AFJSONResponseSerializer serializer];
    [sessionManager.requestSerializer setValue:header[ORUserAgentId] forHTTPHeaderField:ORUserAgentId];
    [sessionManager.requestSerializer setValue:header[ORAuthorizationId] forHTTPHeaderField:ORAuthorizationId];
    
    // 全局加密参数
    // 时间
    NSTimeInterval interval = [[NSDate date] timeIntervalSince1970];
    NSInteger timeStamp = interval*1000 ;
    
    NSString *unMd5sign = [NSString stringWithFormat:@"carpVideo_carpASDF4n_%@_%@",@"iOS",@(timeStamp)];
    NSString *sign = unMd5sign.mdf_md5.lowercaseString;
    
    [sessionManager.requestSerializer setValue:@(timeStamp).stringValue forHTTPHeaderField:@"t"];
    [sessionManager.requestSerializer setValue:sign forHTTPHeaderField:@"sign"];

    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html",@"image/png",@"utf-8", @"text/json", @"text/javascript" ,nil];
    
    return sessionManager;
}

- (BOOL)addPraiseWithType:(NSString *)videoId type:(NSString *)type
{
    if (self.isLoading) {
        return NO;
    }
    
    if (!videoId.length) {
        return NO;
    }
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"videoId"] = videoId;
    params[@"type"] = type;
    self.params = params;
    
    return [super load];
}

- (void)handleDataAfterParsed
{
    [super handleDataAfterParsed];
}


@end
