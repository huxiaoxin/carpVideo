//
//  CarpVideoMineBtn.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoMineBtn.h"
@interface CarpVideoMineBtn ()

@end
@implementation CarpVideoMineBtn
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.CarpVideoTopImgView];
        [self addSubview:self.CarpVideoBtomlb];
        [_CarpVideoTopImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.top.mas_equalTo(self);
            make.size.mas_equalTo(CGSizeMake(RealWidth(26), RealWidth(26)));
        }];
        [_CarpVideoBtomlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_CarpVideoTopImgView.mas_bottom).offset(RealWidth(5));
            make.centerX.mas_equalTo(self);
        }];
    }
    return self;
}
- (UIImageView *)CarpVideoTopImgView{
    if (!_CarpVideoTopImgView) {
        _CarpVideoTopImgView = [UIImageView new];
    }
    return _CarpVideoTopImgView;
}
-(UILabel *)CarpVideoBtomlb{
    if (!_CarpVideoBtomlb) {
        _CarpVideoBtomlb = [UILabel new];
        _CarpVideoBtomlb.textAlignment = NSTextAlignmentCenter;
        _CarpVideoBtomlb.font = [UIFont systemFontOfSize:12];
        _CarpVideoBtomlb.textColor = LGDBLackColor;
    }
    return _CarpVideoBtomlb;
}
@end
