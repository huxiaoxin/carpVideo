#import <UIKit/UIKit.h>
@class PandaHotNewsLayoutTool;
@protocol  LMHWaterFallLayoutDeleaget<NSObject>
@required
- (CGFloat)waterFallLayout:(PandaHotNewsLayoutTool *)waterFallLayout heightForItemAtIndexPath:(NSUInteger)indexPath itemWidth:(CGFloat)itemWidth;
@optional
- (NSUInteger)columnCountInWaterFallLayout:(PandaHotNewsLayoutTool *)waterFallLayout;
- (CGFloat)columnMarginInWaterFallLayout:(PandaHotNewsLayoutTool *)waterFallLayout;
- (CGFloat)rowMarginInWaterFallLayout:(PandaHotNewsLayoutTool *)waterFallLayout;
- (UIEdgeInsets)edgeInsetdInWaterFallLayout:(PandaHotNewsLayoutTool *)waterFallLayout;
@end
@interface PandaHotNewsLayoutTool : UICollectionViewLayout
@property (nonatomic, weak) id<LMHWaterFallLayoutDeleaget> delegate;
@end
