//
//  CaroVideoDayListCollectionViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CaroVideoDayListCollectionViewCell.h"
@interface CaroVideoDayListCollectionViewCell ()
@property(nonatomic,strong) UIImageView * carpThubImgView;
@property(nonatomic,strong) UILabel  * CarpVideoTitle;;
@end
@implementation CaroVideoDayListCollectionViewCell
- (void)setUpTheCell{
    [self.contentView addSubview:self.carpThubImgView];
    [self.contentView addSubview:self.CarpVideoTitle];
    
    [_carpThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(0, 0, RealWidth(15), 0));
    }];
    [_CarpVideoTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self);
        make.right.mas_equalTo(self);
        make.top.mas_equalTo(_carpThubImgView.mas_bottom).offset(RealWidth(5));
    }];
}
- (UIImageView *)carpThubImgView{
    if (!_carpThubImgView) {
        _carpThubImgView = [UIImageView new];
        _carpThubImgView.contentMode =  UIViewContentModeScaleAspectFill;
        _carpThubImgView.layer.cornerRadius = RealWidth(5);
        _carpThubImgView.layer.masksToBounds = YES;
//        _carpThubImgView.backgroundColor = LGDMianColor;
    }
    return _carpThubImgView;
}
- (UILabel *)CarpVideoTitle{
    if (!_CarpVideoTitle) {
        _CarpVideoTitle = [UILabel new];
        _CarpVideoTitle.textColor = LGDBLackColor;
        _CarpVideoTitle.font = [UIFont systemFontOfSize:12];
//        _CarpVideoTitle.text = @"312372157351273512735761235761";
    }
    return _CarpVideoTitle;
}
- (void)setCarModel:(CarpVideoHomeModels *)carModel{
    _carModel = carModel;
    [_carpThubImgView sd_setImageWithURL:[NSURL URLWithString:carModel.carpVideoImgThub] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _CarpVideoTitle.text =  carModel.carpVideoHomeName;
}
@end
