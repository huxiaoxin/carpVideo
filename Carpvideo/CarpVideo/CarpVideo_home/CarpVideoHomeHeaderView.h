//
//  CarpVideoHomeHeaderView.h
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol CarpVideoHomeHeaderViewDelegate <NSObject>

-(void)CarpVideoHomeHeaderViewMoreDayAction;
-(void)CarpVideoHomeHeaderViewSearchAction;
-(void)CarpVideoHomeHeaderViewWithbtnIndex:(NSInteger)btnIndex;
-(void)CarpVideoHomeHeaderViewWitBanarDidIndex:(NSInteger)banarIndex;
-(void)CarpVideoHomeHeaderViewCollectionDidSelecWith:(CarpVideoHomeModels *)mdoel;
@end
@interface CarpVideoHomeHeaderView : UIView
@property(nonatomic,weak) id <CarpVideoHomeHeaderViewDelegate>delegate;
@property(nonatomic,copy) NSArray * VideoDataArr;
@property(nonatomic,copy) NSArray * BanarArr;
@end

NS_ASSUME_NONNULL_END
