//
//  CarpVideoZoneHeaderView.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^HeaderViewHeightBlock)(CGFloat currentHeight);

@interface CarpVideoCenterBtnHeaderView : UIView
@property(nonatomic,copy) HeaderViewHeightBlock currentHeightBlock;
-(void)CarpVideoCenterBtnHeaderViewResetData;
@end

NS_ASSUME_NONNULL_END
