//
//  CarpVideoAdViceTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoAdViceTableViewCell.h"
#import "WWStarView.h"
@interface CarpVideoAdViceTableViewCell ()
@property(nonatomic,strong) UIImageView * CarpVideoThubImgView;
@property(nonatomic,strong) UILabel  * CarpVideoNamelb;
@property(nonatomic,strong) UILabel  * CarpVideoYearlb;
@property(nonatomic,strong) WWStarView * carStarView;
@property(nonatomic,strong) UIButton   * CarWriteBtn;
@property(nonatomic,strong) UILabel  * carSourcelb;
@property(nonatomic,strong) UILabel  * CarContenlb;
@property(nonatomic,strong) UIView   * carGaryView;
@property(nonatomic,strong) UILabel  * CarHolderlb;
@property(nonatomic,strong) UIView   * CarDeepline;
@end
@implementation CarpVideoAdViceTableViewCell
-(void)setContentUI{
    
    self.selectionStyle =  UITableViewCellAccessoryNone;
    [self.contentView addSubview:self.CarpVideoThubImgView];
    [self.contentView addSubview:self.CarpVideoNamelb];
    [self.contentView addSubview:self.CarpVideoYearlb];
    [self.contentView addSubview:self.carStarView];
    [self.contentView addSubview:self.CarWriteBtn];
    [self.contentView addSubview:self.CarContenlb];
    [self.contentView addSubview:self.carSourcelb];
    [self.contentView addSubview:self.carGaryView];
    [_carGaryView addSubview:self.CarHolderlb];
    [self.contentView addSubview:self.CarDeepline];
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(15), RealWidth(80), RealWidth(100))];
        _CarpVideoThubImgView.layer.cornerRadius = RealWidth(5);
        _CarpVideoThubImgView.layer.masksToBounds = YES;
        _CarpVideoThubImgView.contentMode =  UIViewContentModeScaleAspectFill;
    }
    return _CarpVideoThubImgView;
}
- (UILabel *)CarpVideoNamelb{
    if (!_CarpVideoNamelb) {
        _CarpVideoNamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(10), CGRectGetMinY(_CarpVideoThubImgView.frame)+RealWidth(5), GK_SCREEN_WIDTH-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(15))];
        _CarpVideoNamelb.font = KBlFont(14);
        _CarpVideoNamelb.textColor = LGDBLackColor;
        _CarpVideoNamelb.text = @"何以为家";
    }
    return _CarpVideoNamelb;
}
- (UILabel *)CarpVideoYearlb{
    if (!_CarpVideoYearlb) {
        _CarpVideoYearlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(10), CGRectGetMaxY(_CarpVideoNamelb.frame)+RealWidth(5), GK_SCREEN_WIDTH-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(15))];
        _CarpVideoYearlb.font = KBlFont(13);
        _CarpVideoYearlb.textColor = LGDGaryColor;
        _CarpVideoYearlb.text = @"(2018)";
    }
    return _CarpVideoYearlb;
}
- (WWStarView *)carStarView{
    if (!_carStarView) {
        _carStarView = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(10), CGRectGetMaxY(_CarpVideoYearlb.frame)+RealWidth(5), RealWidth(60), RealWidth(20)) numberOfStars:5 currentStar:3 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
            
        }];
    }
    return _carStarView;
}
- (UIButton *)CarWriteBtn{
    if (!_CarWriteBtn) {
        _CarWriteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _CarWriteBtn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
        CGSize CarWriteBtnSize = [@"写影评" cxl_sizeWithString:[UIFont boldSystemFontOfSize:12]];
        [_CarWriteBtn setFrame:CGRectMake(GK_SCREEN_WIDTH-CarWriteBtnSize.width-RealWidth(20), RealWidth(20), CarWriteBtnSize.width+RealWidth(10), RealWidth(20))];
        [_CarWriteBtn setTitle:@"写影评" forState:UIControlStateNormal];
        [_CarWriteBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        _CarWriteBtn.layer.cornerRadius = RealWidth(5);
        _CarWriteBtn.layer.masksToBounds = YES;
        _CarWriteBtn.layer.borderColor = LGDMianColor.CGColor;
        _CarWriteBtn.layer.borderWidth = RealWidth(1);
        [_CarWriteBtn addTarget:self action:@selector(CarWriteBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarWriteBtn;
}
- (UILabel *)CarContenlb{
    if (!_CarContenlb) {
        _CarContenlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_carStarView.frame)+RealWidth(0), GK_SCREEN_WIDTH-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(40))];
        _CarContenlb.textColor = LGDGaryColor;
        _CarContenlb.numberOfLines = 2;
        _CarContenlb.font = [UIFont systemFontOfSize:12];
        _CarContenlb.text = @"写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评写影评";
    }
    return _CarContenlb;
}
- (UIView *)carGaryView{
    if (!_carGaryView) {
        _carGaryView = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_CarpVideoThubImgView.frame)+RealWidth(12), GK_SCREEN_WIDTH-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(24))];
        _carGaryView.backgroundColor = LGDLightGaryColor;
        _carGaryView.layer.cornerRadius = RealWidth(12);
        _carGaryView.layer.masksToBounds = YES;
    }
    return _carGaryView;
}
- (UILabel *)CarHolderlb{
    if (!_CarHolderlb) {
        _CarHolderlb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(10), 0, CGRectGetWidth(_carGaryView.frame)-RealWidth(20), CGRectGetHeight(_carGaryView.frame))];
        _CarHolderlb.font = [UIFont systemFontOfSize:11];
        _CarHolderlb.textColor = LGDGaryColor;
        _CarHolderlb.text = @"321i362178361235";
    }
    return _CarHolderlb;
}
- (UIView *)CarDeepline{
    if (!_CarDeepline) {
        _CarDeepline = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(169), GK_SCREEN_WIDTH-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(1))];
        _CarDeepline.backgroundColor = LGDLightGaryColor;
    }
    return _CarDeepline;
}
-(void)CarWriteBtnClick{
    [self.delegate CarpVideoAdViceTableViewCellWriteActionWithIndex:self.tag];
}
- (void)setCarpMoel:(CarpVideoHomeModels *)carpMoel{
    _carpMoel = carpMoel;
    [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:carpMoel.carpVideoImgThub] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _CarpVideoNamelb.text =  carpMoel.carpVideoHomeName;
    _CarpVideoYearlb.text = [NSString stringWithFormat:@"%@",carpMoel.carpVideoEngName];
    [_carStarView setCurrentStar:carpMoel.carp_starNum];
    _CarContenlb.text =  carpMoel.carpVideoHome_intrduce;
    _CarHolderlb.text = carpMoel.carpVideoHomeArtislist;
    
}
@end
