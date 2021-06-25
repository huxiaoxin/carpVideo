//
//  CarpVideocatagoryCollectionViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideocatagoryCollectionViewCell.h"
#import "CarpVideoCatagoryBtn.h"
@interface CarpVideocatagoryCollectionViewCell ()
@property(nonatomic,strong) UIView       * CarpVideoContentView;
@property(nonatomic,strong) UIImageView  * CarpVideouserImgView;
@property(nonatomic,strong) UILabel      * CarpVideoNamelb;
@property(nonatomic,strong) UILabel      * carpVideoLocationlb;
@property(nonatomic,strong) UILabel      * carpVideoTitlelb;
@property(nonatomic,strong) UIButton     * carpVideoDelebtn;
@property(nonatomic,strong) UIImageView  * CarpVideoThubImgView;
@property(nonatomic,strong) UIButton     * CarpVideoPlayBtn;
@property(nonatomic,strong) UIView       * CarpVideoGaryView;
@property(nonatomic,strong) CarpVideoCatagoryBtn     * CarpVideoLikeBtn;  //点赞
@property(nonatomic,strong) CarpVideoCatagoryBtn     * CarpComentBtn;    //评论
@property(nonatomic,strong) CarpVideoCatagoryBtn     * CarpPinbiBtn;     //屏蔽
@property(nonatomic,strong) UIButton                 * CarpJuboaBtn;    //举报

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
        [_CarpVideoThubImgView addSubview:self.CarpVideoGaryView];
        [_CarpVideoGaryView    addSubview:self.CarpVideoPlayBtn];
        [_CarpVideoContentView addSubview:self.CarpVideoLikeBtn];
        [_CarpVideoContentView addSubview:self.CarpComentBtn];
        [_CarpVideoContentView addSubview:self.CarpPinbiBtn];

        
        [_CarpVideoContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(self.contentView);
            make.bottom.mas_equalTo(_CarpPinbiBtn.mas_bottom);
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
        
        
        [_CarpVideoGaryView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(_CarpVideoThubImgView);
        }];
        [_CarpVideoPlayBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(_CarpVideoGaryView);
            make.size.mas_equalTo(CGSizeMake(RealWidth(30), RealWidth(30)));
        }];
        [_CarpVideoLikeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(10));
            make.right.mas_equalTo(_CarpVideoLikeBtn.CarpVideoTitle.mas_right);
            make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(10);
        }];
        
        [_CarpComentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(_CarpVideoContentView.mas_centerX);
            make.right.mas_equalTo(_CarpComentBtn.CarpVideoTitle.mas_right);
            make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(10);
        }];
        
        [_CarpPinbiBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpComentBtn.mas_right).offset(RealWidth(18));
            make.right.mas_equalTo(_CarpPinbiBtn.CarpVideoTitle.mas_right);
            make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(10);
        }];
        

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
        _CarpVideouserImgView.image = [UIImage imageNamed:@"whiteLogo"];
        _CarpVideouserImgView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer  * carpVideoChatTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(CarpVideouserImgViewClicks)];
        [_CarpVideouserImgView addGestureRecognizer:carpVideoChatTap];
        
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
        [_carpVideoDelebtn setImage:[UIImage imageNamed:@"add_nomal"] forState:UIControlStateNormal];
        [_carpVideoDelebtn setImage:[UIImage imageNamed:@"add_seltecd"] forState:UIControlStateSelected];
        [_carpVideoDelebtn addTarget:self action:@selector(carpVideoDelebtnClick:) forControlEvents:UIControlEventTouchUpInside];
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
        _CarpVideoThubImgView.userInteractionEnabled = YES;
        _CarpVideoThubImgView.contentMode =  UIViewContentModeScaleAspectFill;
        _CarpVideoThubImgView.layer.masksToBounds = YES;
    }
    return _CarpVideoThubImgView;
}
- (UIView *)CarpVideoGaryView{
if (!_CarpVideoGaryView) {
    _CarpVideoGaryView  = [UIView new];
    _CarpVideoGaryView.backgroundColor =[UIColor colorWithHexString:@"2c2c2c" Alpha:0.6];
 }
return _CarpVideoGaryView;
}
- (UIButton *)CarpVideoPlayBtn{
    if (!_CarpVideoPlayBtn) {
        _CarpVideoPlayBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpVideoPlayBtn setImage:[UIImage imageNamed:@"bofang"] forState:UIControlStateNormal];
        [_CarpVideoPlayBtn addTarget:self action:@selector(CarpVideoPlayBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpVideoPlayBtn;
}
- (CarpVideoCatagoryBtn *)CarpVideoLikeBtn{
    if (!_CarpVideoLikeBtn) {
        _CarpVideoLikeBtn = [CarpVideoCatagoryBtn buttonWithType:UIButtonTypeCustom];
        _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like_nomal"];
        [_CarpVideoLikeBtn addTarget:self action:@selector(CarpVideoCatagoryBtnLikeAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpVideoLikeBtn;
}
- (CarpVideoCatagoryBtn *)CarpComentBtn{
    if (!_CarpComentBtn) {
        _CarpComentBtn = [CarpVideoCatagoryBtn buttonWithType:UIButtonTypeCustom];
        _CarpComentBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"dianping"];
        _CarpComentBtn.CarpVideoTitle.text = @"评论";
        [_CarpComentBtn addTarget:self action:@selector(CarpVideoCatagoryBtnWithComentAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpComentBtn;
}
- (CarpVideoCatagoryBtn *)CarpPinbiBtn{
    if (!_CarpPinbiBtn) {
        _CarpPinbiBtn = [CarpVideoCatagoryBtn buttonWithType:UIButtonTypeCustom];
        _CarpPinbiBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"fenxiang11"];
        _CarpPinbiBtn.CarpVideoTitle.text = @"分享";
        [_CarpPinbiBtn addTarget:self action:@selector(CarpVideoCatagoryBtnWithShareAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpPinbiBtn;
}

- (void)setCarpVideoModel:(CarpVideoCatagoryModel *)carpVideoModel{
    _carpVideoModel = carpVideoModel;
    [_CarpVideouserImgView sd_setImageWithURL:[NSURL URLWithString:carpVideoModel.imgIcon] placeholderImage:[UIImage imageNamed:@"whiteLogo"]];
    _CarpVideoNamelb.text =  carpVideoModel.userName;
    _carpVideoLocationlb.text = carpVideoModel.userlocation;
    _carpVideoTitlelb.text =  carpVideoModel.title;
    [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:carpVideoModel.imgs.firstObject] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _CarpVideoGaryView.hidden =  !carpVideoModel.isVideo;
    _CarpVideoLikeBtn.CarpVideoTitle.text = [NSString stringWithFormat:@"%ld",carpVideoModel.likeNums];
    
    if ([ORAccountComponent checkLogin:NO]) {
        _carpVideoDelebtn.selected =  carpVideoModel.isFallow;
        _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:carpVideoModel.isLike ? @"like-seltecd" : @"like_nomal"];
    }else{
        _carpVideoDelebtn.selected =  NO;
        _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like_nomal"];
    }
    [self setNeedsLayout];
    [self layoutIfNeeded];
    carpVideoModel.CarpCellHeight = CGRectGetHeight(_CarpVideoContentView.frame);
    
}
-(void)carpVideoDelebtnClick:(UIButton *)addbtn{
    [self.delegate CarpVideocatagoryCollectionViewCellAddFalow:self.tag faloowBtn:addbtn];
}
-(void)CarpVideoCatagoryBtnLikeAction:(CarpVideoCatagoryBtn * )likeBtn{
    [self.delegate CarpVideocatagoryCollectionViewCellWithLike:self.tag];
}
-(void)CarpVideoPlayBtnClick:(UIButton *)CarpPinbiBtn{
    [self.delegate CarpVideocatagoryCollectionViewCellWithPlayVideoIndex:self.tag];
}
-(void)CarpVideoCatagoryBtnWithShareAction:(CarpVideoCatagoryBtn *)shareBtn{
    [self.delegate CarpVideocatagoryCollectionViewCellWithShare:self.tag];
}
-(void)CarpVideoCatagoryBtnWithComentAction:(CarpVideoCatagoryBtn *)comentBtn{
    [self.delegate CarpVideocatagoryCollectionViewCellWithComent:self.tag];
}
-(void)CarpVideouserImgViewClicks{
    [self.delegate CarpVideocatagoryCollectionViewCellToChat:self.tag];
}
@end
