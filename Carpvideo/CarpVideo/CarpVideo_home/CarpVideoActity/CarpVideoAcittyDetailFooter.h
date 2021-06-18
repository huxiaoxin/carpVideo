//
//  CarpVideoAcittyDetailFooter.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import <UIKit/UIKit.h>
#import "carpVideoAcitytyModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^CarpVideoAcittyDetailFooterHeightBlock)(CGFloat fotterHeight);
@interface CarpVideoAcittyDetailFooter : UIView
@property(nonatomic,copy) CarpVideoAcittyDetailFooterHeightBlock footerBlock;
@property(nonatomic,strong) carpVideoAcitytyModel * carpModel;

@end

NS_ASSUME_NONNULL_END
