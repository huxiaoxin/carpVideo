//
//  CarpVideoDetailHeaderView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoDetailHeaderView.h"
#import "CarpVideoDetaillb.h"
#import "CarpVideoArticlCollectionViewCell.h"

@interface CarpVideoDetailHeaderView ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UIImageView * CarpVideoThubImgView;
@property(nonatomic,strong) UIButton    * CarpVideoPlayBtn;
@property(nonatomic,strong) UIView      * CarpWhiteView;
@property(nonatomic,strong) UILabel     * CarpVideoNamelb;
@property(nonatomic,strong) UILabel     * CarpVideoTimelb;
@property(nonatomic,strong) UILabel     * CarpVideoTagOnelb;
@property(nonatomic,strong) UILabel     * CarpVideoTagTwolb;
@property(nonatomic,strong) UILabel     * CarpVideoTagThreelb;
@property(nonatomic,strong) UILabel     * CarpVideoTotalTimelb;
@property(nonatomic,strong) CarpVideoCatagoryBtn     * CarpVideoLikeBtn;  //点赞
@property(nonatomic,strong) CarpVideoDetaillb * CarpVideoFirstlb;
@property(nonatomic,strong) CarpVideoDetaillb * CarpVideoSecondlb;
@property(nonatomic,strong) UILabel     * CarpVideoIntroducelb;
@property(nonatomic,strong) UILabel     * CarpVideoIntroduceDetaillb;
@property(nonatomic,strong) UILabel     * CarpVideoArticlb;
@property(nonatomic,strong) UICollectionView * CarpVideoArticlCollecionView;
@property(nonatomic,strong) UILabel     * CarpVideoHotComentlb;
//@property(nonatomic,strong) CarpVideoHomeModels * carSelModel;
@end
@implementation CarpVideoDetailHeaderView
- (void)setCarMoell:(CarpVideoHomeModels *)carMoell{
    _carMoell = carMoell;
    
    [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:carMoell.carpVideoImgThub] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _CarpVideoNamelb.text = carMoell.carpVideoHomeName;
    _CarpVideoTotalTimelb.text = [NSString stringWithFormat:@"上映时间：%@",carMoell.time];
    _CarpVideoLikeBtn.CarpVideoTitle.text = [NSString stringWithFormat:@"%ld万人",carMoell.shangyinNum];

    _CarpVideoTagOnelb.text =  [NSString stringWithFormat:@"%@",carMoell.carpVideoHomes_tagOne];
    _CarpVideoTagTwolb.text = [NSString stringWithFormat:@"%@",carMoell.carpVideoHome_tagtwo];
    _CarpVideoTagThreelb.hidden = YES;
    _CarpVideoTimelb.text = carMoell.watchingNum;
    _CarpVideoFirstlb.CarpVideoToplb.text =  [NSString stringWithFormat:@"%.2f",carMoell.carpVideoHomes_DBNums];
    _CarpVideoSecondlb.CarpVideoToplb.text = [NSString stringWithFormat:@"%ld",carMoell.carpVideoHome_soureNums];
    [_CarpVideoIntroduceDetaillb setText:carMoell.carpVideoHome_intrduce lineSpacing:RealWidth(3)];
    
    if ([CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        if (carMoell.carpVideo_isCollected) {
            _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like-seltecd"];

        }else{
            _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like_nomal"];

        }
    }else{
        _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like_nomal"];
    }
    [_CarpVideoArticlCollecionView reloadData];

    [self setNeedsLayout];
    [self layoutIfNeeded];
    _CarpVideoTagOnelb.layer.cornerRadius = _CarpVideoTagOnelb.size.height/2;
    _CarpVideoTagTwolb.layer.cornerRadius = _CarpVideoTagTwolb.size.height/2;
    _CarpVideoTagThreelb.layer.cornerRadius = _CarpVideoTagThreelb.size.height/2;
    [_CarpWhiteView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(CGRectGetMaxY(_CarpVideoHotComentlb.frame)+RealWidth(10));
    }];
    [self setNeedsLayout];
    [self layoutIfNeeded];
    if (self.haederBlock) {
        self.haederBlock(CGRectGetMaxY(_CarpWhiteView.frame));
    }else{
        NSLog(@"NO-------");
    }
}
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
//        self.carSelModel = carMoell;
        [self addSubview:self.CarpVideoThubImgView];
        [_CarpVideoThubImgView addSubview:self.CarpVideoPlayBtn];
        [self addSubview:self.CarpWhiteView];
        
        
  
        [_CarpWhiteView addSubview:self.CarpVideoNamelb];
        [_CarpWhiteView addSubview:self.CarpVideoTotalTimelb];
        [_CarpWhiteView addSubview:self.CarpVideoTagOnelb];
        [_CarpWhiteView addSubview:self.CarpVideoTagTwolb];
        [_CarpWhiteView addSubview:self.CarpVideoTagThreelb];
        [_CarpWhiteView addSubview:self.CarpVideoTimelb];
        [_CarpWhiteView addSubview:self.CarpVideoLikeBtn];
        [_CarpWhiteView addSubview:self.CarpVideoFirstlb];
        [_CarpWhiteView addSubview:self.CarpVideoSecondlb];
        [_CarpWhiteView addSubview:self.CarpVideoIntroducelb];
        [_CarpWhiteView addSubview:self.CarpVideoIntroduceDetaillb];
        [_CarpWhiteView addSubview:self.CarpVideoArticlb];
        [_CarpWhiteView addSubview:self.CarpVideoArticlCollecionView];
        [_CarpWhiteView addSubview:self.CarpVideoHotComentlb];
        
