//
//  CarpVideoCatagoryDetailModel.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoCatagoryDetailModel : NSObject
@property(nonatomic,copy)   NSString  *  userImgurl;
@property(nonatomic,copy)   NSString  *  userNameText;
@property(nonatomic,copy)   NSString  *  time;
@property(nonatomic,assign) NSInteger    catagoryID;
@property(nonatomic,assign) NSInteger    comentID;
@property(nonatomic,copy)   NSString  *  Content;
@property(nonatomic,assign) CGFloat      CellHeight;
 @end

NS_ASSUME_NONNULL_END
