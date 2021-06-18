//
//  CarpVideoAdViceTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoBaseTableViewCell.h"
#import "CarpVideoHomeModels.h"
NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoAdViceTableViewCellDelegate <NSObject>

-(void)CarpVideoAdViceTableViewCellWriteActionWithIndex:(NSInteger)CellIndex;

@end
@interface CarpVideoAdViceTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,weak) id <CarpVideoAdViceTableViewCellDelegate>delegate;
@property(nonatomic,strong) CarpVideoHomeModels *  carpMoel;
@end

NS_ASSUME_NONNULL_END
