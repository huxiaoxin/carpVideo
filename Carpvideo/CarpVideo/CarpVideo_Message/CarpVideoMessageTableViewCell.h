//
//  CarpVideoMessageTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import "CarpVideoBaseTableViewCell.h"
#import "PandaMovieMsgModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoMessageTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,strong) PandaMovieMsgModel * carpModel;
@end

NS_ASSUME_NONNULL_END
