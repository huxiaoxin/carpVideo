//
//  CarpVideoPhotoCollectionViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "CarpVideoPhotoCollectionViewCell.h"
@interface CarpVideoPhotoCollectionViewCell ()
@property(nonatomic,strong) UIImageView * CarpVideoThubImgView;
@end
                    
@implementation CarpVideoPhotoCollectionViewCell
-(void)setUpTheCell{
    [self.contentView addSubview:self.CarpVideoThubImgView];
    [_CarpVideoThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
    }];
}
- (void)setImgurl:(NSString *)imgurl{
    _imgurl = imgurl;
    [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:imgurl] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [UIImageView new];
        _CarpVideoThubImgView.contentMode =  UIViewContentModeScaleAspectFill;
        _CarpVideoThubImgView.layer.masksToBounds = YES;
    }
    return _CarpVideoThubImgView;
}
@end
