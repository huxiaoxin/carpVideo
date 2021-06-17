//
//  CarpVideoActityDetailHeader.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoActityDetailHeader.h"
@interface CarpVideoActityDetailHeader  ()
@property(nonatomic,strong) UIImageView * CarpVideoImgView;
@property(nonatomic,strong) UIView      * CarVideoContentView;
@property(nonatomic,strong) UILabel     * CarpVideoTtitle;
@property(nonatomic,strong) UIImageView * CarVieoJinxingzhonImgView;
@property(nonatomic,strong) UILabel     * CarVideoJXZlb;
@property(nonatomic,strong) UILabel     * CarVideoContenlb;
@property(nonatomic,strong) UIProgressView * CarpVideoProgresView;
@property(nonatomic,strong) UILabel     * CarpVideoSYlb;
@property(nonatomic,strong) UILabel     * CarpVideoSYNumlb;

@end
@implementation CarpVideoActityDetailHeader
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = LGDMianColor;
        [self addSubview:self.CarpVideoImgView];
        [self addSubview:self.CarVideoContentView];
        [_CarVideoContentView addSubview:self.CarpVideoTtitle];
        [_CarVideoContentView addSubview:self.CarVieoJinxingzhonImgView];
        [_CarVieoJinxingzhonImgView addSubview:self.CarVideoJXZlb];
        [_CarVideoContentView addSubview:self.CarVideoContenlb];
        [_CarVideoContentView addSubview:self.CarpVideoProgresView];
        [_CarVideoContentView addSubview:self.CarpVideoSYlb];
        [_CarVideoContentView addSubview:self.CarpVideoSYNumlb];
        
        [_CarpVideoImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(self);
            make.height.mas_equalTo(RealWidth(120)+GK_SAFEAREA_TOP);
        }];
        
        [_CarVideoContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(_CarpVideoImgView.mas_bottom).offset(-RealWidth(20));
            make.height.mas_equalTo(RealWidth(180));
        }];
        [_CarpVideoTtitle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(_CarVideoContentView.mas_centerX).offset(RealWidth(25));
            make.top.mas_equalTo(RealWidth(20));
        }];
        [_CarVieoJinxingzhonImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(_CarpVideoTtitle.mas_left).offset(-RealWidth(5));
            make.centerY.mas_equalTo(_CarpVideoTtitle.mas_centerY);
            make.size.mas_equalTo(CGSizeMake(RealWidth(50), RealWidth(19)));
        }];
        [_CarVideoJXZlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(_CarVieoJinxingzhonImgView);
        
        }];
        [_CarVideoContenlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(10));
            make.top.mas_equalTo(_CarpVideoTtitle.mas_bottom).offset(RealWidth(10));
        }];
        
        [_CarpVideoProgresView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(15));
            make.top.mas_equalTo(_CarVideoContenlb.mas_bottom).offset(RealWidth(20));
            make.width.mas_equalTo(RealWidth(120));
        }];
        
        [_CarpVideoSYlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideoProgresView.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_CarpVideoProgresView.mas_centerY);
        }];
        [_CarpVideoSYNumlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideoSYlb.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_CarpVideoProgresView.mas_centerY);
        }];
        [self setNeedsLayout];
        [self layoutIfNeeded];
        _CarpVideoProgresView.layer.cornerRadius = _CarpVideoProgresView.height/2;

    }
    return self;
}
- (UIImageView *)CarpVideoImgView{
    if (!_CarpVideoImgView) {
        _CarpVideoImgView = [UIImageView new];
        [_CarpVideoImgView sd_setImageWithURL:[NSURL URLWithString:@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2017%2F1217%2Fbook144628%2F144627049.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1626506754&t=afd999788957d2bd25de13ee43b8e2c6"]];
    }
    return _CarpVideoImgView;
}
- (UIView *)CarVideoContentView{
    if (!_CarVideoContentView) {
        _CarVideoContentView = [UIView new];
        _CarVideoContentView.backgroundColor = LGDLightGaryColor;
        [_CarVideoContentView acs_radiusWithRadius:RealWidth(15) corner:UIRectCornerTopLeft | UIRectCornerTopRight];
    }
    return _CarVideoContentView;
}
- (UILabel *)CarpVideoTtitle{
    if (!_CarpVideoTtitle) {
        _CarpVideoTtitle = [UILabel new];
        _CarpVideoTtitle.textColor = LGDBLackColor;
        _CarpVideoTtitle.font = [UIFont boldSystemFontOfSize:15];
        _CarpVideoTtitle.text = @"ekqyeiuqyteukawtyeiuqwtueqtwietqo";
    }
    return _CarpVideoTtitle;
}
- (UIImageView *)CarVieoJinxingzhonImgView{
    if (!_CarVieoJinxingzhonImgView) {
        _CarVieoJinxingzhonImgView = [UIImageView new];
        _CarVieoJinxingzhonImgView.image = [UIImage imageNamed:@"jinhangzhong"];
    }
    return _CarVieoJinxingzhonImgView;
}
- (UILabel *)CarVideoJXZlb{
    if (!_CarVideoJXZlb) {
        _CarVideoJXZlb = [UILabel new];
        _CarVideoJXZlb.textColor = [UIColor whiteColor];
        _CarVideoJXZlb.font = [UIFont boldSystemFontOfSize:12];
        _CarVideoJXZlb.text = @"进行中";
    }
    return _CarVideoJXZlb;
}
- (UILabel *)CarVideoContenlb{
    if (!_CarVideoContenlb) {
        _CarVideoContenlb = [UILabel new];
        _CarVideoContenlb.textColor = LGDGaryColor;
        _CarVideoContenlb.font = [UIFont boldSystemFontOfSize:13];
        _CarVideoContenlb.numberOfLines = 0 ;
        [_CarVideoContenlb setText:@"31232142482364826`48257452374652763457285831232142482364826`4825745237465276345728587231232142482364826`4825745237465276345728587231232142482364826`4825745237465276345728587272" lineSpacing:RealWidth(3)];
        
    }
    return _CarVideoContenlb;
}
- (UIProgressView *)CarpVideoProgresView{
    if (!_CarpVideoProgresView) {
        _CarpVideoProgresView = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
        _CarpVideoProgresView.tintColor = LGDMianColor;
        _CarpVideoProgresView.backgroundColor = LGDGaryColor;
        [_CarpVideoProgresView setProgress:.5 animated:YES];
        _CarpVideoProgresView.layer.masksToBounds = YES;
    }
    return _CarpVideoProgresView;
}
- (UILabel *)CarpVideoSYlb{
    if (!_CarpVideoSYlb) {
        _CarpVideoSYlb = [UILabel new];
        _CarpVideoSYlb.text  =@"剩余名额:";
        _CarpVideoSYlb.font = [UIFont systemFontOfSize:13];
        _CarpVideoSYlb.textColor = LGDGaryColor;
    }
    return _CarpVideoSYlb;
}
- (UILabel *)CarpVideoSYNumlb{
    if (!_CarpVideoSYNumlb) {
        _CarpVideoSYNumlb = [UILabel new];
        _CarpVideoSYNumlb.textColor = LGDMianColor;
        _CarpVideoSYNumlb.font = KFZPFont(16);
        _CarpVideoSYNumlb.text = @"125";
    }
    return _CarpVideoSYNumlb;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
