//
//  LKWebsiteEditCollectionView.h
//  cltios
//
//  Created by zjlk03 on 2021/5/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol LKWebsiteEditCollectionViewDelegate <NSObject>



@end
typedef void(^CollectionViewHeightBlock)(CGFloat viewHeight);
@interface LKWebsiteEditCollectionView : UIView
@property(nonatomic,copy) NSArray * dataSoure;
@property(nonatomic,copy) CollectionViewHeightBlock currentViewHeightBlock;
//isShow 计算collectionview的内容高度 YES代表需要减去间隔 NO 默认不处理
-(instancetype)initWithFrame:(CGRect)frame withItemSize:(CGSize)itemSize isShowDisplayline:(BOOL)isShow;
-(void)LKWebsiteEditCollectionViewResetData;
@end

NS_ASSUME_NONNULL_END
