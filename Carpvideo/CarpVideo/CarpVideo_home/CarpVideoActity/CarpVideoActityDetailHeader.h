//
//  CarpVideoActityDetailHeader.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import <UIKit/UIKit.h>
#import "carpVideoAcitytyModel.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^CarpVideoActityDetailHeaderHeightBlock)(CGFloat headerHeight);
@interface CarpVideoActityDetailHeader : UIView
@property(nonatomic,copy)   CarpVideoActityDetailHeaderHeightBlock  headerBlock;
@property(nonatomic,strong) carpVideoAcitytyModel * carpModel;
@end

NS_ASSUME_NONNULL_END
