//
//  CarpVideoAcityTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/16.
//

#import "CarpVideoBaseTableViewCell.h"
#import "carpVideoAcitytyModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoAcityTableViewCellDelegate <NSObject>

-(void)CarpVideoAcityTableViewCellWithIndex:(NSInteger)cellIndex;

@end
@interface CarpVideoAcityTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,strong) carpVideoAcitytyModel * carpModel;
@property(nonatomic,weak) id <CarpVideoAcityTableViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
