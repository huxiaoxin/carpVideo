//
//  CarpVideoHomeHeaderView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoHomeHeaderView.h"
#import <SDCycleScrollView-umbrella.h>
#import "CarpVideoHomeBtn.h"
#import "CarpVideoHomeCollectionViewCell.h"
#import "CarpVideoMessageBtn.h"
@interface CarpVideoHomeHeaderView ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UIView * CarpVideoBtnView;
@property(nonatomic,strong) UICollectionView  * CarpVideoCollectionView;
@end
@implementation CarpVideoHomeHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = LGDViewBJColor;
        UIView * CarpVideoTopView = [[UIView alloc]initWithFrame:CGRectMake(0, -GK_SCREEN_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT)];
        CarpVideoTopView.backgroundColor =  LGDMianColor;
        [self addSubview:CarpVideoTopView];
        
        
        UIImageView *  CarpBackImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(150))];
        CarpBackImgView.image =[UIImage imageNamed:@"lk_CloudImgV"];
        [self  addSubview:CarpBackImgView];
        
        
        UIImageView * CarpVideoLogoImgView  = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(15), GK_STATUSBAR_HEIGHT, RealWidth(30), RealWidth(30))];
        CarpVideoLogoImgView.image = [UIImage imageNamed:@"backLogo"];
        [CarpBackImgView addSubview:CarpVideoLogoImgView];
        
        UILabel * CarpVideoToplb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(CarpVideoLogoImgView.frame)+RealWidth(5), CGRectGetMinY(CarpVideoLogoImgView.frame)+2, RealWidth(200), RealWidth(15))];
        CarpVideoToplb.textColor = [UIColor whiteColor];
        CarpVideoToplb.font = KFZPFont(14);
        CarpVideoToplb.text = @"鲤鱼视频";
        [CarpBackImgView addSubview:CarpVideoToplb];
        
        UILabel * CarpVideoBtomlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(CarpVideoLogoImgView.frame)+RealWidth(5), CGRectGetMaxY(CarpVideoToplb.frame), RealWidth(200), RealWidth(12))];
        CarpVideoBtomlb.textColor = [UIColor whiteColor];
        CarpVideoBtomlb.font = KBlFont(14);
        CarpVideoBtomlb.text = @"C  A  R  P";
        [CarpBackImgView addSubview:CarpVideoBtomlb];
        
        
        UIButton * CarpMsgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [CarpMsgBtn setFrame:CGRectMake(GK_SCREEN_WIDTH-RealWidth(35), GK_STATUSBAR_HEIGHT, RealWidth(20), RealWidth(20))];
        [CarpMsgBtn setImage:[UIImage imageNamed:@"sousuo"] forState:UIControlStateNormal];
        [CarpMsgBtn addTarget:self action:@selector(CarpMsgBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [CarpBackImgView addSubview:CarpMsgBtn];
        
        SDCycleScrollView * SDCView = [[SDCycleScrollView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(50+30), GK_SCREEN_WIDTH-RealWidth(30), RealWidth(150))];
        SDCView.showPageControl = NO;
        SDCView.layer.cornerRadius = RealWidth(5);
        SDCView.layer.masksToBounds = YES;
        SDCView.imageURLStringsGroup = @[@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fs13.sinaimg.cn%2Fmiddle%2F4c69906bx93d4c708facc%26690&refer=http%3A%2F%2Fs13.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625723785&t=af2d1e0ae47dd0306adddfbb67fb6366",@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgss0.baidu.com%2F-Po3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2Fd01373f082025aafa76ca384feedab64034f1a26.jpg&refer=http%3A%2F%2Fgss0.baidu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625723785&t=3afef2da688f45415bcbb13917b2a0de"];
        SDCView.titlesGroup =  @[@"风云兴霸天下",@"速度与激情9"];
        [self addSubview:SDCView];
        
        
        
        UIView * carpVideobtnView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), CGRectGetMaxY(SDCView.frame)+RealWidth(15), GK_SCREEN_WIDTH-RealWidth(30), RealWidth(80))];
        [carpVideobtnView setBackgroundColor:[UIColor whiteColor]];
        carpVideobtnView.layer.cornerRadius = RealWidth(5);
        carpVideobtnView.layer.masksToBounds = YES;
        [self addSubview:carpVideobtnView];
        NSArray * BtnArr = @[@"实时榜单",@"热门推荐",@"影视报道",@"首映活动"];
        NSArray *  ColorArr = @[@"FC305A",@"594d9c",@"d9830b",@"bd8cbb"];
        for (int index = 0; index < BtnArr.count; index ++) {
            CarpVideoMessageBtn * carpBtn =  [[CarpVideoMessageBtn alloc]initWithFrame:CGRectMake(CGRectGetWidth(carpVideobtnView.frame)/BtnArr.count* index, RealWidth(10), CGRectGetWidth(carpVideobtnView.frame)/BtnArr.count, CGRectGetHeight(carpVideobtnView.frame))];
            carpBtn.tag =  index;
            carpBtn.CarpVideo_ContentView.backgroundColor = [UIColor colorWithHexString:ColorArr[index] Alpha:0.15];
            carpBtn.CarpBtomlb.text =  BtnArr[index];
            carpBtn.CarpImgView.image  = [UIImage imageNamed:BtnArr[index]];
            [carpBtn addTarget:self action:@selector(CarpVideoHomeBtnClick:) forControlEvents:UIControlEventTouchUpInside];
            [carpVideobtnView addSubview:carpBtn];
        }
        UIView * CarpViewHotView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), CGRectGetMaxY(carpVideobtnView.frame)+RealWidth(15), GK_SCREEN_WIDTH-RealWidth(30), RealWidth(170))];
        CarpViewHotView.backgroundColor = [UIColor whiteColor];
        CarpViewHotView.layer.cornerRadius = RealWidth(5);
        CarpViewHotView.layer.masksToBounds = YES;
        [self addSubview:CarpViewHotView];
        
        
        UILabel * CarpVideoDayTitle = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(10), RealWidth(200), RealWidth(20))];
        CarpVideoDayTitle.font = KBlFont(16);
        CarpVideoDayTitle.textColor = LGDBLackColor;
        [CarpViewHotView addSubview:CarpVideoDayTitle];
        NSString * hotText  = @"每日推荐 ";
        NSTextAttachment * attment = [[NSTextAttachment alloc]init];
        attment.image = [UIImage imageNamed:@"hot"];
        attment.bounds = CGRectMake(0, 0, 50/1.5, 20/1.5);
        NSAttributedString * attbute = [NSAttributedString attributedStringWithAttachment:attment];
        NSMutableAttributedString * muatbuAtt = [[NSMutableAttributedString alloc]initWithString:hotText];
        [muatbuAtt insertAttributedString:attbute atIndex:hotText.length];
        CarpVideoDayTitle.attributedText = muatbuAtt;
        
        
        UIButton * CarpVideoMoreBtn   = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetWidth(CarpViewHotView.frame)-RealWidth(50), CGRectGetMidY(CarpVideoDayTitle.frame)-RealWidth(10), RealWidth(50), RealWidth(20))];
        [CarpVideoMoreBtn setTitleColor:LGDLightBLackColor forState:UIControlStateNormal];
        CarpVideoMoreBtn.titleLabel.font = [UIFont systemFontOfSize:font(13)];
        [CarpVideoMoreBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, -25, 0, 25)];
        [CarpVideoMoreBtn setImageEdgeInsets:UIEdgeInsetsMake(0, 25, 0, -25)];
        [CarpVideoMoreBtn setTitle:@"更多" forState:UIControlStateNormal];
        [CarpVideoMoreBtn setImage:[UIImage imageNamed:@"youbian-small"] forState:UIControlStateNormal];
        [CarpVideoMoreBtn addTarget:self action:@selector(CarpVideoMoreBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [CarpViewHotView addSubview:CarpVideoMoreBtn];
        
        UICollectionViewFlowLayout * CarpViewLayout = [[UICollectionViewFlowLayout alloc]init];
        CarpViewLayout.scrollDirection  = UICollectionViewScrollDirectionHorizontal;
        CarpViewLayout.itemSize = CGSizeMake(RealWidth(170), CGRectGetHeight(CarpViewHotView.frame)-CGRectGetMaxY(CarpVideoDayTitle.frame));
        UICollectionView * CarpVideoCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(CarpVideoDayTitle.frame), CGRectGetWidth(CarpViewHotView.frame), CGRectGetHeight(CarpViewHotView.frame)-CGRectGetMaxY(CarpVideoDayTitle.frame)) collectionViewLayout:CarpViewLayout];
        CarpVideoCollectionView.delegate =  self;
        CarpVideoCollectionView.dataSource = self;
        CarpVideoCollectionView.backgroundColor =  [UIColor clearColor];
        CarpVideoCollectionView.showsVerticalScrollIndicator = NO;
        CarpVideoCollectionView.showsHorizontalScrollIndicator = NO;
        [CarpViewHotView addSubview:CarpVideoCollectionView];
        [CarpVideoCollectionView registerClass:[CarpVideoHomeCollectionViewCell class] forCellWithReuseIdentifier:@"CarpVideoHomeCollectionViewCell"];
        
        
    }
    return self;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
-(void)CarpVideoHomeBtnClick:(CarpVideoHomeBtn *)homeBtn{
    [self.delegate CarpVideoHomeHeaderViewWithbtnIndex:homeBtn.tag];
}
// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoHomeCollectionViewCell * carpVideoCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CarpVideoHomeCollectionViewCell" forIndexPath:indexPath];
    return carpVideoCell;
}
-(void)CarpMsgBtnClick{
    [self.delegate CarpVideoHomeHeaderViewSearchAction];
}
-(void)CarpVideoMoreBtnClick{
    [self.delegate CarpVideoHomeHeaderViewMoreDayAction];
}
@end
