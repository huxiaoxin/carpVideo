//
//  CarpVideocatagoryCollectionViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideocatagoryCollectionViewCell.h"
@interface CarpVideocatagoryCollectionViewCell ()
@property(nonatomic,strong) UIView       * CarpVideoContentView;
@property(nonatomic,strong) UIImageView  * CarpVideouserImgView;
@property(nonatomic,strong) UILabel      * CarpVideoNamelb;
@property(nonatomic,strong) UILabel      * carpVideoLocationlb;
@property(nonatomic,strong) UILabel      * carpVideoTitlelb;
@property(nonatomic,strong) UIButton     * carpVideoDelebtn;
@property(nonatomic,strong) UIImageView  * CarpVideoThubImgView;

@property(nonatomic,strong) UIButton     * CarpVideoLikeBtn;  //点赞
@property(nonatomic,strong) UIButton     * CarpComentBtn;    //评论
@property(nonatomic,strong) UIButton     * CarpPinbiBtn;     //屏蔽
@property(nonatomic,strong) UIButton     * CarpJuboaBtn;    //举报

@end
@implementation CarpVideocatagoryCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.CarpVideoContentView];
        [_CarpVideoContentView addSubview:self.CarpVideouserImgView];
        [_CarpVideoContentView addSubview:self.CarpVideoNamelb];
        [_CarpVideoContentView addSubview:self.carpVideoLocationlb];
        [_CarpVideoContentView addSubview:self.carpVideoDelebtn];
        [_CarpVideoContentView addSubview:self.carpVideoTitlelb];
        [_CarpVideoContentView addSubview:self.CarpVideoThubImgView];
        
        [_CarpVideoContentView addSubview:self.CarpVideoLikeBtn];
        [_CarpVideoContentView addSubview:self.CarpComentBtn];
        [_CarpVideoContentView addSubview:self.CarpPinbiBtn];
//        [_CarpVideoContentView addSubview:self.CarpJuboaBtn];

        
        [_CarpVideoContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self.contentView);
        }];
        
        [_CarpVideouserImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.inset(RealWidth(10));
            make.size.mas_equalTo(CGSizeMake(RealWidth(30), RealWidth(30)));
        }];
        [_CarpVideoNamelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideouserImgView.mas_right).offset(RealWidth(5));
            make.top.mas_equalTo(_CarpVideouserImgView.mas_top).offset(RealWidth(3));
        }];
        [_carpVideoLocationlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideouserImgView.mas_right).offset(RealWidth(5));
            make.top.mas_equalTo(_CarpVideoNamelb.mas_bottom).offset(RealWidth(0));
        }];
        
        [_carpVideoDelebtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(_CarpVideouserImgView.mas_centerY);
            make.right.mas_equalTo(-RealWidth(10));
            make.size.mas_equalTo(CGSizeMake(RealWidth(20), RealWidth(20)));
        }];
        
        [_carpVideoTitlelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(10));
            make.top.mas_equalTo(_CarpVideouserImgView.mas_bottom).offset(RealWidth(5));
        }];
        [_CarpVideoThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(_CarpVideoContentView);
            make.top.mas_equalTo(_carpVideoTitlelb.mas_bottom).offset(RealWidth(5));
            make.height.mas_equalTo(RealWidth(100));
        }];
        
        [_CarpVideoLikeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(5));
            make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(10);
        }];
        
        [_CarpComentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideoLikeBtn.mas_right).offset(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(10);
        }];
        
        [_CarpPinbiBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpComentBtn.mas_right).offset(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(10);
        }];
        
