//
//  CarpVideoCenterBtnHeaderView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import "CarpVideoCenterBtnHeaderView.h"

@interface CarpVideoCenterBtnHeaderView ()


@end
@implementation CarpVideoCenterBtnHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.carpEditTopView];
        [_carpEditTopView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(self);
            make.height.mas_equalTo(_carpEditTopView.LkwebsiteHeaderHeight);
        }];
        
        _carpEditTopView.headerheightBlock = ^(CGFloat currentHeight) {
        [self->_carpEditTopView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(currentHeight);
        }];
        };
        
        
        UILabel * CarpBigTitle = [UILabel new];
        CarpBigTitle.text = @"发图文";
        CarpBigTitle.textColor = LGDBLackColor;
        CarpBigTitle.font = KBlFont(15);
        [self addSubview:CarpBigTitle];
        
        [CarpBigTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(15));
            make.top.mas_equalTo(_carpEditTopView.mas_bottom).offset(RealWidth(10));
        }];
        
        
        UIView * carpLineView = [UIView new];
        carpLineView.backgroundColor = LGDViewBJColor;
        [self addSubview:carpLineView];
        [carpLineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(15));
            make.top.mas_equalTo(CarpBigTitle.mas_bottom).offset(RealWidth(10));
            make.height.mas_equalTo(1);
        }];
        
        
        
        UITextView  * CarpVideoTextView  = [[UITextView alloc]initWithFrame:CGRectZero];
        CarpVideoTextView.zw_placeHolder = @"说点什么吧～";
        CarpVideoTextView.zw_placeHolderColor = LGDGaryColor;
        CarpVideoTextView.font = [UIFont systemFontOfSize:15];
        CarpVideoTextView.textColor = LGDBLackColor;
        CarpVideoTextView.zw_limitCount = 250;
        [self addSubview:CarpVideoTextView];
        _CarpVideoTextView = CarpVideoTextView;
        
        [CarpVideoTextView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(15));
            make.top.mas_equalTo(carpLineView.mas_bottom).offset(RealWidth(0));
            make.height.mas_equalTo(RealWidth(100));
        }];
        
        [self addSubview:self.LKCollectionView];
        [_LKCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(CarpVideoTextView.mas_bottom);
            make.left.right.mas_equalTo(self);
            make.height.mas_equalTo(RealWidth(114));
        }];
        [self lkHeaderHeightConfigers];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self lkuptaHeaderViewHeight];
        });
        
        
    }
    return self;
}
-(void)CarpVideoCenterBtnHeaderViewResetData{
    _CarpVideoTextView.text = nil;
    [_LKCollectionView LKWebsiteEditCollectionViewResetData];
}
- (LKWebsiteEditCollectionView *)LKCollectionView{
    if (!_LKCollectionView) {
        _LKCollectionView = [[LKWebsiteEditCollectionView alloc]initWithFrame:CGRectZero withItemSize:CGSizeMake(RealWidth(114), RealWidth(114)) isShowDisplayline:NO];
    }
    return _LKCollectionView;
}
-(void)lkHeaderHeightConfigers{
    
    MJWeakSelf;
    ;

    _LKCollectionView.currentViewHeightBlock = ^(CGFloat viewHeight) {
        [weakSelf setNeedsLayout];
        [weakSelf layoutIfNeeded];
        [weakSelf.LKCollectionView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(viewHeight);
        }];
        [weakSelf lkuptaHeaderViewHeight];
    };
}
-(void)lkuptaHeaderViewHeight{
    [self setNeedsLayout];
    [self layoutIfNeeded];
    self.currentHeightBlock(CGRectGetMaxY(self.LKCollectionView.frame)+RealWidth(10));
}

- (LKWebsiteEditTopView *)carpEditTopView{
    if (!_carpEditTopView) {
        _carpEditTopView = [[LKWebsiteEditTopView alloc]initWithFrame:CGRectZero configurationWithTopTitle:@"发布动态" DetailInfo:@"发布个人动态，展示优秀的自己！"];
    }
    return _carpEditTopView;
}
@end