//        [_CarpVideoThubImgView sd_setImageWithURL:[NSURL URLWithString:carMoell.pandaMoiveThuburl] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
//        _CarpVideoNamelb.text = carMoell.carpVideoHomeName;
//        _CarpVideoTotalTimelb.text = [NSString stringWithFormat:@"上映时间：%@",carMoell.time];
//        _CarpVideoLikeBtn.CarpVideoTitle.text = [NSString stringWithFormat:@"%ld万人",carMoell.shangyinNum];
//
//        _CarpVideoTagOnelb.text =  [NSString stringWithFormat:@"%@",carMoell.carpVideoHomes_tagOne];
//        _CarpVideoTagTwolb.text = [NSString stringWithFormat:@"%@",carMoell.carpVideoHome_tagtwo];
//        _CarpVideoTagThreelb.hidden = YES;
//        _CarpVideoTimelb.text = carMoell.watchingNum;
//        _CarpVideoFirstlb.CarpVideoToplb.text =  [NSString stringWithFormat:@"%.2f",carMoell.carpVideoHomes_DBNums];
//        _CarpVideoSecondlb.CarpVideoToplb.text = [NSString stringWithFormat:@"%ld",carMoell.carpVideoHome_soureNums];
//        [_CarpVideoIntroduceDetaillb setText:carMoell.carpVideoHome_intrduce lineSpacing:RealWidth(3)];
        
        [_CarpVideoThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(self);
            make.height.mas_equalTo(RealWidth(180)+GK_SAFEAREA_TOP);
        }];
        
        [_CarpVideoPlayBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(_CarpVideoThubImgView);
            make.size.mas_equalTo(CGSizeMake(RealWidth(0), RealWidth(0)));
        }];
        
        [_CarpWhiteView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(_CarpVideoThubImgView.mas_bottom).offset(-RealWidth(25));
            make.height.mas_equalTo(RealWidth(500));
        }];
        
        [_CarpVideoNamelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.inset(RealWidth(15));
        }];
        [_CarpVideoTotalTimelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoNamelb.mas_bottom).offset(RealWidth(3));
        }];
        
        [_CarpVideoTagOnelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoTotalTimelb.mas_bottom).offset(RealWidth(10));
            make.width.mas_greaterThanOrEqualTo(RealWidth(40));
        }];
        
        [_CarpVideoTagTwolb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideoTagOnelb.mas_right).offset(8);
            make.top.mas_equalTo(_CarpVideoTotalTimelb.mas_bottom).offset(RealWidth(10));
            make.width.mas_greaterThanOrEqualTo(RealWidth(40));
        }];
        [_CarpVideoTagThreelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideoTagTwolb.mas_right).offset(8);
            make.top.mas_equalTo(_CarpVideoTotalTimelb.mas_bottom).offset(RealWidth(10));
            make.width.mas_greaterThanOrEqualTo(RealWidth(40));
        }];
        
        [_CarpVideoTimelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(self.mas_right).offset(-8);
            make.top.mas_equalTo(_CarpVideoTotalTimelb.mas_bottom).offset(RealWidth(10));
        }];
        
        [_CarpVideoLikeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(_CarpWhiteView.mas_right).offset(-45);
            make.top.mas_equalTo(RealWidth(10));
        }];
        
        [_CarpVideoFirstlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpWhiteView);
            make.top.mas_equalTo(_CarpVideoTagOnelb.mas_bottom).offset(RealWidth(20));
            make.width.mas_equalTo(GK_SCREEN_WIDTH/2);
            make.bottom.mas_equalTo(_CarpVideoFirstlb.CarpVideoBtomlb.mas_bottom);
        }];
        [_CarpVideoSecondlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(GK_SCREEN_WIDTH/2);
            make.top.mas_equalTo(_CarpVideoTagOnelb.mas_bottom).offset(RealWidth(20));
            make.width.mas_equalTo(GK_SCREEN_WIDTH/2);
            make.bottom.mas_equalTo(_CarpVideoSecondlb.CarpVideoBtomlb.mas_bottom);

        }];
        [_CarpVideoIntroducelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoFirstlb.mas_bottom).offset(RealWidth(20));
        }];
        
        [_CarpVideoIntroduceDetaillb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(15));
            
            make.top.mas_equalTo(_CarpVideoIntroducelb.mas_bottom).offset(RealWidth(10));
        }];
        
        [_CarpVideoArticlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoIntroduceDetaillb.mas_bottom).offset(RealWidth(10));
        }];
        [_CarpVideoArticlCollecionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(_CarpVideoArticlb.mas_bottom).offset(RealWidth(5));
            make.height.mas_equalTo(RealWidth(80));
        }];
        
        [_CarpVideoHotComentlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoArticlCollecionView.mas_bottom).offset(RealWidth(10));
        }];
        
