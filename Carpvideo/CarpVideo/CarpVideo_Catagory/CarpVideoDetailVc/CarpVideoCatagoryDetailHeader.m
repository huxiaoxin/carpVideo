//
//  CarpVideoCatagoryDetailHeader.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "CarpVideoCatagoryDetailHeader.h"
#import "CarpVideoPhotoCollectionViewCell.h"
#import <GKPhotoBrowser-umbrella.h>
@interface CarpVideoCatagoryDetailHeader  ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UIImageView * CarpVideouserImgView;
@property(nonatomic,strong) UILabel     * CarpVideoNamelb;
@property(nonatomic,strong) UILabel     * CarpVideoBtomlb;
@property(nonatomic,strong) UILabel     * CarpVideoContentlb;
@property(nonatomic,strong) UICollectionView  * CarpVideophotoCollectionView;
@property(nonatomic,copy) NSArray *dataSoure;
@property(nonatomic,strong) UIButton * CarpVideoLHBtn;
@property(nonatomic,strong) UIButton * CarpVideoJBBtn;
@property(nonatomic,copy) CarpVideoCatagoryDetailAction btnIndexBlokc;
@end
@implementation CarpVideoCatagoryDetailHeader
-(instancetype)initWithFrame:(CGRect)frame cobfigerationModel:(CarpVideoCatagoryModel * )carpModel CarpVideoCatagoryDetailActionBlokc:(CarpVideoCatagoryDetailAction)btnIndexBlock{
    if (self = [super initWithFrame:frame]) {
        self.btnIndexBlokc = btnIndexBlock;
        self.dataSoure = carpModel.imgs;
        [self addSubview:self.CarpVideouserImgView];
        [self addSubview:self.CarpVideoNamelb];
        [self addSubview:self.CarpVideoBtomlb];
        [self addSubview:self.CarpVideoLHBtn];
        [self addSubview:self.CarpVideoJBBtn];
        [self addSubview:self.CarpVideoContentlb];
        [self addSubview:self.CarpVideophotoCollectionView];
        [_CarpVideouserImgView sd_setImageWithURL:[NSURL URLWithString:carpModel.imgIcon]];
        [_CarpVideouserImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.inset(RealWidth(15));
            make.size.mas_equalTo(CGSizeMake(RealWidth(36), RealWidth(36)));
        }];
        
        _CarpVideoNamelb.text =  carpModel.userName;
        [_CarpVideoNamelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideouserImgView.mas_right).offset(RealWidth(5));
            make.top.inset(RealWidth(20));
        }];
        _CarpVideoBtomlb.text  = carpModel.userlocation;
        [_CarpVideoBtomlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpVideouserImgView.mas_right).offset(RealWidth(5));
            make.top.mas_equalTo(_CarpVideoNamelb.mas_bottom).offset(RealWidth(1));
        }];
        
        [_CarpVideoLHBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(self.mas_right).offset(-RealWidth(15));
            make.centerY.mas_equalTo(_CarpVideouserImgView.mas_centerY);
        }];
        
        [_CarpVideoJBBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(_CarpVideoLHBtn.mas_left).offset(-RealWidth(10));
            make.centerY.mas_equalTo(_CarpVideouserImgView.mas_centerY);
        }];
        
        
        
        [_CarpVideoContentlb setText:carpModel.title lineSpacing:RealWidth(3)];
        [_CarpVideoContentlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(15));
            make.top.mas_equalTo(_CarpVideouserImgView.mas_bottom).offset(RealWidth(10));
        }];
        
        [_CarpVideophotoCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(0);
            make.top.mas_equalTo(_CarpVideoContentlb.mas_bottom).offset(RealWidth(10));
            make.height.mas_equalTo(RealWidth(100));
        }];
        
        [_CarpVideophotoCollectionView reloadData];
        
        MJWeakSelf;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self->_CarpVideophotoCollectionView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(self->_CarpVideophotoCollectionView.collectionViewLayout.collectionViewContentSize.height);
            }];
            [self setNeedsLayout];
            [self layoutIfNeeded];

            weakSelf.headerHeightBlock(CGRectGetMaxY(self->_CarpVideophotoCollectionView.frame));
        });
    }
    return self;
}
- (UIImageView *)CarpVideouserImgView{
    if (!_CarpVideouserImgView) {
        _CarpVideouserImgView = [UIImageView new];
        _CarpVideouserImgView.layer.cornerRadius = RealWidth(18);
        _CarpVideouserImgView.layer.masksToBounds = YES;
    }
    return _CarpVideouserImgView;
}
- (UILabel *)CarpVideoNamelb{
    if (!_CarpVideoNamelb) {
        _CarpVideoNamelb = [UILabel new];
        _CarpVideoNamelb.font = [UIFont systemFontOfSize:15];
        _CarpVideoNamelb.textColor = LGDBLackColor;
    
    }
    return _CarpVideoNamelb;
}
- (UILabel *)CarpVideoBtomlb{
    if (!_CarpVideoBtomlb) {
        _CarpVideoBtomlb = [UILabel new];
        _CarpVideoBtomlb.font = [UIFont systemFontOfSize:10];
        _CarpVideoBtomlb.textColor = LGDGaryColor;
    }
    return _CarpVideoBtomlb;
}
- (UILabel *)CarpVideoContentlb{
    if (!_CarpVideoContentlb) {
        _CarpVideoContentlb = [UILabel new];
        _CarpVideoContentlb.font = [UIFont systemFontOfSize:13];
        _CarpVideoContentlb.textColor = LGDLightBLackColor;
        _CarpVideoContentlb.numberOfLines = 0;
        
    }
    return _CarpVideoContentlb;
}
- (UIButton *)CarpVideoLHBtn{
    if (!_CarpVideoLHBtn) {
        _CarpVideoLHBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpVideoLHBtn setTitle:@"拉黑" forState:UIControlStateNormal];
        [_CarpVideoLHBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        _CarpVideoLHBtn.titleLabel.font = KBlFont(14);
        [_CarpVideoLHBtn addTarget:self action:@selector(CarpVideoLHBtnClick) forControlEvents:UIControlEventTouchUpInside];
        _CarpVideoLHBtn.tag = 1;
    }
    return _CarpVideoLHBtn;
}
- (UIButton *)CarpVideoJBBtn{
    if (!_CarpVideoJBBtn) {
        _CarpVideoJBBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _CarpVideoJBBtn.tag = 0;
        [_CarpVideoJBBtn setTitle:@"举报" forState:UIControlStateNormal];
        [_CarpVideoJBBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        [_CarpVideoJBBtn addTarget:self action:@selector(CarpVideoJBBtnClick) forControlEvents:UIControlEventTouchUpInside];
        _CarpVideoJBBtn.titleLabel.font = KBlFont(14);
    }
    return _CarpVideoJBBtn;
}
- (UICollectionView *)CarpVideophotoCollectionView{
    if (!_CarpVideophotoCollectionView) {
        UICollectionViewFlowLayout * CarpVideoLayout = [[UICollectionViewFlowLayout alloc]init];
        CarpVideoLayout.sectionInset = UIEdgeInsetsMake(0, RealWidth(15), 0, RealWidth(15));
        CarpVideoLayout.itemSize = CGSizeMake(RealWidth(100), RealWidth(100));
        _CarpVideophotoCollectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:CarpVideoLayout];
        _CarpVideophotoCollectionView.delegate  = self;
        _CarpVideophotoCollectionView.dataSource = self;
        _CarpVideophotoCollectionView.showsVerticalScrollIndicator = NO;
        _CarpVideophotoCollectionView.showsHorizontalScrollIndicator = NO;
        _CarpVideophotoCollectionView.backgroundColor = [UIColor clearColor];
    }
    return _CarpVideophotoCollectionView;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataSoure.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoPhotoCollectionViewCell * CarpVideoCel  =[CarpVideoPhotoCollectionViewCell creatTheCollectView:collectionView AndTheIndexPath:indexPath];
    CarpVideoCel.imgurl = self.dataSoure[indexPath.row];
    return CarpVideoCel;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
 
    NSMutableArray *photos = [NSMutableArray new];
    [self.dataSoure enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       GKPhoto *photo = [GKPhoto new];
       photo.url = [NSURL URLWithString:obj];
       [photos addObject:photo];
    }];

    GKPhotoBrowser *browser = [GKPhotoBrowser photoBrowserWithPhotos:photos currentIndex:indexPath.row];
    browser.showStyle = GKPhotoBrowserShowStylePush;
    [browser showFromVC:[AppDelegate shareDelegate].window.rootViewController.gk_visibleViewControllerIfExist];

    
    
    
}
-(void)CarpVideoJBBtnClick{
    
    if (self.btnIndexBlokc) {
        self.btnIndexBlokc(0);
    }
}
-(void)CarpVideoLHBtnClick{
    if (self.btnIndexBlokc) {
        self.btnIndexBlokc(1);
    }
}
@end
