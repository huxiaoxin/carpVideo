//
//  CarpVideoDetailViewController.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoListViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoDetailViewController : CarpVideoListViewController
@property(nonatomic,strong) CarpVideoHomeModels * carpMoel;
@property(nonatomic,assign) BOOL  isShowInput;
@end

NS_ASSUME_NONNULL_END
