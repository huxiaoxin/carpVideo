//
//  CarpVideoCatagoryDetailHeader.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import <UIKit/UIKit.h>
#import "CarpVideoCatagoryModel.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^CarpVideoCatagoryDetailAction)(NSInteger index);
typedef void(^CarpVideoCatagoryHeaderHeight)(CGFloat  headerHeight);

@interface CarpVideoCatagoryDetailHeader : UIView
@property(nonatomic,copy)  CarpVideoCatagoryHeaderHeight headerHeightBlock;
-(instancetype)initWithFrame:(CGRect)frame cobfigerationModel:(CarpVideoCatagoryModel * )carpModel CarpVideoCatagoryDetailActionBlokc:(CarpVideoCatagoryDetailAction)btnIndexBlock;
@end

NS_ASSUME_NONNULL_END
