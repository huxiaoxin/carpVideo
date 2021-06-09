//
//  LKWebsiteEditCollectionViewCell.h
//  cltios
//
//  Created by zjlk03 on 2021/5/26.
//

#import "LKCollectionBaseCell.h"
#import "LKWebsiteEditModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol LKWebsiteEditCollectionViewCellDelegate <NSObject>

-(void)LKWebsiteEditCollectionViewCellDidDeleteImgViewWithCellIndex:(NSInteger)cellIndex;
@end
@interface LKWebsiteEditCollectionViewCell : LKCollectionBaseCell
@property(nonatomic,strong) LKWebsiteEditModel * editModel;
@property(nonatomic,strong) UIImageView * LKThubImgView;
@property(nonatomic,weak) id <LKWebsiteEditCollectionViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
