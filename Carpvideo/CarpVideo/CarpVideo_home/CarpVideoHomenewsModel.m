//
//  ShuyunHomeNewsModel.m
//  ShuyunSport
//
//  Created by codehzx on 2021/2/15.
//

#import "CarpVideoHomenewsModel.h"

@implementation CarpVideoHomenewsModel
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"pic"]) {
        self.imgUrl = value;
    }
}
@end
