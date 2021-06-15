//
//  CarpVideoCatagoryBtn.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "CarpVideoCatagoryBtn.h"

@implementation CarpVideoCatagoryBtn
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  = [super initWithFrame:frame]) {
        [self addSubview:self.CarpVideoThubImgView];
        [self addSubview:self.CarpVideoTitle];
        [_CarpVideoThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self);
            make.left.mas_equalTo(self);
            make.size.mas_equalTo(CGSizeMake(RealWidth(16), RealWidth(16)));
        }];
        [_CarpVideoTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(2));
            make.centerY.mas_equalTo(self);
            
        }];
    }
    return self;
}
-(UILabel *)CarpVideoTitle{
    if (!_CarpVideoTitle) {
        _CarpVideoTitle = [UILabel new];
        _CarpVideoTitle.font = [UIFont systemFontOfSize:12];
        _CarpVideoTitle.textColor = LGDGaryColor;
    }
    return _CarpVideoTitle;
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [UIImageView new];
    }
    return _CarpVideoThubImgView;
}

@end
