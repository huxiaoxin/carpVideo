//
//  CarpVideoMessageTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import "CarpVideoBaseTableViewCell.h"
#import "carpVideoMessageModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoMessageTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,strong) carpVideoMessageModel * carpModel;
@end

NS_ASSUME_NONNULL_END
