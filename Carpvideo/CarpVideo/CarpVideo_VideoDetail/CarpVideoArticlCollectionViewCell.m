//
//  CarpVideoArticlCollectionViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoArticlCollectionViewCell.h"
@interface CarpVideoArticlCollectionViewCell ()
@property(nonatomic,strong) UIImageView * CarpThubImgView;
@property(nonatomic,strong) UILabel     * CarpTitle;


@end
@implementation CarpVideoArticlCollectionViewCell
-(void)setUpTheCell{
    [self.contentView addSubview:self.CarpThubImgView];
    [self.contentView addSubview:self.CarpTitle];
    [_CarpThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.top.mas_equalTo(self);
        make.size.mas_equalTo(CGSizeMake(RealWidth(40), RealWidth(40)));
    }];
    [_CarpTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(_CarpThubImgView.mas_bottom).offset(RealWidth(5));
        }];
}
- (UIImageView *)CarpThubImgView{
    if (!_CarpThubImgView) {
        _CarpThubImgView = [UIImageView new];
        _CarpThubImgView.backgroundColor = LGDMianColor;
        _CarpThubImgView.layer.cornerRadius = RealWidth(20);
        _CarpThubImgView.layer.masksToBounds = YES;
    }
    return _CarpThubImgView;
}
- (UILabel *)CarpTitle{
    if (!_CarpTitle) {
        _CarpTitle = [UILabel new];
        _CarpTitle.textAlignment = NSTextAlignmentCenter;
        _CarpTitle.font = [UIFont boldSystemFontOfSize:12];
        _CarpTitle.textColor = LGDLightBLackColor;
        _CarpTitle.text = @"吴亦凡00";
    }
    return _CarpTitle;
}

@end
