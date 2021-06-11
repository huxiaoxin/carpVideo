//
//  CarpVideoMineHeaderView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoMineHeaderView.h"
#import "CarpVideoMineBtn.h"
@interface CarpVideoMineHeaderView ()
@property(nonatomic,strong) UIView * CarpVideoBackView;
@property(nonatomic,strong) UIImageView * CarpVideoBackImgView;
@property(nonatomic,strong) UILabel     * CarpVideoNamelb;
@property(nonatomic,strong) UILabel     * CarpVideoDetailb;
@property(nonatomic,strong) UIImageView * CarpVideouserImgView;
@property(nonatomic,strong) UIButton    * CarpVideoRightImgView;
@property(nonatomic,strong) UIView      * CarpbtnView;

@end
@implementation CarpVideoMineHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor =  [UIColor blueColor];
        [self addSubview:self.CarpVideoBackView];
        [self addSubview:self.CarpVideoBackImgView];
        [_CarpVideoBackImgView addSubview:self.CarpVideoNamelb];
        [_CarpVideoBackImgView addSubview:self.CarpVideoDetailb];
        [_CarpVideoBackImgView addSubview:self.CarpVideouserImgView];
        [_CarpVideoBackImgView addSubview:self.CarpVideoRightImgView];
        [self addSubview:self.CarpbtnView];
        
        
        [_CarpVideoBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(0);
            make.bottom.mas_equalTo(self.mas_top);
            make.height.mas_equalTo(GK_SCREEN_HEIGHT);
        }];
        
        [_CarpVideoBackImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(self);
            make.height.mas_equalTo(RealWidth(120)+GK_SAFEAREA_TOP);
        }];
        
        [_CarpVideoNamelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(20));
            make.top.mas_equalTo(GK_SAFEAREA_TOP+RealWidth(15));
            
        }];
        [_CarpVideoDetailb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(20));
            make.top.mas_equalTo(_CarpVideoNamelb.mas_bottom).offset(RealWidth(5));
        }];
        [_CarpVideouserImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-RealWidth(20));
            make.top.mas_equalTo(GK_SAFEAREA_TOP+RealWidth(15));
            make.size.mas_equalTo(CGSizeMake(RealWidth(40), RealWidth(40)));
        }];
        
        [_CarpbtnView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(_CarpVideoBackImgView.mas_centerY).offset(RealWidth(50));
            make.height.mas_equalTo(RealWidth(100));
            
        }];
        
        UILabel * CarpbtnTpislb = [UILabel new];
        CarpbtnTpislb.textColor = LGDBLackColor;
        CarpbtnTpislb.text = @"我的功能";
        CarpbtnTpislb.font =  KBlFont(16);
        [_CarpbtnView addSubview:CarpbtnTpislb];
        
        [CarpbtnTpislb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.inset(RealWidth(15));
        }];

        NSMutableArray * btnTempArr = [NSMutableArray array];
        NSArray * CarpbtnTitleArr = @[@"我的发布",@"我的收藏",@"我的浏览",@"我的关注"];
        for (int index = 0; index < CarpbtnTitleArr.count ; index ++) {
            CarpVideoMineBtn * mineBtn = [CarpVideoMineBtn new];
            mineBtn.CarpVideoBtomlb.text = CarpbtnTitleArr[index];
            mineBtn.CarpVideoTopImgView.image = [UIImage imageNamed:CarpbtnTitleArr[index]];
            mineBtn.tag = index;
            [mineBtn addTarget:self action:@selector(CarpVideoMineBtnClick:) forControlEvents:UIControlEventTouchUpInside];
            [_CarpbtnView addSubview:mineBtn];
            [btnTempArr addObject:mineBtn];
        }
        [btnTempArr mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:RealWidth(10) leadSpacing:RealWidth(5) tailSpacing:RealWidth(5)];
        [btnTempArr mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(CarpbtnTpislb.mas_bottom).offset(RealWidth(10));
        }];
        
        
        
    }
    return self;
}
-(void)CarpVideoMineBtnClick:(CarpVideoMineBtn *)mineBtn{
    [self.delegate CarpVideoMineHeaderViewBtnDidClickIndex:mineBtn.tag];
}
- (UIView *)CarpVideoBackView{
    if (!_CarpVideoBackView) {
        _CarpVideoBackView = [UIView new];
        _CarpVideoBackView.backgroundColor = LGDMianColor;
    }
    return _CarpVideoBackView;
}
- (UIImageView *)CarpVideoBackImgView{
    if (!_CarpVideoBackImgView) {
        _CarpVideoBackImgView = [UIImageView new];
        _CarpVideoBackImgView.backgroundColor = LGDMianColor;
        _CarpVideoBackImgView.userInteractionEnabled = YES;
    }
    return _CarpVideoBackImgView;
}
- (UILabel *)CarpVideoNamelb{
    if (!_CarpVideoNamelb) {
        _CarpVideoNamelb =[UILabel new];
        _CarpVideoNamelb.font =  KBlFont(20);
        _CarpVideoNamelb.textColor = [UIColor whiteColor];
        _CarpVideoNamelb.text = @"关耳羊羽";
    }
    return _CarpVideoNamelb;
}
- (UILabel *)CarpVideoDetailb{
    if (!_CarpVideoDetailb) {
        _CarpVideoDetailb =[UILabel new];
        _CarpVideoDetailb.font =  KBlFont(12);
        _CarpVideoDetailb.textColor = [UIColor whiteColor];
        _CarpVideoDetailb.text = @"唯有热爱，方能抵御岁月漫长!";
    }
    return _CarpVideoDetailb;
}
- (UIImageView *)CarpVideouserImgView{
    if (!_CarpVideouserImgView) {
        _CarpVideouserImgView = [UIImageView new];
        _CarpVideouserImgView.layer.cornerRadius = RealWidth(20);
        _CarpVideouserImgView.layer.masksToBounds = YES;
        _CarpVideouserImgView.image = [UIImage imageNamed:@"whiteLogo"];
        _CarpVideouserImgView.userInteractionEnabled = YES;
        UITapGestureRecognizer * CarpVideoTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(CarpVideouserImgViewTapClick)];
        [_CarpVideouserImgView addGestureRecognizer:CarpVideoTap];
    }
    return _CarpVideouserImgView;
}
-(void)CarpVideouserImgViewTapClick{
    [self.delegate CarpVideoMineHeaderViewTapInfoClicks];
    
}
- (UIView *)CarpbtnView{
    if (!_CarpbtnView) {
        _CarpbtnView = [[UIView alloc]initWithFrame:CGRectZero];
        [_CarpbtnView setBackgroundColor:[UIColor whiteColor]];
        [_CarpbtnView acs_radiusWithRadius:RealWidth(15) corner:UIRectCornerTopLeft | UIRectCornerTopRight];
    }
    return _CarpbtnView;
}
@end
