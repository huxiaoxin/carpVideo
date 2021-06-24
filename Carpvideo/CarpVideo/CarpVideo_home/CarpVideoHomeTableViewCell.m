//
//  CarpVideoHomeTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoHomeTableViewCell.h"
@interface CarpVideoHomeTableViewCell ()
@property(nonatomic,strong) UIView          * CarpVideoContentView;
@property(nonatomic,strong) UIImageView     * CarpVideoThubImgView;
@property(nonatomic,strong) UILabel         * CarpVideoTitle;
@property(nonatomic,strong) UILabel         * CarpVideoTpsilb;
@property(nonatomic,strong) UILabel         * CarpVideoTimelb;
@property(nonatomic,strong) UIButton        * CarpVideoMoreBtn;
@end
@implementation CarpVideoHomeTableViewCell
-(void)setContentUI{
    self.backgroundColor = LGDViewBJColor;
    self.selectionStyle =  UITableViewCellSelectionStyleNone;
    [self.contentView addSubview:self.CarpVideoContentView];
    [_CarpVideoContentView addSubview:self.CarpVideoThubImgView];
    [_CarpVideoContentView addSubview:self.CarpVideoTitle];
    [_CarpVideoContentView addSubview:self.CarpVideoTpsilb];
    [_CarpVideoContentView addSubview:self.CarpVideoTimelb];
    [_CarpVideoContentView addSubview:self.CarpVideoMoreBtn];
}
-(UIView *)CarpVideoContentView{
    if (!_CarpVideoContentView) {
        _CarpVideoContentView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), 0, GK_SCREEN_WIDTH-RealWidth(30), RealWidth(170))];
        _CarpVideoContentView.layer.cornerRadius = RealWidth(5);
        _CarpVideoContentView.layer.masksToBounds = YES;
        _CarpVideoContentView.backgroundColor = [UIColor whiteColor];
    }
    return _CarpVideoContentView;
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(_CarpVideoContentView.frame), RealWidth(100))];
        _CarpVideoThubImgView.contentMode  = UIViewContentModeScaleAspectFill;
        _CarpVideoThubImgView.layer.masksToBounds = YES;
//        [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgss0.baidu.com%2F-Po3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2Fd01373f082025aafa76ca384feedab64034f1a26.jpg&refer=http%3A%2F%2Fgss0.baidu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625723785&t=3afef2da688f45415bcbb13917b2a0de"]];
    }
    return _CarpVideoThubImgView;
}
- (UILabel *)CarpVideoTitle{
    if (!_CarpVideoTitle) {
        CGRect titleRect =  [@"我日你大爷的大爷我日你大爷的大爷我日你大爷的大爷我日你大爷的大爷我日你大爷的大爷我日" cxl_sizeWithMoreString:[UIFont boldSystemFontOfSize:13] maxWidth:CGRectGetWidth(_CarpVideoContentView.frame)-RealWidth(10)];
        
        _CarpVideoTitle = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(5), CGRectGetMaxY(_CarpVideoThubImgView.frame)+RealWidth(5), titleRect.size.width, titleRect.size.height)];
        _CarpVideoTitle.textColor = LGDBLackColor;
        _CarpVideoTitle.numberOfLines = 0;
        _CarpVideoTitle.font = [UIFont boldSystemFontOfSize:13];
        _CarpVideoTitle.text = @"我日你大爷的大爷我日你大爷的大爷我日你大爷的大爷我日你大爷的大爷我日你大爷的大爷我日";
    }
    return _CarpVideoTitle;
}
- (UILabel *)CarpVideoTpsilb{
    if (!_CarpVideoTpsilb) {
        CGSize CarpVideoTpsilbSize = [@"鲤鱼视频" cxl_sizeWithString:[UIFont systemFontOfSize:10]];
        _CarpVideoTpsilb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(5), CGRectGetMaxY(_CarpVideoTitle.frame)+RealWidth(5), CarpVideoTpsilbSize.width+RealWidth(10), RealWidth(18  ))];
        _CarpVideoTpsilb.layer.cornerRadius = RealWidth(5);
        _CarpVideoTpsilb.layer.masksToBounds = YES;
        _CarpVideoTpsilb.textAlignment = NSTextAlignmentCenter;
        [_CarpVideoTpsilb setText:@"鲤鱼视频"];
        _CarpVideoTpsilb.textColor = LGDMianColor;
        _CarpVideoTpsilb.font = [UIFont systemFontOfSize:10];
        [_CarpVideoTpsilb setBackgroundColor:[UIColor colorWithHexString:@"FC305A" Alpha:0.2]];
    }
    return _CarpVideoTpsilb;
}
- (UILabel *)CarpVideoTimelb{
    if (!_CarpVideoTimelb) {
        _CarpVideoTimelb  =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoTpsilb.frame)+RealWidth(5), CGRectGetMidY(_CarpVideoTpsilb.frame)-RealWidth(10), RealWidth(200), RealWidth(20))];
        _CarpVideoTimelb.textColor = LGDGaryColor;
        _CarpVideoTimelb.font = [UIFont systemFontOfSize:12];
        _CarpVideoTimelb.text = @"2021-09-12 12:00:31";
    }
    return _CarpVideoTimelb;
}
- (UIButton *)CarpVideoMoreBtn{
    if (!_CarpVideoMoreBtn) {
        _CarpVideoMoreBtn = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetWidth(_CarpVideoContentView.frame)-RealWidth(70), CGRectGetMidY(_CarpVideoTpsilb.frame)-RealWidth(10), RealWidth(60), RealWidth(20))];
        _CarpVideoMoreBtn.layer.cornerRadius = 5;
        _CarpVideoMoreBtn.layer.masksToBounds = YES;
        [_CarpVideoMoreBtn setTitle:@"查看更多" forState:UIControlStateNormal];
        [_CarpVideoMoreBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        _CarpVideoMoreBtn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
        _CarpVideoMoreBtn.layer.borderColor = LGDMianColor.CGColor;
        _CarpVideoMoreBtn.layer.borderWidth = RealWidth(1);
        [_CarpVideoMoreBtn addTarget:self action:@selector(CarpVideoMoreBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpVideoMoreBtn;
}
-(void)CarpVideoMoreBtnClick{
    [self.delegate CarpVideoHomeTableViewCellDidSeltecdWithCellIndex:self.tag];
}
- (void)setCarpNewsModel:(CarpVideoHomenewsModel *)carpNewsModel{
    _carpNewsModel = carpNewsModel;
    [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:carpNewsModel.imgUrl] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _CarpVideoTitle.text = carpNewsModel.title;
    _CarpVideoTimelb.text =  carpNewsModel.time;
    

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
