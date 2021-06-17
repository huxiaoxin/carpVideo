//
//  CarpVideoAdViceTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoAdViceTableViewCellDelegate <NSObject>

-(void)CarpVideoAdViceTableViewCellWriteActionWithIndex:(NSInteger)CellIndex;

@end
@interface CarpVideoAdViceTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,weak) id <CarpVideoAdViceTableViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
