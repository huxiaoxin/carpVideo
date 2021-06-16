//
//  LKWebsiteEditTopView.m
//  cltios
//
//  Created by zjlk03 on 2021/5/25.
//

#import "LKWebsiteEditTopView.h"
@interface LKWebsiteEditTopView ()
@property(nonatomic,strong) UIView  * LKContentView;
@property(nonatomic,strong) UILabel * LKToplb;
@property(nonatomic,strong) UILabel * LKBtomlb;
@end
@implementation LKWebsiteEditTopView
-(instancetype)initWithFrame:(CGRect)frame configurationWithTopTitle:(NSString *)topText DetailInfo:(NSString *)detailText{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.LKContentView];
        [_LKContentView addSubview:self.LKToplb];
        
        [_LKContentView addSubview:self.LKBtomlb];
        
        [_LKToplb setText:topText];
        [_LKBtomlb setText:detailText];
        
        [_LKContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.inset(RealWidth(10));
            make.top.mas_equalTo(RealWidth(17));
            make.bottom.mas_equalTo(_LKBtomlb.mas_bottom).offset(RealWidth(10));
        }];
        
        [_LKToplb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.inset(RealWidth(20));
            make.top.mas_equalTo(RealWidth(17));
        }];
        [_LKBtomlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.inset(RealWidth(20));
            make.top.mas_equalTo(_LKToplb.mas_bottom).offset(RealWidth(7));
        }];
        
    

        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setNeedsLayout];
            [self layoutIfNeeded];
//            self.headerheightBlock(CGRectGetMaxY(self->_LKContentView.frame)+RealWidth(10));
        });
        
        
    }
    return self;
}
-(CGFloat)LkwebsiteHeaderHeight{
  [self setNeedsLayout];
    [self layoutIfNeeded];
    return CGRectGetMaxY(_LKContentView.frame)+RealWidth(10);
}
- (UIView *)LKContentView{
    if (!_LKContentView) {
        _LKContentView = [UIView new];
        _LKContentView.backgroundColor = [UIColor colorWithHexString:@"FC305A" Alpha:0.1];
        _LKContentView.layer.cornerRadius = 6;
        _LKContentView.layer.masksToBounds = YES;
    }
    return _LKContentView;
}
- (UILabel *)LKToplb{
    if (!_LKToplb) {
        _LKToplb =  [UILabel new];
        _LKToplb.font =KBlFont(18);
        _LKToplb.textColor = LGDMianColor;
//        _LKToplb.text = @"完善个人简介";
    }
    return _LKToplb;
}
- (UILabel *)LKBtomlb{
    if (!_LKBtomlb) {
        _LKBtomlb =[UILabel new];
        _LKBtomlb.numberOfLines = 0;
        _LKBtomlb.font = [UIFont systemFontOfSize:12];
        _LKBtomlb.textColor = [UIColor colorWithHexString:@"FC305A" Alpha:1];
//        _LKBtomlb.text = @"让好友更快的认识你";

    }
    return _LKBtomlb;
}
@end
