//
//  CarpVideoBangdanTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoBangdanTableViewCell.h"
#import "WWStarView.h"
#import "LMJHorizontalScrollText.h"
@interface CarpVideoBangdanTableViewCell ()
@property(nonatomic,strong) UIView * CarpVideoContentView;
@property(nonatomic,strong) UIImageView * CarpVideoThubImgView;
@property(nonatomic,strong) UILabel     * CarpVideoTitle;
@property(nonatomic,strong) UILabel     * CarpVideoSecondlb;
@property(nonatomic,strong) WWStarView  * CarpStarView;
@property(nonatomic,strong) UILabel     * CarpThreelb;
@property(nonatomic,strong) UILabel     * CarpFourelb;
@property(nonatomic,strong) UILabel     * CarpFivelb;
@property(nonatomic,strong) UIView      * CarpBtomView;
@property(nonatomic,strong) UIImageView * CarpTopImgView;
@property(nonatomic,strong) UIImageView * CarpHotComentImgView;
@property(nonatomic,strong) LMJHorizontalScrollText * CarpScrolText;
@end
@implementation CarpVideoBangdanTableViewCell
-(void)setContentUI{
    self.backgroundColor = [UIColor clearColor];
    self.selectionStyle =  UITableViewCellSelectionStyleNone;
    [self.contentView addSubview:self.CarpVideoContentView];
    [_CarpVideoContentView addSubview:self.CarpVideoThubImgView];
    [_CarpVideoContentView addSubview:self.CarpVideoTitle];
    [_CarpVideoContentView addSubview:self.CarpVideoSecondlb];
    [_CarpVideoContentView addSubview:self.CarpStarView];
    [_CarpVideoContentView addSubview:self.CarpThreelb];
    [_CarpVideoContentView addSubview:self.CarpFourelb];
    [_CarpVideoContentView addSubview:self.CarpFivelb];
    [_CarpVideoContentView addSubview:self.CarpBtomView];
    [_CarpBtomView addSubview:self.CarpHotComentImgView];
    [_CarpBtomView addSubview:self.CarpScrolText];
    
    [_CarpVideoContentView setFrame:CGRectMake(RealWidth(10), RealWidth(10), GK_SCREEN_WIDTH-RealWidth(20), RealWidth(150))];
    
//    [_CarpVideoContentView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.mas_equalTo(UIEdgeInsetsMake(RealWidth(5), RealWidth(10), RealWidth(5), RealWidth(10)));
//    }];
    
    [_CarpVideoThubImgView setFrame:CGRectMake(RealWidth(10), RealWidth(10), RealWidth(70), RealWidth(100))];
    
    
//    [_CarpVideoThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.inset(RealWidth(10));
//        make.size.mas_equalTo(CGSizeMake(RealWidth(70), RealWidth(100)));
//    }];
    
    [_CarpVideoTitle setFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(10), RealWidth(10), CGRectGetWidth(_CarpVideoContentView.frame)-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(15))];
    
//    [_CarpVideoTitle mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
//        make.top.mas_equalTo(RealWidth(10));
//    }];
//
    
    CGSize SecondSize = [@"推荐指数" cxl_sizeWithString:[UIFont systemFontOfSize:12]];
    [_CarpVideoSecondlb setFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(10), CGRectGetMaxY(_CarpVideoTitle.frame)+RealWidth(7), SecondSize.width, RealWidth(15))];
    _CarpStarView.x = CGRectGetMaxX(_CarpVideoSecondlb.frame)+RealWidth(5);
    
//    [_CarpVideoSecondlb mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
//        make.top.mas_equalTo(_CarpVideoTitle.mas_bottom).offset(RealWidth(7));
//    }];
//
    
    
    
    [_CarpThreelb setFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(10), CGRectGetMaxY(_CarpVideoSecondlb.frame)+RealWidth(7), CGRectGetWidth(_CarpVideoContentView.frame)-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(15))];
    
    
    
    
    
    
//    [_CarpThreelb mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
//        make.top.mas_equalTo(_CarpVideoSecondlb.mas_bottom).offset(RealWidth(7));
//    }];
//
    
    [_CarpFourelb setFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(10), CGRectGetMaxY(_CarpThreelb.frame)+RealWidth(7), CGRectGetWidth(_CarpVideoContentView.frame)-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(15))];
    
    
    
    
//    [_CarpFourelb mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
//        make.top.mas_equalTo(_CarpThreelb.mas_bottom).offset(RealWidth(7));
//    }];
//
    [_CarpFivelb setFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(10), CGRectGetMaxY(_CarpFourelb.frame)+RealWidth(7), CGRectGetWidth(_CarpVideoContentView.frame)-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(15))];
    
    
//    [_CarpFivelb mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
//        make.top.mas_equalTo(_CarpFourelb.mas_bottom).offset(RealWidth(7));
//        make.right.mas_equalTo(-RealWidth(15));
//    }];
//
    
    [_CarpBtomView setFrame:CGRectMake(RealWidth(15), CGRectGetMaxY(_CarpVideoThubImgView.frame)+RealWidth(10), CGRectGetWidth(_CarpVideoContentView.frame)-RealWidth(30), RealWidth(24))];
    
    [_CarpScrolText setFrame:CGRectMake(RealWidth(50),0, CGRectGetWidth(_CarpBtomView.frame)-RealWidth(50), CGRectGetHeight(_CarpBtomView.frame))];

    [_CarpHotComentImgView setFrame:CGRectMake(RealWidth(5), RealWidth(2), RealWidth(40), RealWidth(20))];
