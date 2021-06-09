//
//  LKWebsiteEditTopView.h
//  cltios
//
//  Created by zjlk03 on 2021/5/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^headerHeightBlock)(CGFloat currentHeight);
@interface LKWebsiteEditTopView : UIView
@property(nonatomic,copy) headerHeightBlock headerheightBlock;
-(instancetype)initWithFrame:(CGRect)frame configurationWithTopTitle:(NSString *)topText DetailInfo:(NSString *)detailText;

-(CGFloat)LkwebsiteHeaderHeight;
@end

NS_ASSUME_NONNULL_END
