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
    
    [_CarpVideoLHBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.mas_right).offset(-RealWidth(15));
        make.centerY.mas_equalTo(_CarpVideouserImgView.mas_centerY);
    }];
    
    [_CarpVideoJBBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_CarpVideoLHBtn.mas_left).offset(-RealWidth(10));
        make.centerY.mas_equalTo(_CarpVideouserImgView.mas_centerY);
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
        
    }
    return _CarpVideoContentlb;
}
- (UIButton *)CarpVideoLHBtn{
    if (!_CarpVideoLHBtn) {
        _CarpVideoLHBtn = [UIButton buttonWithType:UIButtonTypeCustom];
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
        _CarpVideoJBBtn.tag = 0;
        [_CarpVideoJBBtn setTitle:@"举报" forState:UIControlStateNormal];
        [_CarpVideoJBBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        [_CarpVideoJBBtn addTarget:self action:@selector(CarpVideoJBBtnClick) forControlEvents:UIControlEventTouchUpInside];
        _CarpVideoJBBtn.titleLabel.font = KBlFont(14);
    }
    return _CarpVideoJBBtn;
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
-(void)CarpVideoLHBtnClick{
    [self.delegate CarpVideoCatagoryDetailTableViewCellDidSeltecdWithModel:_dertailModel btnIndex:1];

}
-(void)CarpVideoJBBtnClick{
    [self.delegate CarpVideoCatagoryDetailTableViewCellDidSeltecdWithModel:_dertailModel btnIndex:0];
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
