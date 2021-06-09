//
//  LKSavedeleteBtnView.h
//  cltios
//
//  Created by zjlk03 on 2021/6/1.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^BtnViewClickBlock)(NSInteger index);
@interface LKSavedeleteBtnView : UIView
-(instancetype)initWithFrame:(CGRect)frame configurationBtnClick:(BtnViewClickBlock)btnBlock;
@end

NS_ASSUME_NONNULL_END
