//
//  CarpVideoMineHeaderView.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoMineHeaderViewDelegate <NSObject>
-(void)CarpVideoMineHeaderViewBtnDidClickIndex:(NSInteger)btnIndex;
-(void)CarpVideoMineHeaderViewTapInfoClicks;
@end
@interface CarpVideoMineHeaderView : UIView
@property(nonatomic,strong) UILabel     * CarpVideoNamelb;
@property(nonatomic,strong) UILabel     * CarpVideoDetailb;
@property(nonatomic,strong) UIImageView * CarpVideouserImgView;
@property(nonatomic,weak) id <CarpVideoMineHeaderViewDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
