//
//  CarpVideoAcityTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/16.
//

#import "CarpVideoAcityTableViewCell.h"
@interface CarpVideoAcityTableViewCell ()
@property(nonatomic,strong) UIView * CarpVideoContentView;
@property(nonatomic,strong) UIImageView * CarpVideoThubImgView;
@property(nonatomic,strong) UILabel     * CarpVideoToplb;
@property(nonatomic,strong) UILabel     * CarpoVideoDetailb;
@property(nonatomic,strong) UIView      * CarpVideoGrenView;
@property(nonatomic,strong) UIView      * CarpVideoRedView;
@property(nonatomic,strong) UILabel     * carpVideoGrenlb;
@property(nonatomic,strong) UILabel     * carpVideoRedlb;
@property(nonatomic,strong) UILabel     * Carpbtomlb;
@property(nonatomic,strong) UIButton    * CarpEnterBtn;
@end
@implementation CarpVideoAcityTableViewCell
-(void)setContentUI{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:self.CarpVideoContentView];
    [_CarpVideoContentView addSubview:self.CarpVideoThubImgView];
    [_CarpVideoContentView addSubview:self.CarpVideoToplb];
    [_CarpVideoContentView addSubview:self.CarpoVideoDetailb];
    [_CarpVideoContentView addSubview:self.CarpVideoGrenView];
    [_CarpVideoContentView addSubview:self.CarpVideoRedView];
    [_CarpVideoContentView addSubview:self.carpVideoGrenlb];
    [_CarpVideoContentView addSubview:self.carpVideoRedlb];
    [_CarpVideoContentView addSubview:self.Carpbtomlb];
    [_CarpVideoContentView addSubview:self.CarpEnterBtn];

    [_CarpVideoContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(RealWidth(5), RealWidth(10), RealWidth(10), RealWidth(10)));
    }];
    [_CarpVideoThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.inset(RealWidth(15));
        make.size.mas_equalTo(CGSizeMake(RealWidth(120), RealWidth(100)));
    }];
    
    [_CarpVideoToplb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(RealWidth(18));
    }];
    
    [_CarpoVideoDetailb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_CarpVideoToplb.mas_bottom).offset(RealWidth(10));
    }];
    [_CarpVideoGrenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_CarpoVideoDetailb.mas_bottom).offset(RealWidth(20));
        make.size.mas_equalTo(CGSizeMake(RealWidth(4), RealWidth(4)));
    }];
    [_CarpVideoRedView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_CarpVideoGrenView.mas_bottom).offset(RealWidth(15));
        make.size.mas_equalTo(CGSizeMake(RealWidth(4), RealWidth(4)));
    }];
    
    [_carpVideoGrenlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoGrenView.mas_right).offset(RealWidth(5));
        make.centerY.mas_equalTo(_CarpVideoGrenView.mas_centerY);
        make.right.mas_equalTo(-RealWidth(5));
    }];
    
    [_carpVideoRedlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoRedView.mas_right).offset(RealWidth(5));
        make.centerY.mas_equalTo(_CarpVideoRedView.mas_centerY);
        make.right.mas_equalTo(-RealWidth(5));
    }];
    
    [_Carpbtomlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(RealWidth(15));
        make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(RealWidth(12));
    }];
    
    [_CarpEnterBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-RealWidth(15));
        make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(RealWidth(12));
        make.size.mas_equalTo(CGSizeMake(RealWidth(60), RealWidth(26)));
    }];
}
- (UIView *)CarpVideoContentView{
    if (!_CarpVideoContentView) {
        _CarpVideoContentView  = [UIView new];
        _CarpVideoContentView.layer.cornerRadius = RealWidth(5);
        _CarpVideoContentView.layer.masksToBounds = YES;
        _CarpVideoContentView.backgroundColor = [UIColor whiteColor];
    }
    return _CarpVideoContentView;
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [UIImageView new];
        _CarpVideoThubImgView.layer.cornerRadius = RealWidth(5);
        _CarpVideoThubImgView.layer.masksToBounds = YES;
        _CarpVideoThubImgView.backgroundColor = LGDLightGaryColor;
    }
    return _CarpVideoThubImgView;
}
- (UILabel *)CarpVideoToplb{
    if (!_CarpVideoToplb) {
        _CarpVideoToplb = [UILabel new];
        _CarpVideoToplb.textColor = LGDBLackColor;
        _CarpVideoToplb.font =  KBlFont(15);
        _CarpVideoToplb.text = @"爱上学习季";
    }
    return _CarpVideoToplb;
}
- (UILabel *)CarpoVideoDetailb{
    if (!_CarpoVideoDetailb) {
        _CarpoVideoDetailb = [UILabel new];
        _CarpoVideoDetailb.textColor = LGDGaryColor;
        _CarpoVideoDetailb.font =  [UIFont systemFontOfSize:12];
        _CarpoVideoDetailb.text = @"快闪CP * 心动狙击";
    }
    return _CarpoVideoDetailb;
}
- (UIView *)CarpVideoGrenView{
    if (!_CarpVideoGrenView) {
        _CarpVideoGrenView = [UIView new];
        _CarpVideoGrenView.backgroundColor = [UIColor colorWithHexString:@"1167ef"];
        _CarpVideoGrenView.layer.cornerRadius = RealWidth(2);
        _CarpVideoGrenView.layer.masksToBounds = YES;
    }
    return _CarpVideoGrenView;
}
- (UIView *)CarpVideoRedView{
    if (!_CarpVideoRedView) {
        _CarpVideoRedView = [UIView new];
        _CarpVideoRedView.backgroundColor = LGDMianColor;
        _CarpVideoRedView.layer.cornerRadius = RealWidth(2);
        _CarpVideoRedView.layer.masksToBounds = YES;
    }
    return _CarpVideoRedView;
}
- (UILabel *)carpVideoGrenlb{
    if (!_carpVideoGrenlb) {
        _carpVideoGrenlb = [UILabel new];
        _carpVideoGrenlb.textColor = LGDLightBLackColor;
        _carpVideoGrenlb.font =  [UIFont systemFontOfSize:12];
        _carpVideoGrenlb.text = @"2020年2月3日～2月21日 12:54:12";
    }
    return _carpVideoGrenlb;
}
- (UILabel *)carpVideoRedlb{
    if (!_carpVideoRedlb) {
        _carpVideoRedlb = [UILabel new];
        _carpVideoRedlb.textColor = LGDLightBLackColor;
        _carpVideoRedlb.font =  [UIFont systemFontOfSize:12];
        _carpVideoRedlb.text = @"上海市杨浦区宁国路百联滨江购物";
    }
    return _carpVideoRedlb;
}
- (UILabel *)Carpbtomlb{
    if (!_Carpbtomlb) {
        _Carpbtomlb = [UILabel new];
        _Carpbtomlb.textColor = LGDLightBLackColor;
        _Carpbtomlb.font =  [UIFont systemFontOfSize:12];
        _Carpbtomlb.text = @"限2000人报名参加";
    }
    return _Carpbtomlb;
}
- (UIButton *)CarpEnterBtn{
    if (!_CarpEnterBtn) {
        _CarpEnterBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpEnterBtn  setBackgroundColor:LGDMianColor];
        [_CarpEnterBtn setTitle:@"参加活动" forState:UIControlStateNormal];
        [_CarpEnterBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CarpEnterBtn.titleLabel.font = KBlFont(12);
        _CarpEnterBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CarpEnterBtn.layer.cornerRadius = RealWidth(13);
        _CarpEnterBtn.layer.masksToBounds = YES;
    }
    return _CarpEnterBtn;
}
@end
    