//        if ([CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
//            if (carMoell.carpVideo_isCollected) {
//                _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like-seltecd"];
//
//            }else{
//                _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like_nomal"];
//
//            }
//        }else{
//            _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like_nomal"];
//        }
//
//        [self setNeedsLayout];
//        [self layoutIfNeeded];
//        _CarpVideoTagOnelb.layer.cornerRadius = _CarpVideoTagOnelb.size.height/2;
//        _CarpVideoTagTwolb.layer.cornerRadius = _CarpVideoTagTwolb.size.height/2;
//        _CarpVideoTagThreelb.layer.cornerRadius = _CarpVideoTagThreelb.size.height/2;
//        [_CarpWhiteView mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.height.mas_equalTo(CGRectGetMaxY(_CarpVideoHotComentlb.frame)+RealWidth(10));
//        }];
//        if (self.haederBlock) {
//            self.haederBlock(CGRectGetMaxY(_CarpWhiteView.frame)-RealWidth(0));
//        }
    }
    return self;
}
- (UIImageView *)CarpVideoThubImgView{
    if (!_CarpVideoThubImgView) {
        _CarpVideoThubImgView = [UIImageView new];
        _CarpVideoThubImgView.contentMode = UIViewContentModeScaleAspectFill;
        _CarpVideoThubImgView.layer.masksToBounds = YES;
    }
    return _CarpVideoThubImgView;
}
- (UIButton *)CarpVideoPlayBtn{
    if (!_CarpVideoPlayBtn) {
        _CarpVideoPlayBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpVideoPlayBtn setImage:[UIImage imageNamed:@"bofang"] forState:UIControlStateNormal];
        [_CarpVideoPlayBtn addTarget:self action:@selector(CarpVideoPlayBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpVideoPlayBtn;
}
- (UIView *)CarpWhiteView{
    if (!_CarpWhiteView) {
        _CarpWhiteView = [UIView new];
            _CarpWhiteView.backgroundColor = [UIColor whiteColor];
        [_CarpWhiteView acs_radiusWithRadius:RealWidth(15) corner:UIRectCornerTopLeft | UIRectCornerTopRight];
    }
    return _CarpWhiteView;
}
-(UILabel *)CarpVideoNamelb{
    if (!_CarpVideoNamelb) {
        _CarpVideoNamelb = [UILabel new];
        _CarpVideoNamelb.font = [UIFont boldSystemFontOfSize:16];
        _CarpVideoNamelb.textColor = [UIColor blackColor];
    }
    return _CarpVideoNamelb;
}
-(UILabel *)CarpVideoTotalTimelb{
    if (!_CarpVideoTotalTimelb) {
        _CarpVideoTotalTimelb = [UILabel new];
        _CarpVideoTotalTimelb.font = [UIFont boldSystemFontOfSize:12];
        _CarpVideoTotalTimelb.textColor = LGDGaryColor;
    }
    return _CarpVideoTotalTimelb;
}

-(UILabel *)CarpVideoTagOnelb{
    if (!_CarpVideoTagOnelb) {
        _CarpVideoTagOnelb = [UILabel new];
        _CarpVideoTagOnelb.font = [UIFont boldSystemFontOfSize:10];
        _CarpVideoTagOnelb.textColor = LGDGaryColor;
        _CarpVideoTagOnelb.backgroundColor  = LGDLightGaryColor;
        _CarpVideoTagOnelb.textAlignment =  NSTextAlignmentCenter;
        _CarpVideoTagOnelb.layer.masksToBounds = YES;
        
    }
    return _CarpVideoTagOnelb;
}
-(UILabel *)CarpVideoTagTwolb{
    if (!_CarpVideoTagTwolb) {
        _CarpVideoTagTwolb = [UILabel new];
        _CarpVideoTagTwolb.font = [UIFont boldSystemFontOfSize:10];
        _CarpVideoTagTwolb.textColor = LGDGaryColor;
        _CarpVideoTagTwolb.backgroundColor  = LGDLightGaryColor;
        _CarpVideoTagTwolb.textAlignment =  NSTextAlignmentCenter;
        _CarpVideoTagTwolb.layer.masksToBounds = YES;
        
    }
    return _CarpVideoTagTwolb;
}
-(UILabel *)CarpVideoTagThreelb{
    if (!_CarpVideoTagThreelb) {
        _CarpVideoTagThreelb = [UILabel new];
        _CarpVideoTagThreelb.font = [UIFont boldSystemFontOfSize:10];
        _CarpVideoTagThreelb.textColor = LGDGaryColor;
        _CarpVideoTagThreelb.backgroundColor  = LGDLightGaryColor;
        _CarpVideoTagThreelb.textAlignment =  NSTextAlignmentCenter;
        _CarpVideoTagThreelb.layer.masksToBounds = YES;
        
    }
    return _CarpVideoTagThreelb;
}
-(UILabel *)CarpVideoTimelb{
    if (!_CarpVideoTimelb) {
        _CarpVideoTimelb = [UILabel new];
        _CarpVideoTimelb.font = [UIFont boldSystemFontOfSize:12];
        _CarpVideoTimelb.textColor = LGDGaryColor;
        
    }
    return _CarpVideoTimelb;
}
- (CarpVideoCatagoryBtn *)CarpVideoLikeBtn{
    if (!_CarpVideoLikeBtn) {
        _CarpVideoLikeBtn = [CarpVideoCatagoryBtn buttonWithType:UIButtonTypeCustom];
        _CarpVideoLikeBtn.CarpVideoTitle.textColor = LGDBLackColor;
        _CarpVideoLikeBtn.CarpVideoTitle.font =  KBlFont(16);
//        _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed:@"like_nomal"];
        [_CarpVideoLikeBtn addTarget:self action:@selector(CarpVideoCatagoryBtnLikeAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CarpVideoLikeBtn;
}

- (CarpVideoDetaillb *)CarpVideoFirstlb{
    if (!_CarpVideoFirstlb) {
        _CarpVideoFirstlb = [CarpVideoDetaillb new];
//        _CarpVideoFirstlb.CarpVideoToplb.text = @"220";
        _CarpVideoFirstlb.CarpVideoBtomlb.text = @"豆瓣综合得分";
    }
    return _CarpVideoFirstlb;
}

- (CarpVideoDetaillb *)CarpVideoSecondlb{
    if (!_CarpVideoSecondlb) {
        _CarpVideoSecondlb = [CarpVideoDetaillb new];
//        _CarpVideoSecondlb.CarpVideoToplb.text = @"6000";
        _CarpVideoSecondlb.CarpVideoBtomlb.text = @"实时票房（万元）";
    }
    return _CarpVideoSecondlb;
}
-(UILabel *)CarpVideoIntroducelb{
    if (!_CarpVideoIntroducelb) {
        _CarpVideoIntroducelb = [UILabel new];
        _CarpVideoIntroducelb.font = [UIFont boldSystemFontOfSize:15];
        _CarpVideoIntroducelb.textColor = LGDBLackColor;
        _CarpVideoIntroducelb.text = @"剧情介绍";
    }
    return _CarpVideoIntroducelb;
}
-(UILabel *)CarpVideoIntroduceDetaillb{
    if (!_CarpVideoIntroduceDetaillb) {
        _CarpVideoIntroduceDetaillb = [UILabel new];
        _CarpVideoIntroduceDetaillb.numberOfLines = 0;
        _CarpVideoIntroduceDetaillb.font = [UIFont boldSystemFontOfSize:12];
        _CarpVideoIntroduceDetaillb.textColor = LGDGaryColor;
//        [_CarpVideoIntroduceDetaillb setText:@"剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍剧情介绍" lineSpacing:RealWidth(4)];
    }
    return _CarpVideoIntroduceDetaillb;
}
-(UILabel *)CarpVideoArticlb{
    if (!_CarpVideoArticlb) {
        _CarpVideoArticlb = [UILabel new];
        _CarpVideoArticlb.font = [UIFont boldSystemFontOfSize:15];
        _CarpVideoArticlb.textColor = LGDBLackColor;
        _CarpVideoArticlb.text = @"演职人员";
    }
    return _CarpVideoArticlb;
}
- (UICollectionView *)CarpVideoArticlCollecionView{
    if (!_CarpVideoArticlCollecionView) {
        UICollectionViewFlowLayout * CarpLayout  = [[UICollectionViewFlowLayout alloc]init];
        CarpLayout.itemSize =  CGSizeMake(RealWidth(80), RealWidth(60));
        CarpLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        _CarpVideoArticlCollecionView  =[[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:CarpLayout];
        _CarpVideoArticlCollecionView.delegate = self;
        _CarpVideoArticlCollecionView.dataSource = self;
        _CarpVideoArticlCollecionView.showsVerticalScrollIndicator = NO;
        _CarpVideoArticlCollecionView.showsHorizontalScrollIndicator = NO;
        _CarpVideoArticlCollecionView.backgroundColor = [UIColor clearColor];
    }
    return _CarpVideoArticlCollecionView;
}
-(UILabel *)CarpVideoHotComentlb{
    if (!_CarpVideoHotComentlb) {
        _CarpVideoHotComentlb = [UILabel new];
        _CarpVideoHotComentlb.font = [UIFont boldSystemFontOfSize:15];
        _CarpVideoHotComentlb.textColor = LGDBLackColor;
        _CarpVideoHotComentlb.text = @"热门影评";
    }
    return _CarpVideoHotComentlb;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.carMoell.carpVideoHome_listArr.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoArticlCollectionViewCell * carpVideoCell = [CarpVideoArticlCollectionViewCell creatTheCollectView:collectionView AndTheIndexPath:indexPath];
    carpVideoCell.carpDic =  self.carMoell.carpVideoHome_listArr[indexPath.row];
    return carpVideoCell;
}
-(void)CarpVideoCatagoryBtnLikeAction:(CarpVideoCatagoryBtn *)btn{
//    _CarpVideoLikeBtn.CarpVideoThubImgView.image = [UIImage imageNamed: @"like-seltecd"];
    [self.delegate CarpVideoDetailHeaderViewWithColltecd:btn];
}
#pragma mark--播放
-(void)CarpVideoPlayBtnClick{
    
}
@end
