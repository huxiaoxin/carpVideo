//
//  CarpVideoListViewController.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import <GKNavigationBarViewController/GKNavigationBarViewController.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoListViewController : GKNavigationBarViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView * _CarpVideoTableView;
    
}

@end

NS_ASSUME_NONNULL_END
