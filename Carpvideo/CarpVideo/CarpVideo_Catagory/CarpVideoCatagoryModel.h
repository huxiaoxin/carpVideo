//
//  CarpVideoCatagoryModel.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoCatagoryModel : NSObject
@property(nonatomic,copy)   NSString * imgIcon;
@property(nonatomic,copy)   NSString * userName;
@property(nonatomic,copy)   NSString * title;
@property(nonatomic,copy)   NSArray  * imgs;
@property(nonatomic,assign) NSInteger likeNums;
@property(nonatomic,assign) NSInteger shareNums;
@property(nonatomic,assign) BOOL      isLike;
@property(nonatomic,assign) BOOL      isVideo;
@property(nonatomic,copy)   NSString *  userID;
@property(nonatomic,copy)   NSString * videoTime;
@property(nonatomic,copy)   NSString * videoUrl;
@property(nonatomic,assign) CGFloat CarpCellHeight;
@end

NS_ASSUME_NONNULL_END
