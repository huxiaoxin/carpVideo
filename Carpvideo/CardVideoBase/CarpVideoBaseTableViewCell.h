//
//  CarpVideoBaseTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoBaseTableViewCell : UITableViewCell
+(id)createCellWithTheTableView:(UITableView *)tableView AndTheIndexPath:(NSIndexPath *)indexPath;
-(void)setContentUI;
@end

NS_ASSUME_NONNULL_END