//        [_CarpJuboaBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_equalTo(_CarpPinbiBtn.mas_right).offset(RealWidth(5));
//            make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(10);
//        }];
    }
    return self;
}
- (UIView *)CarpVideoContentView{
    if (!_CarpVideoContentView) {
        _CarpVideoContentView = [[UIView alloc]initWithFrame:CGRectZero];
        _CarpVideoContentView.backgroundColor = [UIColor whiteColor];
        _CarpVideoContentView.layer.cornerRadius = RealWidth(5);
        _CarpVideoContentView.layer.masksToBounds = YES;
    }
    return _CarpVideoContentView;
}
- (UIImageView *)CarpVideouserImgView{
    if (!_CarpVideouserImgView) {
        _CarpVideouserImgView = [UIImageView new];
        _CarpVideouserImgView.layer.cornerRadius = RealWidth(15);
        _CarpVideouserImgView.layer.masksToBounds = YES;
        _CarpVideouserImgView.backgroundColor = LGDMianColor;
    }
    return _CarpVideouserImgView;
}
- (UILabel *)CarpVideoNamelb{
    if (!_CarpVideoNamelb) {
        _CarpVideoNamelb = [UILabel new];
        _CarpVideoNamelb.textColor =  LGDLightBLackColor;
        _CarpVideoNamelb.font = [UIFont systemFontOfSize:13];
        _CarpVideoNamelb.text = @"雪茶";
    }
    return _CarpVideoNamelb;
}
- (UILabel *)carpVideoLocationlb{
    if (!_carpVideoLocationlb) {
        _carpVideoLocationlb = [UILabel new];
        _carpVideoLocationlb.textColor =  LGDGaryColor;
        _carpVideoLocationlb.font = [UIFont systemFontOfSize:10];
        _carpVideoLocationlb.text = @"浙江 杭州";
    }
    return _carpVideoLocationlb;
}
- (UIButton *)carpVideoDelebtn{
    if (!_carpVideoDelebtn) {
        _carpVideoDelebtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_carpVideoDelebtn setBackgroundColor:LGDMianColor];
        [_carpVideoDelebtn addTarget:self action:@selector(carpVideoDelebtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_carpVideoDelebtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    }
    return _carpVideoDelebtn;
}
- (UILabel *)carpVideoTitlelb{
    if (!_carpVideoTitlelb) {
        _carpVideoTitlelb = [UILabel new];
        _carpVideoTitlelb.numberOfLines = 0;
        _carpVideoTitlelb.textColor =  LGDLightBLackColor;
        _carpVideoTitlelb.font = [UIFont systemFontOfSize:13];
        _carpVideoTitlelb.text = @"浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州浙江杭州";
    }
    return _carpVideoTitlelb;
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [UIImageView new];
        _CarpVideoThubImgView.backgroundColor = LGDMianColor;
    }
    return _CarpVideoThubImgView;
}
- (UIButton *)CarpVideoLikeBtn{
    if (!_CarpVideoLikeBtn) {
        _CarpVideoLikeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpVideoLikeBtn setImage:[UIImage imageNamed:@"pinglun"] forState:UIControlStateNormal];
        [_CarpVideoLikeBtn setTitle:@"21" forState:UIControlStateNormal];
        _CarpVideoLikeBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [_CarpVideoLikeBtn setTitleColor:LGDGaryColor forState:UIControlStateNormal];
        [_CarpVideoLikeBtn addTarget:self action:@selector(CarpVideoLikeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpVideoLikeBtn;
}
- (UIButton *)CarpComentBtn{
    if (!_CarpComentBtn) {
        _CarpComentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpComentBtn setImage:[UIImage imageNamed:@"pinglun"] forState:UIControlStateNormal];
        [_CarpComentBtn setTitle:@"评论" forState:UIControlStateNormal];
        _CarpComentBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [_CarpComentBtn setTitleColor:LGDGaryColor forState:UIControlStateNormal];
        [_CarpComentBtn addTarget:self action:@selector(CarpVideoLikeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpComentBtn;
}
- (UIButton *)CarpPinbiBtn{
    if (!_CarpPinbiBtn) {
        _CarpPinbiBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpPinbiBtn setImage:[UIImage imageNamed:@"pinglun"] forState:UIControlStateNormal];
        [_CarpPinbiBtn setTitle:@"屏蔽" forState:UIControlStateNormal];
        _CarpPinbiBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [_CarpPinbiBtn setTitleColor:LGDGaryColor forState:UIControlStateNormal];
        [_CarpPinbiBtn addTarget:self action:@selector(CarpVideoLikeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpPinbiBtn;
}
- (UIButton *)CarpJuboaBtn{
    if (!_CarpJuboaBtn) {
        _CarpJuboaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpJuboaBtn setImage:[UIImage imageNamed:@"pinglun"] forState:UIControlStateNormal];
        [_CarpJuboaBtn setTitle:@"举报" forState:UIControlStateNormal];
        _CarpJuboaBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [_CarpJuboaBtn setTitleColor:LGDGaryColor forState:UIControlStateNormal];
        [_CarpJuboaBtn addTarget:self action:@selector(CarpVideoLikeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpJuboaBtn;
}
- (void)setCarpVideoModel:(CarpVideoCatagoryModel *)carpVideoModel{
    _carpVideoModel = carpVideoModel;
    carpVideoModel.CarpCellHeight = RealWidth(280);

}
-(void)carpVideoDelebtnClick{
    NSLog(@"%s",__func__);
}
-(void)CarpVideoLikeBtnClick{
    
}
@end
