//
//  CarpVieoBangdanHeaderView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVieoBangdanHeaderView.h"
@interface CarpVieoBangdanHeaderView ()
@property(nonatomic,strong) UIImageView * CarpBangdanBackImgView;
@end
@implementation CarpVieoBangdanHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = LGDMianColor;
        [self addSubview:self.CarpBangdanBackImgView];
        [_CarpBangdanBackImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(self);
            make.height.mas_equalTo(RealWidth(200));
        }];
        
        UIView * CarpVideoTopContentView = [UIView new];
        CarpVideoTopContentView.backgroundColor = LGDViewBJColor;
        
        [self addSubview:CarpVideoTopContentView];
        [CarpVideoTopContentView acs_radiusWithRadius:RealWidth(15) corner:UIRectCornerTopLeft | UIRectCornerTopRight];

        [CarpVideoTopContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(_CarpBangdanBackImgView.mas_bottom).offset(-RealWidth(25));
            make.height.mas_equalTo(RealWidth(25));
        }];
    }
    return self;
}
- (UIImageView *)CarpBangdanBackImgView{
    if (!_CarpBangdanBackImgView) {
        _CarpBangdanBackImgView = [UIImageView new];
        _CarpBangdanBackImgView.image = [UIImage imageNamed:@"bandan"];
    }
    return _CarpBangdanBackImgView;
}
@end
