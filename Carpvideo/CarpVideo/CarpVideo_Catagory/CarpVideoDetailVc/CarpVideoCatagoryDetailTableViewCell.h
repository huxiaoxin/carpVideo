//
//  CarpVideoCatagoryDetailTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "CarpVideoBaseTableViewCell.h"
#import "CarpVideoCatagoryDetailModel.h"
NS_ASSUME_NONNULL_BEGIN

@protocol CarpVideoCatagoryDetailTableViewCellDelegate <NSObject>

-(void)CarpVideoCatagoryDetailTableViewCellDidSeltecdWithModel:(CarpVideoCatagoryDetailModel *)detailMoel btnIndex:(NSInteger)btnIndex;

@end
@interface CarpVideoCatagoryDetailTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,strong) CarpVideoCatagoryDetailModel * dertailModel;
@property(nonatomic,weak) id <CarpVideoCatagoryDetailTableViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
