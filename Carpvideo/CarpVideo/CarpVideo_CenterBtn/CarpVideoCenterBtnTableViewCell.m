//
//  CarpVideoZoneTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import "CarpVideoCenterBtnTableViewCell.h"

@interface CarpVideoCenterBtnTableViewCell ()
@property(nonatomic,strong) UILabel * CarpVideoRightlb;

@end
@implementation CarpVideoCenterBtnTableViewCell
-(void)setContentUI{
    self.selectionStyle =  UITableViewCellSelectionStyleNone;
    UILabel * CarpVideoLeftlb  = [UILabel new];
    CarpVideoLeftlb.textColor = LGDBLackColor;
    CarpVideoLeftlb.font = [UIFont systemFontOfSize:15];
    CarpVideoLeftlb.text = @"公开程度";
    [self.contentView addSubview:CarpVideoLeftlb];
    [CarpVideoLeftlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(RealWidth(15));
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
    }];
    
    UILabel * CarpVideoRightlb =[UILabel new];
    CarpVideoRightlb.textColor = [UIColor colorWithHexString:@"#FF6C00"];
    CarpVideoRightlb.font = [UIFont systemFontOfSize:15];
    [CarpVideoRightlb setText:@"保密" textColor:[UIColor colorWithHexString:@"#FF6C00"] appendingImg:@"orang_rightIcon" lineSpacing:2];
    [self.contentView addSubview:CarpVideoRightlb];
    self.CarpVideoRightlb = CarpVideoRightlb;
    [CarpVideoRightlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-RealWidth(10));
        make.centerY.mas_equalTo(self.contentView.mas_centerY);
    }];
    
    
        
    
        
    
    
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
