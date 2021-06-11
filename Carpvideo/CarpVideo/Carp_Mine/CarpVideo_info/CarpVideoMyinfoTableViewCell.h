//
//  CarpVideoMyinfoTableViewCell.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoMyinfoTableViewCell : CarpVideoBaseTableViewCell
@property(nonatomic,strong) UIImageView * CarpVideouserHeaderImgView;
@property(nonatomic,strong) UILabel   * carpVideouserNamelb;
-(void)CarpVideoMyinfoTableViewCellConfiguarWithIndexPath:(NSIndexPath * )indexPath;
@end

NS_ASSUME_NONNULL_END
