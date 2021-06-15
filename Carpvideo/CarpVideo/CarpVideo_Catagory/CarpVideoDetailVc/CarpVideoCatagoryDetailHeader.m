//
//  CarpVideoCatagoryDetailHeader.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "CarpVideoCatagoryDetailHeader.h"
#import "CarpVideoPhotoCollectionViewCell.h"
@interface CarpVideoCatagoryDetailHeader  ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UIImageView * CarpVideouserImgView;
@property(nonatomic,strong) UILabel     * CarpVideoNamelb;
@property(nonatomic,strong) UILabel     * CarpVideoBtomlb;
@property(nonatomic,strong) UILabel     * CarpVideoContentlb;
@property(nonatomic,strong) UICollectionView  * CarpVideophotoCollectionView;
@property(nonatomic,copy) NSArray *dataSoure;
@end
@implementation CarpVideoCatagoryDetailHeader
-(instancetype)initWithFrame:(CGRect)frame cobfigerationModel:(CarpVideoCatagoryModel * )carpModel{
    if (self = [super initWithFrame:frame]) {
        self.dataSoure = carpModel.imgs;
        [self addSubview:self.CarpVideouserImgView];
        [self addSubview:self.CarpVideoNamelb];
        [self addSubview:self.CarpVideoBtomlb];
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
@end
