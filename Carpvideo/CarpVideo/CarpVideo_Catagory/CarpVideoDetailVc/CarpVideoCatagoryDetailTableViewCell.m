//
//  CarpVideoCatagoryDetailTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "CarpVideoCatagoryDetailTableViewCell.h"
@interface CarpVideoCatagoryDetailTableViewCell ()
@property(nonatomic,strong) UIImageView * CarpVideouserImgView;
@property(nonatomic,strong) UILabel    * CarpVideouserNamelb;
@property(nonatomic,strong) UILabel    * CarpVideoTimelb;
@property(nonatomic,strong) UILabel    * CarpVideoContentlb;
@property(nonatomic,strong) UIButton   * CarpVideoLHBtn;
@property(nonatomic,strong) UIButton   * CarpVideoJBBtn;
@end
@implementation CarpVideoCatagoryDetailTableViewCell
-(void)setContentUI{
    [self.contentView addSubview:self.CarpVideouserImgView];
    [self.contentView addSubview:self.CarpVideouserNamelb];
    [self.contentView addSubview:self.CarpVideoTimelb];
    [self.contentView addSubview:self.CarpVideoContentlb];
    [self.contentView addSubview:self.CarpVideoJBBtn];
    [self.contentView addSubview:self.CarpVideoLHBtn];
    
    [_CarpVideouserImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.inset(RealWidth(15));
        make.size.mas_equalTo(CGSizeMake(RealWidth(28), RealWidth(28)));
    }];
    
    [_CarpVideouserNamelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideouserImgView.mas_right).offset(RealWidth(5));
        make.top.inset(RealWidth(15));
    }];
    
    [_CarpVideoTimelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideouserImgView.mas_right).offset(RealWidth(5));
        make.top.mas_equalTo(_CarpVideouserNamelb.mas_bottom).offset(RealWidth(1));
    }];
    [_CarpVideoContentlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.inset(RealWidth(15));
        make.top.mas_equalTo(_CarpVideouserImgView.mas_bottom).offset(RealWidth(10));
    }];
    
}
- (UIImageView *)CarpVideouserImgView{
    if (!_CarpVideouserImgView) {
        _CarpVideouserImgView = [UIImageView new];
        _CarpVideouserImgView.layer.cornerRadius = RealWidth(14);
        _CarpVideouserImgView.layer.masksToBounds = YES;
//        _CarpVideouserImgView.backgroundColor = LGDMianColor;
    }
    return _CarpVideouserImgView;
}
- (UILabel *)CarpVideouserNamelb{
    if (!_CarpVideouserNamelb) {
        _CarpVideouserNamelb = [UILabel new];
        _CarpVideouserNamelb.textColor = LGDLightBLackColor;
        _CarpVideouserNamelb.font = [UIFont systemFontOfSize:15];
        _CarpVideouserNamelb.text = @"12312231";
    }
    return _CarpVideouserNamelb;
}
- (UILabel *)CarpVideoTimelb{
    if (!_CarpVideoTimelb) {
        _CarpVideoTimelb = [UILabel new];
        _CarpVideoTimelb.textColor = LGDGaryColor;
        _CarpVideoTimelb.font = [UIFont systemFontOfSize:11];
        _CarpVideoTimelb.text = @"12:21";
    }
    return _CarpVideoTimelb;
}
- (UILabel *)CarpVideoContentlb{
    if (!_CarpVideoContentlb) {
        _CarpVideoContentlb = [UILabel new];
        _CarpVideoContentlb.textColor = LGDGaryColor;
        _CarpVideoContentlb.font = [UIFont systemFontOfSize:13];
        _CarpVideoContentlb.numberOfLines = 0;
//        _CarpVideoContentlb.text = @"12:21";
        
    }
    return _CarpVideoContentlb;
}
- (void)setDertailModel:(CarpVideoCatagoryDetailModel *)dertailModel{
    _dertailModel = dertailModel;
    [_CarpVideouserImgView sd_setImageWithURL:[NSURL URLWithString:dertailModel.userImgurl] completed:nil];
    _CarpVideouserNamelb.text   = dertailModel.userNameText;
    _CarpVideoTimelb.text =  dertailModel.time;
    [_CarpVideoContentlb setText:dertailModel.Content lineSpacing:RealWidth(3)];
    [self setNeedsLayout];
    [self layoutIfNeeded];
    dertailModel.CellHeight =  CGRectGetMaxY(_CarpVideoContentlb.frame);
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
