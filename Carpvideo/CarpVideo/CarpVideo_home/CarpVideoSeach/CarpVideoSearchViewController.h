//
//  CarpVideoSearchViewController.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoListViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoSearchViewController : CarpVideoListViewController
@property(nonatomic,copy) NSString * CarpSearText;
@property(nonatomic,assign) NSInteger  CarpSearID;

@end

NS_ASSUME_NONNULL_END
