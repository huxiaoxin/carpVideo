//
//  CarpVideoMyinfoTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoMyinfoTableViewCell.h"
@interface CarpVideoMyinfoTableViewCell ()
{
    UILabel * _CarpVideoLeftlb;
}
@end
@implementation CarpVideoMyinfoTableViewCell
-(void)setContentUI{
    
    UILabel * CarpVideoLeftlb = [UILabel new];
    CarpVideoLeftlb.textColor = LGDBLackColor;
    CarpVideoLeftlb.font = [UIFont systemFontOfSize:15];
    CarpVideoLeftlb.text = @"头像";
    [self.contentView addSubview:CarpVideoLeftlb];
    _CarpVideoLeftlb = CarpVideoLeftlb;
    
    
    [CarpVideoLeftlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.left.mas_equalTo(RealWidth(15));
    }];

    UIView * caroVideoline = [UIView new];
    caroVideoline.backgroundColor = LGDLightGaryColor;
    [self.contentView addSubview:caroVideoline];
    
    [caroVideoline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(self);
        make.height.mas_equalTo(.5);
    }];
    
    UIImageView * CarpVideoRightImgView = [UIImageView new];
    CarpVideoRightImgView.image = [UIImage imageNamed:@"youbian"];
    [self.contentView addSubview:CarpVideoRightImgView];
    
    [CarpVideoRightImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.mas_centerY);
        make.right.mas_equalTo(self.contentView.mas_right).offset(-RealWidth(10));
    }];
    
    UIImageView *CarpVideouserHeaderImgView = [UIImageView new];
    CarpVideouserHeaderImgView.image = [UIImage imageNamed:@"whiteLogo"];
    CarpVideouserHeaderImgView.layer.cornerRadius = RealWidth(15);
    CarpVideouserHeaderImgView.layer.masksToBounds = YES;
    [self.contentView addSubview:CarpVideouserHeaderImgView];
    self.CarpVideouserHeaderImgView =  CarpVideouserHeaderImgView;
    [CarpVideouserHeaderImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(CarpVideoRightImgView.mas_left).offset(-RealWidth(10));
        make.centerY.mas_equalTo(self.contentView);
        make.size.mas_equalTo(CGSizeMake(RealWidth(30), RealWidth(30)));
    }];
    
    UILabel * carpVideouserNamelb = [UILabel new];
    carpVideouserNamelb.font = [UIFont systemFontOfSize:13];
    carpVideouserNamelb.textColor = LGDBLackColor;
    carpVideouserNamelb.text = @"我的小日子";
    [self.contentView addSubview:carpVideouserNamelb];
    self.carpVideouserNamelb = carpVideouserNamelb;
    
    [carpVideouserNamelb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(CarpVideoRightImgView.mas_right).offset(-RealWidth(12));
        make.centerY.mas_equalTo(self);
    }];
}
-(void)CarpVideoMyinfoTableViewCellConfiguarWithIndexPath:(NSIndexPath * )indexPath{
    if (indexPath.row == 0) {
        _CarpVideoLeftlb.text  = @"头像";
        self.carpVideouserNamelb.hidden = YES;
        self.CarpVideouserHeaderImgView.hidden  = NO;
        
    }else{
        self.CarpVideouserHeaderImgView.hidden = YES;
        self.carpVideouserNamelb.hidden = NO;
        _CarpVideoLeftlb.text = @"昵称";
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
