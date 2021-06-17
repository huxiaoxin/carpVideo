//
//  CarpVideoDetaillb.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoDetaillb.h"

@implementation CarpVideoDetaillb
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  =[super initWithFrame:frame]) {
        [self addSubview:self.CarpVideoToplb];
        [self addSubview:self.CarpVideoBtomlb];
        [_CarpVideoToplb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.top.mas_equalTo(self);
        }];
        
        [_CarpVideoBtomlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.top.mas_equalTo(_CarpVideoToplb.mas_bottom).offset(RealWidth(5));
        }];
    }
    return self;
}
- (UILabel *)CarpVideoToplb{
    if (!_CarpVideoToplb) {
        _CarpVideoToplb =  [UILabel new];
        _CarpVideoToplb.textAlignment = NSTextAlignmentCenter;
        _CarpVideoToplb.font = [UIFont boldSystemFontOfSize:17];
        _CarpVideoToplb.textColor = LGDMianColor;
    }
    return _CarpVideoToplb;
}
- (UILabel *)CarpVideoBtomlb{
    if (!_CarpVideoBtomlb) {
        _CarpVideoBtomlb =  [UILabel new];
        _CarpVideoBtomlb.textAlignment = NSTextAlignmentCenter;
        _CarpVideoBtomlb.font = [UIFont boldSystemFontOfSize:12];
        _CarpVideoBtomlb.textColor = LGDGaryColor;
    }
    return _CarpVideoBtomlb;
}
@end
