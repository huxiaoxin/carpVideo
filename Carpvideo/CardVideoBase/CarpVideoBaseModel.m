//
//  CarpVideoBaseModel.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/16.
//

#import "CarpVideoBaseModel.h"

@implementation CarpVideoBaseModel
+(instancetype)BaseinitWithDic:(NSDictionary *)Dic;
{
    return [[self alloc]initWithDictionaryed:Dic];
}
-(instancetype)initWithDictionaryed:(NSDictionary *)dict
{
    if (self =[super init]) {
    [self setValuesForKeysWithDictionary:dict];
    
    }
    return self;
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
   
}
@end
