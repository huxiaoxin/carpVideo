//
//  CarpVideoHomeHeaderView.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoHomeHeaderViewDelegate <NSObject>

-(void)CarpVideoHomeHeaderViewMoreDayAction;
-(void)CarpVideoHomeHeaderViewSearchAction;
-(void)CarpVideoHomeHeaderViewWithbtnIndex:(NSInteger)btnIndex;
@end
@interface CarpVideoHomeHeaderView : UIView
@property(nonatomic,weak) id <CarpVideoHomeHeaderViewDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
