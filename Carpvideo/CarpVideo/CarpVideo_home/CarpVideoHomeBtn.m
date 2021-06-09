//
//  CarpVideoHomeBtn.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoHomeBtn.h"

@implementation CarpVideoHomeBtn
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  = [super initWithFrame:frame]) {
        [self addSubview:self.CarpVideoTopImgView];
        [self addSubview:self.CarpVideoBtomlb];
    }
    return self;
}
- (UIImageView *)CarpVideoTopImgView{
    if (!_CarpVideoTopImgView) {
        _CarpVideoTopImgView = [UIImageView new];
        _CarpVideoTopImgView.backgroundColor = LGDMianColor;
    }
    return _CarpVideoTopImgView;
}
-(UILabel *)CarpVideoBtomlb{
    if (!_CarpVideoBtomlb) {
        _CarpVideoBtomlb = [UILabel new];
        _CarpVideoBtomlb.textAlignment = NSTextAlignmentCenter;
        _CarpVideoBtomlb.font =  KBlFont(14);
        _CarpVideoBtomlb.textColor = LGDLightBLackColor;
    }
    return _CarpVideoBtomlb;
}
-(void)layoutSubviews{
    _CarpVideoTopImgView.frame = CGRectMake(self.bounds.size.width/2-RealWidth(20), RealWidth(10), RealWidth(40), RealWidth(40));
    _CarpVideoBtomlb.frame = CGRectMake(0, CGRectGetMaxY(_CarpVideoTopImgView.frame)+RealWidth(5), self.bounds.size.width, RealWidth(15));
}
@end
