//
//  CarpVideoMessageHeaderView.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^CarpVideoMessageTap)(NSInteger index);
@interface CarpVideoMessageHeaderView : UIView
-(instancetype)initWithFrame:(CGRect)frame Configugration:(CarpVideoMessageTap )messageBlock;
@end

NS_ASSUME_NONNULL_END
