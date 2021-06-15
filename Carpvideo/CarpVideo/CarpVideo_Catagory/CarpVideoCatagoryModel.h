//
//  CarpVideoCatagoryModel.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoCatagoryModel : NSObject
@property(nonatomic,copy)   NSString * imgIcon; //头像
@property(nonatomic,copy)   NSString * userName; //名字
@property(nonatomic,copy)   NSString * title; //标题
@property(nonatomic,copy)   NSArray  * imgs; //图片集
@property(nonatomic,copy)  NSString  * userlocation;
@property(nonatomic,assign) NSInteger likeNums;
@property(nonatomic,assign) NSInteger shareNums;
@property(nonatomic,assign) BOOL      isLike;
@property(nonatomic,assign) BOOL      isVideo;
@property(nonatomic,assign) BOOL      isFallow;
@property(nonatomic,assign) NSInteger   userID;
@property(nonatomic,copy)   NSString * videoTime;
@property(nonatomic,copy)   NSString * videoUrl;
@property(nonatomic,assign) CGFloat CarpCellHeight;
@property(nonatomic,assign) NSInteger viewsNum;
@end

NS_ASSUME_NONNULL_END
