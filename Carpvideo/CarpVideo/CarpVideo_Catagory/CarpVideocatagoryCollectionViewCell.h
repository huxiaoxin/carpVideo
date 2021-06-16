//
//  CarpVideocatagoryCollectionViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import <UIKit/UIKit.h>
#import "CarpVideoCatagoryModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideocatagoryCollectionViewCellDelegate <NSObject>
-(void)CarpVideocatagoryCollectionViewCellWithPlayVideoIndex:(NSInteger)cellIndex; //播放
-(void)CarpVideocatagoryCollectionViewCellWithShare:(NSInteger)cellIndex; //分享
-(void)CarpVideocatagoryCollectionViewCellWithComent:(NSInteger)cellIndex; //评论
-(void)CarpVideocatagoryCollectionViewCellWithLike:(NSInteger)cellIndex; //点赞
-(void)CarpVideocatagoryCollectionViewCellAddFalow:(NSInteger)cellIndex faloowBtn:(UIButton *)falowBtn;
-(void)CarpVideocatagoryCollectionViewCellToChat:(NSInteger)cellIndex; //聊天
@end
@interface CarpVideocatagoryCollectionViewCell : UICollectionViewCell
@property(nonatomic,weak) id <CarpVideocatagoryCollectionViewCellDelegate>delegate;
@property(nonatomic,strong) CarpVideoCatagoryModel  * carpVideoModel;
@end

NS_ASSUME_NONNULL_END
