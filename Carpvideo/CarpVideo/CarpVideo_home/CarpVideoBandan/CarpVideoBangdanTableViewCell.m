//
//  CarpVideoBangdanTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoBangdanTableViewCell.h"
#import "WWStarView.h"
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

@end
@implementation CarpVideoBangdanTableViewCell
-(void)setContentUI{
    self.backgroundColor = [UIColor clearColor];
    self.selectionStyle =  UITableViewCellSelectionStyleNone;
    [self.contentView addSubview:self.CarpVideoContentView];
    [_CarpVideoContentView addSubview:self.CarpVideoThubImgView];
    [_CarpVideoContentView addSubview:self.CarpVideoTitle];
    [_CarpVideoContentView addSubview:self.CarpVideoSecondlb];
    [self setNeedsLayout];
    [self layoutIfNeeded];
//    [_CarpVideoContentView addSubview:self.CarpStarView];
    [_CarpVideoContentView addSubview:self.CarpThreelb];
    [_CarpVideoContentView addSubview:self.CarpFourelb];
    [_CarpVideoContentView addSubview:self.CarpFivelb];
    [self addSubview:self.CarpBtomView];
    [_CarpVideoContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(RealWidth(5), RealWidth(10), RealWidth(5), RealWidth(10)));
    }];
    
    [_CarpVideoThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.inset(RealWidth(10));
        make.size.mas_equalTo(CGSizeMake(RealWidth(70), RealWidth(100)));
    }];
    [_CarpVideoTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(RealWidth(10));
    }];
    
    [_CarpVideoSecondlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_CarpVideoTitle.mas_bottom).offset(RealWidth(7));
    }];
    
    [_CarpThreelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_CarpVideoSecondlb.mas_bottom).offset(RealWidth(7));
    }];
    
    [_CarpFourelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_CarpThreelb.mas_bottom).offset(RealWidth(7));
    }];
    
    [_CarpFivelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideoThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_CarpFourelb.mas_bottom).offset(RealWidth(7));
        make.right.mas_equalTo(-RealWidth(15));
    }];
    
    [_CarpBtomView  mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.inset(RealWidth(15));
        make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(RealWidth(10));
        make.height.mas_equalTo(RealWidth(24));
    }];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//
//        _CarpStarView.currentStar = 3;
//        [self->_CarpVideoContentView viewShadowPathWithColor:LGDMianColor shadowOpacity:0.2 shadowRadius:RealWidth(5) shadowPathType:LeShadowPathAround shadowPathWidth:RealWidth(5)];
//    });
    
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
        [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.article.pchome.net%2F00%2F31%2F46%2F66%2Fpic_lib%2Fs960x639%2Fgg03s960x639.jpg&refer=http%3A%2F%2Fimg.article.pchome.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625992936&t=e902edd64727ba65fbf9287b4fa6b738"]];
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
//- (WWStarView *)CarpStarView{
//    if (!_CarpStarView) {
//        _CarpStarView = [[WWStarView alloc]initWithFrame:CGRectMake(RealWidth(130), RealWidth(29.5), RealWidth(50), RealWidth(20)) numberOfStars:5 currentStar:3 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
//        }];
//        _CarpStarView.backgroundColor = [UIColor whiteColor];
//    }
//    return _CarpStarView;
//}
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
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
