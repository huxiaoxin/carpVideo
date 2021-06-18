//
//  CarpVideoDetailHeaderView.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import <UIKit/UIKit.h>
#import "CarpVideoCatagoryBtn.h"
NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoDetailHeaderViewDelegate <NSObject>
-(void)CarpVideoDetailHeaderViewWithColltecd:(CarpVideoCatagoryBtn *)btn;
@end
typedef void(^CarpVideoHeaderBlock)(CGFloat headerHeight);
@interface CarpVideoDetailHeaderView : UIView
@property(nonatomic,strong) CarpVideoHomeModels * carMoell;
@property(nonatomic,copy) CarpVideoHeaderBlock haederBlock;
@property(nonatomic,weak) id <CarpVideoDetailHeaderViewDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
