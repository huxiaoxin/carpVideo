//
//  CarpVideoDetailTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoDetailTableViewCell.h"
#import "WWStarView.h"
@interface CarpVideoDetailTableViewCell ()
@property(nonatomic,strong)  UIImageView * CarpVideoThubImgView;
@property(nonatomic,strong) UILabel      * CarpNamelb;
@property(nonatomic,strong) WWStarView   * CarpStarView;
@property(nonatomic,strong) UILabel      * CarpNumlb;
@property(nonatomic,strong) UILabel      * CarpContentlb;
@property(nonatomic,strong) UIView       * CarpLine;
@property(nonatomic,strong) UIButton   * CarpVideoLHBtn;
@property(nonatomic,strong) UIButton   * CarpVideoJBBtn;
@end
@implementation CarpVideoDetailTableViewCell
-(void)setContentUI{
    self.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.CarpVideoThubImgView];
    [self.contentView addSubview:self.CarpNamelb];
    [self.contentView addSubview:self.CarpStarView];
    [self.contentView addSubview:self.CarpNumlb];
    [self.contentView addSubview:self.CarpVideoJBBtn];
    [self.contentView addSubview:self.CarpVideoLHBtn];
    [self.contentView addSubview:self.CarpContentlb];
    [self.contentView addSubview:self.CarpLine];


    
}
- (UIView *)CarpLine{
    if (!_CarpLine) {
        _CarpLine = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), 0, GK_SCREEN_WIDTH-RealWidth(15), RealWidth(1))];
        _CarpLine.backgroundColor = LGDLightGaryColor;
    }
    return _CarpLine;
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(15), RealWidth(40), RealWidth(40))];
        _CarpVideoThubImgView.layer.cornerRadius = RealWidth(20);
        _CarpVideoThubImgView.layer.masksToBounds =  YES;
    }
    return _CarpVideoThubImgView;
}
- (UILabel *)CarpNamelb{
    if (!_CarpNamelb) {
        _CarpNamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(5), RealWidth(5)+CGRectGetMinY(_CarpVideoThubImgView.frame), RealWidth(200), RealWidth(15))];
        _CarpNamelb.textColor = LGDBLackColor;
        _CarpNamelb.font = [UIFont boldSystemFontOfSize:14];
        _CarpNamelb.text = @"小明明";
    }
    return _CarpNamelb;
}
- (WWStarView *)CarpStarView{
    if (!_CarpStarView) {
        _CarpStarView = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_CarpNamelb.frame)+RealWidth(3), RealWidth(50), RealWidth(15)) numberOfStars:5 currentStar:2 rateStyle:HalfStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
            
        }];
        
    }
    return _CarpStarView;
}
- (UIButton *)CarpVideoLHBtn{
    if (!_CarpVideoLHBtn) {
        _CarpVideoLHBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        CGSize LHBtnSize = [@"拉黑" cxl_sizeWithString:KBlFont(14)];
        [_CarpVideoLHBtn setFrame:CGRectMake(CGRectGetMinX(_CarpVideoJBBtn.frame)-LHBtnSize.width-RealWidth(10), CGRectGetMidY(_CarpVideoThubImgView.frame)-RealWidth(7.5), LHBtnSize.width+RealWidth(10), RealWidth(15))];

        [_CarpVideoLHBtn setTitle:@"拉黑" forState:UIControlStateNormal];
        [_CarpVideoLHBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        _CarpVideoLHBtn.titleLabel.font = KBlFont(14);
        [_CarpVideoLHBtn addTarget:self action:@selector(CarpVideoLHBtnClick) forControlEvents:UIControlEventTouchUpInside];
        _CarpVideoLHBtn.tag = 1;
    }
    return _CarpVideoLHBtn;
}
- (UIButton *)CarpVideoJBBtn{
    if (!_CarpVideoJBBtn) {
        _CarpVideoJBBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        CGSize JBBtnSize = [@"举报" cxl_sizeWithString:KBlFont(14)];
        [_CarpVideoJBBtn setFrame:CGRectMake(GK_SCREEN_WIDTH-RealWidth(15)-JBBtnSize.width, CGRectGetMidY(_CarpVideoThubImgView.frame)-RealWidth(7.5), JBBtnSize.width+RealWidth(10), RealWidth(15))];
        _CarpVideoJBBtn.tag = 0;
        [_CarpVideoJBBtn setTitle:@"举报" forState:UIControlStateNormal];
        [_CarpVideoJBBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        [_CarpVideoJBBtn addTarget:self action:@selector(CarpVideoJBBtnClick) forControlEvents:UIControlEventTouchUpInside];
        _CarpVideoJBBtn.titleLabel.font = KBlFont(14);
    }
    return _CarpVideoJBBtn;
}
- (UILabel *)CarpNumlb{
    if (!_CarpNumlb) {
        _CarpNumlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpStarView.frame)+RealWidth(5), CGRectGetMidY(_CarpStarView.frame)-RealWidth(7.5), RealWidth(200), RealWidth(15))];
        _CarpNumlb.textColor = LGDBLackColor;
        _CarpNumlb.font = [UIFont boldSystemFontOfSize:12];
        _CarpNumlb.text = @"8.5";
    }
    return _CarpNumlb;
}
- (UILabel *)CarpContentlb{
    if (!_CarpContentlb) {
        _CarpContentlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_CarpVideoThubImgView.frame)+RealWidth(10), GK_SCREEN_WIDTH-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10), RealWidth(40))];
        _CarpContentlb.numberOfLines =  0;
        _CarpContentlb.font = [UIFont systemFontOfSize:RealWidth(14)];
//        _CarpContentlb.text = @"2134287648792547623514678321546728315478621547862154872154214762174287145827145217421342876487925476235146783215467283154786215478621548721542147621742871458271452174";
    }
    return _CarpContentlb;
}
- (void)setCarHotModel:(carpVideoRemneAdviceModel *)carHotModel{
    _carHotModel = carHotModel;
    [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:carHotModel.imgurl] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _CarpNamelb.text =  carHotModel.name;
    [_CarpStarView setCurrentStar:carHotModel.StarNum];
    _CarpNumlb.text = [NSString stringWithFormat:@"%ld星",carHotModel.StarNum];
    [_CarpContentlb setText:carHotModel.content lineSpacing:RealWidth(3)];
    CGSize contenSize  = [_CarpContentlb getSpaceLabelSize:carHotModel.content withFont:[UIFont systemFontOfSize:RealWidth(14)] withWidth:GK_SCREEN_WIDTH-CGRectGetMaxX(_CarpVideoThubImgView.frame)-RealWidth(10) lineSpacing:RealWidth(3)];
    _CarpContentlb.size = contenSize;
    
    _CarpLine.y = CGRectGetMaxY(_CarpContentlb.frame)+RealWidth(10);

    carHotModel.CellHeight = CGRectGetMaxY(_CarpLine.frame);
    
}
-(void)CarpVideoLHBtnClick{
    [self.delegate CarpVideoDetailTableViewCellDidSeltecdWithBtnIndex:1 cellIndex:self.tag];

}
-(void)CarpVideoJBBtnClick{
    [self.delegate CarpVideoDetailTableViewCellDidSeltecdWithBtnIndex:0 cellIndex:self.tag];
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
