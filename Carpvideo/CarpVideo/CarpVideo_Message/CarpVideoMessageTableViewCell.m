//
//  CarpVideoMessageTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import "CarpVideoMessageTableViewCell.h"
@interface CarpVideoMessageTableViewCell ()
@property(nonatomic,strong) UIImageView * CarpVideouserImgView;
@property(nonatomic,strong) UILabel     * CarpVideoNamelb;
@property(nonatomic,strong) UILabel     * CarpVideoDetailb;
@property(nonatomic,strong) UILabel     * CarpVideoTimelb;
@property(nonatomic,strong) UILabel     * CarpVideoNumslb;

@end
@implementation CarpVideoMessageTableViewCell
-(void)setContentUI{
    self.selectionStyle =  UITableViewCellSelectionStyleNone;
    [self.contentView addSubview:self.CarpVideouserImgView];
    [self.contentView addSubview:self.CarpVideoNamelb];
    [self.contentView addSubview:self.CarpVideoDetailb];
    [self.contentView addSubview:self.CarpVideoTimelb];
    [self.contentView addSubview:self.CarpVideoNumslb];
    
    [_CarpVideouserImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.inset(RealWidth(15));
        make.top.mas_equalTo(RealWidth(10));
        make.size.mas_equalTo(CGSizeMake(RealWidth(36), RealWidth(36)));
    }];
    [_CarpVideoNamelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideouserImgView.mas_right).offset(RealWidth(5));
        make.top.mas_equalTo(RealWidth(14));
    }];
    
    [_CarpVideoDetailb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_CarpVideouserImgView.mas_right).offset(RealWidth(5));
        make.top.mas_equalTo(_CarpVideoNamelb.mas_bottom).offset(5);
        make.right.mas_equalTo(-RealWidth(60));
    }];
    [_CarpVideoTimelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-RealWidth(10));
        make.top.mas_equalTo(RealWidth(14));
    }];
    
    [_CarpVideoNumslb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-RealWidth(10));
        make.top.mas_equalTo(_CarpVideoTimelb.mas_bottom).offset(RealWidth(5));
        make.size.mas_equalTo(CGSizeMake(RealWidth(12), RealWidth(12)));
    }];
    
    
    
}
-(UIImageView *)CarpVideouserImgView{
    if (!_CarpVideouserImgView) {
        _CarpVideouserImgView = [UIImageView new];
        _CarpVideouserImgView.layer.cornerRadius = RealWidth(18);
        _CarpVideouserImgView.layer.masksToBounds = YES;
        _CarpVideouserImgView.layer.masksToBounds = YES;
        _CarpVideouserImgView.backgroundColor = LGDMianColor;
       
    }
    return _CarpVideouserImgView;
}
- (UILabel *)CarpVideoNamelb{
    if (!_CarpVideoNamelb) {
        _CarpVideoNamelb = [UILabel new];
        _CarpVideoNamelb.textColor = LGDBLackColor;
        _CarpVideoNamelb.font =  KBlFont(12);
        _CarpVideoNamelb.text = @"迪斯尼在逃公主";
    }
    return _CarpVideoNamelb;
}
- (UILabel *)CarpVideoDetailb{
    if (!_CarpVideoDetailb) {
        _CarpVideoDetailb = [UILabel new];
        _CarpVideoDetailb.textColor = LGDGaryColor;
        _CarpVideoDetailb.font =  [UIFont systemFontOfSize:11];
        _CarpVideoDetailb.text = @"你照片拍的真好啊！ 是不是P过的？";
    }
    return _CarpVideoDetailb;
}
- (UILabel *)CarpVideoTimelb{
    if (!_CarpVideoTimelb) {
        _CarpVideoTimelb = [UILabel new];
        _CarpVideoTimelb.textColor = LGDGaryColor;
        _CarpVideoTimelb.font =  [UIFont systemFontOfSize:10];
        _CarpVideoTimelb.text = @"12分钟前";
    }
    return _CarpVideoTimelb;
}

- (UILabel *)CarpVideoNumslb{
    if (!_CarpVideoNumslb) {
        _CarpVideoNumslb = [UILabel new];
        _CarpVideoNumslb.textColor = [UIColor whiteColor];
        _CarpVideoNumslb.backgroundColor = LGDMianColor;
        _CarpVideoNumslb.layer.cornerRadius = RealWidth(6);
        _CarpVideoNumslb.layer.masksToBounds = YES;
        _CarpVideoNumslb.font =  [UIFont systemFontOfSize:10];
        _CarpVideoNumslb.text = @"12";
        _CarpVideoNumslb.textAlignment = NSTextAlignmentCenter;
    }
    return _CarpVideoNumslb;
}
- (void)setCarpModel:(carpVideoMessageModel *)carpModel{
    _carpModel = carpModel;
    [_CarpVideouserImgView sd_setImageWithURL:[NSURL URLWithString:carpModel.imgurl] placeholderImage:[UIImage imageNamed:@"whiteLogo"]];
    _CarpVideoNamelb.text =  carpModel.topname;
    _CarpVideoDetailb.text =  carpModel.content;
    _CarpVideoTimelb.text = carpModel.time;
    _CarpVideoNumslb.text =  [NSString stringWithFormat:@"%ld",carpModel.redNum];
    if (carpModel.isShowRed) {
        _CarpVideoNumslb.hidden = NO;
    }else{
        _CarpVideoNumslb.hidden = YES;
    }
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
