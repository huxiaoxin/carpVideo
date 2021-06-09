//
//  CarpVideoHomeCollectionViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoHomeCollectionViewCell.h"
@interface CarpVideoHomeCollectionViewCell ()
@property(nonatomic,strong) UIImageView * CarpVideoTopImgView;
@property(nonatomic,strong) UILabel     * CarpVideoTitle;
@end
@implementation CarpVideoHomeCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  =[super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.CarpVideoTopImgView];
        [self addSubview:self.CarpVideoTitle];
        
    }
    return self;
}
- (UIImageView *)CarpVideoTopImgView{
    if (!_CarpVideoTopImgView) {
        _CarpVideoTopImgView = [[UIImageView alloc]init];
        _CarpVideoTopImgView.backgroundColor = LGDMianColor;
        _CarpVideoTopImgView.layer.cornerRadius = RealWidth(5);
        _CarpVideoTopImgView.layer.masksToBounds = YES;
    }
    return _CarpVideoTopImgView;
}
-(UILabel *)CarpVideoTitle{
    if (!_CarpVideoTitle) {
        _CarpVideoTitle = [[UILabel alloc]init];
        _CarpVideoTitle.textColor = LGDBLackColor;
        _CarpVideoTitle.font = [UIFont systemFontOfSize:14];
        _CarpVideoTitle.text = @"华为鸿蒙系统iOS上线了";
    }
    return _CarpVideoTitle;
}
-(void)layoutSubviews{
    _CarpVideoTopImgView.frame = CGRectMake(RealWidth(5), RealWidth(5), self.bounds.size.width-RealWidth(10), self.bounds.size.height-RealWidth(35));
    _CarpVideoTitle.frame = CGRectMake(RealWidth(5), CGRectGetMaxY(_CarpVideoTopImgView.frame)+RealWidth(5), self.bounds.size.width-RealWidth(5), RealWidth(15));
}
@end
