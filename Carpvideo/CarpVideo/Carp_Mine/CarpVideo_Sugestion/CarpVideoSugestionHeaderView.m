//
//  CarpVideoSugestionHeaderView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoSugestionHeaderView.h"
#import "CarpVideoSugestionCollectionViewCell.h"
#import "EqualSpaceFlowLayout.h"
#import "CarpVideoSugestionModel.h"
#import <UITextView+ZWPlaceHolder.h>
#import <UITextView+ZWLimitCounter.h>
@interface CarpVideoSugestionHeaderView ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UILabel * CarpVideoTpislb;
@property(nonatomic,strong) UICollectionView * CarpVideoCollectionView;
@property(nonatomic,strong) NSMutableArray   * CarpVideoDataSoure;
@property(nonatomic,strong) UILabel * CarpVideoIntroducelb;

@end
@implementation CarpVideoSugestionHeaderView
- (NSMutableArray *)CarpVideoDataSoure{
    if (!_CarpVideoDataSoure) {
        _CarpVideoDataSoure = [NSMutableArray array];
    }
    return _CarpVideoDataSoure;
}
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor whiteColor];

        
        [self addSubview:self.CarpVideoTpislb];
        [_CarpVideoTpislb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.inset(RealWidth(15));
        }];
        
        [self addSubview:self.CarpVideoCollectionView];
        [self addSubview:self.CarpVideoIntroducelb];
        
        [_CarpVideoCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(_CarpVideoTpislb.mas_bottom).offset(RealWidth(10));
            make.height.mas_equalTo(RealWidth(110));
        }];

        
        NSArray * tempArr = @[@"账号",@"首页",@"影视发布",@"闪退",@"推荐/搜索",@"消息私信",@"卡顿",@"页面优化",@"举报",@"发布动态",@"其他"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            for (int i = 0 ; i < tempArr.count; i++) {
                CarpVideoSugestionModel * sugestionMoel = [[CarpVideoSugestionModel alloc]init];
                sugestionMoel.Title = tempArr[i];
                sugestionMoel.Seltecd  = i == 0 ? YES : NO;
                [self.CarpVideoDataSoure addObject:sugestionMoel];
            }
            [self.CarpVideoCollectionView reloadData];
        });

        [_CarpVideoIntroducelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoCollectionView.mas_bottom).offset(RealWidth(15));
        }];
        
        
        UIView * ContentView = [UIView new];
        ContentView.backgroundColor  = LGDViewBJColor;
        ContentView.layer.cornerRadius = RealWidth(5);
        ContentView.layer.masksToBounds = YES;
        [self addSubview:ContentView];
        [ContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoIntroducelb.mas_bottom).offset(RealWidth(10));
            make.height.mas_equalTo(RealWidth(120));
        }];
        
        
        UITextView * CarpVideoContentTextView  = [UITextView new];
        CarpVideoContentTextView.textColor = LGDBLackColor;
        CarpVideoContentTextView.backgroundColor = [UIColor clearColor];
        CarpVideoContentTextView.font = [UIFont systemFontOfSize:14];
        CarpVideoContentTextView.zw_limitCount  = 1500;
        CarpVideoContentTextView.zw_placeHolder = @"请简要的说明下你的问题～";
        [ContentView addSubview:CarpVideoContentTextView];
        _CarpVideoContentTextView = CarpVideoContentTextView;
        
        [CarpVideoContentTextView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsMake(RealWidth(5), RealWidth(5), RealWidth(5), RealWidth(5)));
        }];
        
    }
    return self;
}
- (UICollectionView *)CarpVideoCollectionView{
    if (!_CarpVideoCollectionView) {
        EqualSpaceFlowLayout * carpLayout = [[EqualSpaceFlowLayout alloc]initWthType:AlignWithCenter];
        carpLayout.betweenOfCell = RealWidth(10);
        carpLayout.minimumLineSpacing = RealWidth(10);
        carpLayout.minimumInteritemSpacing = RealWidth(10);
        carpLayout.sectionInset =  UIEdgeInsetsMake(RealWidth(10), RealWidth(10), 0, RealWidth(10));
        _CarpVideoCollectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:carpLayout];
        _CarpVideoCollectionView.delegate = self;
        _CarpVideoCollectionView.dataSource = self;
        _CarpVideoCollectionView.showsVerticalScrollIndicator = NO;
        _CarpVideoCollectionView.showsHorizontalScrollIndicator = NO;
        _CarpVideoCollectionView.backgroundColor = [UIColor whiteColor];
        
    }
    return _CarpVideoCollectionView ;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.CarpVideoDataSoure.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoSugestionCollectionViewCell * carpVideoCell = [CarpVideoSugestionCollectionViewCell creatTheCollectView:collectionView AndTheIndexPath:indexPath];
    carpVideoCell.sugestionModel = self.CarpVideoDataSoure[indexPath.row];
    return carpVideoCell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoSugestionModel * sugestionModel = self.CarpVideoDataSoure[indexPath.row];
    CGSize  TitleSize = [sugestionModel.Title cxl_sizeWithString:[UIFont systemFontOfSize:14]];
    return CGSizeMake(TitleSize.width+RealWidth(20), RealWidth(25));
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoSugestionModel * sugestionModel = self.CarpVideoDataSoure[indexPath.row];
    sugestionModel.Seltecd = !sugestionModel.Seltecd;
    [_CarpVideoCollectionView reloadData];
    
}
- (UILabel *)CarpVideoTpislb{
    if (!_CarpVideoTpislb) {
        _CarpVideoTpislb = [UILabel new];
        _CarpVideoTpislb.font =  KBlFont(17);
        _CarpVideoTpislb.textColor = LGDBLackColor;
        _CarpVideoTpislb.text = @"问题类型";
    }
    return _CarpVideoTpislb;
}
- (UILabel *)CarpVideoIntroducelb{
    if (!_CarpVideoIntroducelb) {
        _CarpVideoIntroducelb = [UILabel new];
        _CarpVideoIntroducelb.font =  KBlFont(17);
        _CarpVideoIntroducelb.textColor = LGDBLackColor;
        _CarpVideoIntroducelb.text = @"问题说明";
    }
    return _CarpVideoIntroducelb;
}
@end
