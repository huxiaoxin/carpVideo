//
//  CarpVideoNotiCationTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoNotiCationTableViewCell.h"
@interface CarpVideoNotiCationTableViewCell ()
@property(nonatomic,strong) UIView        * CarpVideoContentView;
@property(nonatomic,strong) UILabel       * CarpVideoTimelb;
@property(nonatomic,strong) UIImageView   * CarpVideoBackImgView;
@property(nonatomic,strong) UILabel       * CarpVideoContentlb;
@property(nonatomic,strong) UIView        * CarpVideoLineView;
@property(nonatomic,strong) UILabel       * CarpVideoMoreDetailb;
@end
@implementation CarpVideoNotiCationTableViewCell
-(void)setContentUI{
    self.backgroundColor = [UIColor clearColor];
    self.selectionStyle =  UITableViewCellSelectionStyleNone;
    [self.contentView addSubview:self.CarpVideoContentView];
    [_CarpVideoContentView addSubview:self.CarpVideoBackImgView];
    [_CarpVideoContentView addSubview:self.CarpVideoTimelb];
    [_CarpVideoContentView addSubview:self.CarpVideoContentlb];
    [_CarpVideoContentView addSubview:self.CarpVideoLineView];
    [_CarpVideoContentView addSubview:self.CarpVideoMoreDetailb];

    [_CarpVideoContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(RealWidth(5), RealWidth(10), RealWidth(5), RealWidth(10)));
    }];
    [_CarpVideoBackImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.top.mas_equalTo(_CarpVideoContentView);
        make.size.mas_equalTo(CGSizeMake(RealWidth(30), RealWidth(30)));
    }];
    [_CarpVideoTimelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_CarpVideoContentView.mas_centerX);
        make.top.mas_equalTo(RealWidth(5));
    }];
    [_CarpVideoContentlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.inset(RealWidth(5));
        make.right.mas_equalTo(-RealWidth(15));
        make.top.mas_equalTo(_CarpVideoTimelb.mas_bottom).offset(RealWidth(5));
    }];
    [_CarpVideoLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(_CarpVideoContentView);
        make.top.mas_equalTo(_CarpVideoContentlb.mas_bottom).offset(RealWidth(5));
        make.height.mas_equalTo(1);
    }];
    [_CarpVideoMoreDetailb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-RealWidth(5));
        make.top.mas_equalTo(_CarpVideoLineView.mas_bottom).offset(RealWidth(5));
    }];
}
- (UIView *)CarpVideoContentView{
    if (!_CarpVideoContentView) {
        _CarpVideoContentView = [UIView new];
        _CarpVideoContentView.backgroundColor = [UIColor whiteColor];
        _CarpVideoContentView.layer.cornerRadius = RealWidth(5);
    }
    return _CarpVideoContentView;
}
- (UIImageView *)CarpVideoBackImgView{
    if (!_CarpVideoBackImgView) {
        _CarpVideoBackImgView = [UIImageView new];
        _CarpVideoBackImgView.image = [UIImage imageNamed:@"bianjiao"];
    }
    return _CarpVideoBackImgView;
}
- (UILabel *)CarpVideoTimelb{
    if (!_CarpVideoTimelb) {
        _CarpVideoTimelb = [UILabel new];
        _CarpVideoTimelb.textAlignment = NSTextAlignmentCenter;
        _CarpVideoTimelb.font = [UIFont systemFontOfSize:12];
        _CarpVideoTimelb.textColor = LGDGaryColor;
        _CarpVideoTimelb.text =  @"2021-06-10 15:02:03";
    }
    return _CarpVideoTimelb;
}
- (UILabel *)CarpVideoContentlb{
    if (!_CarpVideoContentlb) {
        _CarpVideoContentlb = [UILabel new];
        _CarpVideoContentlb.numberOfLines = 0;
        _CarpVideoContentlb.textColor = LGDBLackColor;
        _CarpVideoContentlb.font = [UIFont systemFontOfSize:14];
        _CarpVideoContentlb.textColor = LGDBLackColor;
        NSString * TempFirstStr  = @"【系统提醒】 ";
        NSString * TempSecondStr = @"因服务器升级需要，鲤鱼视频将于2021年6月29号服务器停机进行升级";
        NSMutableParagraphStyle * parStyle = [[NSMutableParagraphStyle alloc]init];
        parStyle.lineSpacing = RealWidth(3);
        NSMutableAttributedString * mutablAtt = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"%@%@",TempFirstStr,TempSecondStr]];
        [mutablAtt addAttribute:NSForegroundColorAttributeName value:LGDMianColor range:NSMakeRange(0, TempFirstStr.length)];
        [mutablAtt addAttribute:NSForegroundColorAttributeName value:LGDBLackColor range:NSMakeRange(TempFirstStr.length, TempSecondStr.length)];
        [mutablAtt addAttribute:NSParagraphStyleAttributeName value:parStyle range:NSMakeRange(0, TempFirstStr.length+TempSecondStr.length)];
        _CarpVideoContentlb.attributedText = mutablAtt;
    }
    return _CarpVideoContentlb;
}
- (UIView *)CarpVideoLineView{
    if (!_CarpVideoLineView) {
        _CarpVideoLineView = [UIView new];
        _CarpVideoLineView.backgroundColor = LGDLightGaryColor;
    }
    return _CarpVideoLineView;
}
- (UILabel *)CarpVideoMoreDetailb{
    if (!_CarpVideoMoreDetailb) {
        _CarpVideoMoreDetailb =   [UILabel new];
        _CarpVideoMoreDetailb.textColor= LGDGaryColor;
        _CarpVideoMoreDetailb.font = [UIFont systemFontOfSize:13];
        _CarpVideoMoreDetailb.text =  @"查看详情👉";
    }
    return _CarpVideoMoreDetailb;
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
