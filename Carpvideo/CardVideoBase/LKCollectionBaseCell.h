//
//  LKCollectionBaseCell.h
//  cltios
//
//  Created by zjlk32 on 2021/4/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LKCollectionBaseCell : UICollectionViewCell
+(id)creatTheCollectView:(UICollectionView *)collectView AndTheIndexPath:(NSIndexPath *)indexpath;
-(void)setUpTheCell;
@end

NS_ASSUME_NONNULL_END
