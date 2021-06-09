//
//  LKWebsiteEditCollectionViewCell.m
//  cltios
//
//  Created by zjlk03 on 2021/5/26.
//

#import "LKWebsiteEditCollectionViewCell.h"
@interface LKWebsiteEditCollectionViewCell ()
@property(nonatomic,strong) UIButton    * LKDelebtn;
@end
@implementation LKWebsiteEditCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.LKThubImgView];
        [self.contentView addSubview:self.LKDelebtn];
        [_LKThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsMake(RealWidth(6), RealWidth(6), RealWidth(6), RealWidth(6)));
        }];
        
        [_LKDelebtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(_LKThubImgView.mas_right);
            make.centerY.mas_equalTo(_LKThubImgView.mas_top);
            make.size.mas_equalTo(CGSizeMake(RealWidth(12), RealWidth(12)));
        }];
    }
    return self;
}
- (UIImageView *)LKThubImgView{
    if (!_LKThubImgView) {
        _LKThubImgView = [UIImageView new];
//        _LKThubImgView.backgroundColor = [UIColor purpleColor];
        _LKThubImgView.layer.cornerRadius = 5;
        _LKThubImgView.layer.masksToBounds = YES;
    }
    return _LKThubImgView;
}
- (UIButton *)LKDelebtn{
    if (!_LKDelebtn) {
        _LKDelebtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_LKDelebtn setImage:[UIImage imageNamed:@"delete_Icon"] forState:UIControlStateNormal];
        [_LKDelebtn addTarget:self action:@selector(LKDelebtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LKDelebtn;
}
- (void)setEditModel:(LKWebsiteEditModel *)editModel{
    _editModel = editModel;
    _LKThubImgView.image = editModel.imgName;
    _LKDelebtn.hidden = !editModel.isEdit;
}
-(void)LKDelebtnClick{
    if ([self.delegate respondsToSelector:@selector(LKWebsiteEditCollectionViewCellDidDeleteImgViewWithCellIndex:)]) {
        [self.delegate LKWebsiteEditCollectionViewCellDidDeleteImgViewWithCellIndex:self.tag];
    }
}
@end