//    [_CarpBtomView  mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.inset(RealWidth(15));
//        make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(RealWidth(10));
//        make.height.mas_equalTo(RealWidth(24));
//    }];

    //repingicon

}
-(UIView *)CarpVideoContentView{
    if (!_CarpVideoContentView) {
        _CarpVideoContentView =  [UIView new];
        _CarpVideoContentView.backgroundColor = [UIColor whiteColor];
        _CarpVideoContentView.layer.cornerRadius = RealWidth(5);
    }
    return _CarpVideoContentView;
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [UIImageView new];
        _CarpVideoThubImgView.layer.cornerRadius = RealWidth(5);
        _CarpVideoThubImgView.contentMode = UIViewContentModeScaleAspectFill;
        _CarpVideoThubImgView.layer.masksToBounds = YES;
    }
    return _CarpVideoThubImgView;
}
- (UILabel *)CarpVideoTitle{
    if (!_CarpVideoTitle) {
        _CarpVideoTitle = [UILabel new];
        _CarpVideoTitle.font = [UIFont systemFontOfSize:16];
        _CarpVideoTitle.textColor = LGDBLackColor;
        _CarpVideoTitle.text = @"速度与激情9";
    }
    return _CarpVideoTitle;
}
- (UILabel *)CarpVideoSecondlb{
    if (!_CarpVideoSecondlb) {
        _CarpVideoSecondlb = [UILabel new];
        _CarpVideoSecondlb.font = [UIFont systemFontOfSize:12];
        _CarpVideoSecondlb.textColor = LGDGaryColor;
        _CarpVideoSecondlb.text = @"推荐指数";
    }
    return _CarpVideoSecondlb;
}
- (WWStarView *)CarpStarView{
    if (!_CarpStarView) {
        _CarpStarView = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoSecondlb.frame)+RealWidth(5), RealWidth(29.5), RealWidth(50), RealWidth(20)) numberOfStars:5 currentStar:3 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
        }];
        _CarpStarView.backgroundColor = [UIColor whiteColor];
    }
    return _CarpStarView;
}
- (UILabel *)CarpThreelb{
    if (!_CarpThreelb) {
        _CarpThreelb = [UILabel new];
        _CarpThreelb.font = [UIFont systemFontOfSize:12];
        _CarpThreelb.textColor = LGDGaryColor;
        _CarpThreelb.text = @"实景推理 | 悬疑";
    }
    return _CarpThreelb;
}
- (UILabel *)CarpFourelb{
    if (!_CarpFourelb) {
        _CarpFourelb = [UILabel new];
        _CarpFourelb.font = [UIFont systemFontOfSize:12];
        _CarpFourelb.textColor = LGDGaryColor;
        _CarpFourelb.text = @"X 先生密室 喜藏南路/世博会馆 11.4KM";
    }
    return _CarpFourelb;
}
- (UILabel *)CarpFivelb{
    if (!_CarpFivelb) {
        _CarpFivelb = [UILabel new];
        _CarpFivelb.font = [UIFont systemFontOfSize:12];
        _CarpFivelb.textColor = LGDGaryColor;
        _CarpFivelb.text = @" 建议还是按照预约世纪准时到，不然会很亏，场景设计";
    }
    return _CarpFivelb;
}
- (UIView *)CarpBtomView{
    if (!_CarpBtomView) {
        _CarpBtomView = [UIView new];
        _CarpBtomView.backgroundColor = LGDLightGaryColor;
        _CarpBtomView.layer.cornerRadius = RealWidth(12);
        _CarpBtomView.layer.masksToBounds = YES;
    }
    return _CarpBtomView;
}
- (LMJHorizontalScrollText *)CarpScrolText{
    if (!_CarpScrolText) {
        _CarpScrolText = [[LMJHorizontalScrollText alloc]initWithFrame:CGRectMake(RealWidth(30), 0, CGRectGetWidth(_CarpBtomView.frame)-RealWidth(40), CGRectGetHeight(_CarpBtomView.frame))];
        _CarpScrolText.textColor = LGDLightBLackColor;
        _CarpScrolText.textFont = [UIFont boldSystemFontOfSize:10];
        _CarpScrolText.moveDirection = LMJTextScrollMoveLeft;
        _CarpScrolText.speed = 0.5;
    }
    return _CarpScrolText;
    
}
- (UIImageView *)CarpHotComentImgView{
    if (!_CarpHotComentImgView) {
        _CarpHotComentImgView = [[UIImageView alloc]init];
        _CarpHotComentImgView.image = [UIImage imageNamed:@"repingicon"];
    }
    return _CarpHotComentImgView;
}
- (void)setCarpModel:(CarpVideoHomeModels *)carpModel{
    _carpModel = carpModel;
    [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:carpModel.carpVideoImgThub] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _CarpVideoTitle.text = carpModel.carpVideoHomeName;
    [_CarpStarView setCurrentStar:carpModel.carp_starNum];
    _CarpThreelb.text = [NSString stringWithFormat:@"%@ | %@",carpModel.carpVideoHomes_tagOne,carpModel.carpVideoHome_tagtwo];
    _CarpFourelb.text = carpModel.carpVideoHomeArtislist;
    _CarpFivelb.text = carpModel.carpVideoHome_intrduce;
    [_CarpScrolText setText:carpModel.carpVideoHome_intrduce];
    [_CarpScrolText move];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
