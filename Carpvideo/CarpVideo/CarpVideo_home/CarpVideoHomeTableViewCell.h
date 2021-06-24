//
//  CarpVideoHomeTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoBaseTableViewCell.h"
#import "CarpVideoHomenewsModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoHomeTableViewCellDelegate <NSObject>

-(void)CarpVideoHomeTableViewCellDidSeltecdWithCellIndex:(NSInteger)CellIndex;

@end
@interface CarpVideoHomeTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,strong) CarpVideoHomenewsModel * carpNewsModel;
@property(nonatomic,weak) id <CarpVideoHomeTableViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
