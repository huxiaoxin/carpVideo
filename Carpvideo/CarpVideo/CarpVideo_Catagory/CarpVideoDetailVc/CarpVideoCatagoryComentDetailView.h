//
//  CarpVideoCatagoryComentDetailView.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^CoementTextSendBlock)(NSString * text);
@interface CarpVideoCatagoryComentDetailView : UIView
-(instancetype)initWithFrame:(CGRect)frame CoementTextSendConfiguar:(CoementTextSendBlock)sendBlock;
@end

NS_ASSUME_NONNULL_END
