//
//  CarpVideoListViewController.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "GNHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoListViewController : GNHBaseViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView * _CarpVideoTableView;
    
}
-(void)CarpVideoShowLoginVc;
@end

NS_ASSUME_NONNULL_END
