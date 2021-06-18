//
//  CarpVideoDetailTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoBaseTableViewCell.h"
#import "carpVideoRemneAdviceModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoDetailTableViewCellDelegate <NSObject>

-(void)CarpVideoDetailTableViewCellDidSeltecdWithBtnIndex:(NSInteger)btnIndex cellIndex:(NSInteger)CellIndex;

@end
@interface CarpVideoDetailTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,strong) carpVideoRemneAdviceModel * carHotModel;
@property(nonatomic,weak) id <CarpVideoDetailTableViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
