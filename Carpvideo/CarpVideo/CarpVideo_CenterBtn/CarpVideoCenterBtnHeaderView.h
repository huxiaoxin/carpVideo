//
//  CarpVideoZoneHeaderView.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import <UIKit/UIKit.h>
#import "LKWebsiteEditTopView.h"
#import <UITextView+ZWPlaceHolder.h>
#import <UITextView+ZWLimitCounter.h>
#import "LKWebsiteEditCollectionView.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^HeaderViewHeightBlock)(CGFloat currentHeight);

@interface CarpVideoCenterBtnHeaderView : UIView
@property(nonatomic,copy) HeaderViewHeightBlock currentHeightBlock;
@property(nonatomic,strong) LKWebsiteEditTopView * carpEditTopView;
@property(nonatomic,strong) LKWebsiteEditCollectionView * LKCollectionView;
@property(nonatomic,strong)  UITextView  * CarpVideoTextView;
-(void)CarpVideoCenterBtnHeaderViewResetData;
@end

NS_ASSUME_NONNULL_END
