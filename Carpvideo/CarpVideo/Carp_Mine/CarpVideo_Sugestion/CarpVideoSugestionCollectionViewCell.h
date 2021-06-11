//
//  CarpVideoSugestionCollectionViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "LKCollectionBaseCell.h"
#import "CarpVideoSugestionModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoSugestionCollectionViewCell : LKCollectionBaseCell
@property(nonatomic,strong) CarpVideoSugestionModel * sugestionModel;
@end

NS_ASSUME_NONNULL_END
