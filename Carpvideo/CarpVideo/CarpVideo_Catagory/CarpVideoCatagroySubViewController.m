//
//  CarpVideoCatagroySubViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoCatagroySubViewController.h"
#import "JRWaterFallLayout.h"
#import "CarpVideocatagoryCollectionViewCell.h"
#import "CarpVideoCatagoryModel.h"
#import <MJRefresh.h>
@interface CarpVideoCatagroySubViewController ()<JRWaterFallLayoutDelegate,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UICollectionView * CarpVideoCollectionView;
@property(nonatomic,strong) NSMutableArray   * CarpVideoDataArr;
@property(nonatomic,assign) BOOL    isCarpVideo;
@end

@implementation CarpVideoCatagroySubViewController
- (NSMutableArray *)CarpVideoDataArr{
    if (!_CarpVideoDataArr) {
        _CarpVideoDataArr = [NSMutableArray array];
        CarpVideoCatagoryModel * carpModel = [[CarpVideoCatagoryModel alloc]init];
        carpModel.CarpCellHeight = 0;
        [_CarpVideoDataArr addObject:carpModel];
        
        CarpVideoCatagoryModel * carpModel1 = [[CarpVideoCatagoryModel alloc]init];
        carpModel1.CarpCellHeight = 0;
        [_CarpVideoDataArr addObject:carpModel1];
        
        CarpVideoCatagoryModel * carpModel2 = [[CarpVideoCatagoryModel alloc]init];
        carpModel2.CarpCellHeight = 0;
        [_CarpVideoDataArr addObject:carpModel2];
        
        
        CarpVideoCatagoryModel * carpModel3 = [[CarpVideoCatagoryModel alloc]init];
        carpModel3.CarpCellHeight = 0;
        [_CarpVideoDataArr addObject:carpModel3];
    }
    return _CarpVideoDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    self.isCarpVideo = NO;
    [self.view addSubview:self.CarpVideoCollectionView];
    [_CarpVideoCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
        }];
    [_CarpVideoCollectionView registerClass:[CarpVideocatagoryCollectionViewCell class] forCellWithReuseIdentifier:@"CarpVideocatagoryCollectionViewCell"];
    [_CarpVideoCollectionView reloadData];
}
- (UICollectionView *)CarpVideoCollectionView{
    if (!_CarpVideoCollectionView) {
        JRWaterFallLayout * cardVideoLayout = [[JRWaterFallLayout alloc]init];
        cardVideoLayout.delegate = self;
        _CarpVideoCollectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:cardVideoLayout];
        _CarpVideoCollectionView.backgroundColor = [UIColor clearColor];
        _CarpVideoCollectionView.showsVerticalScrollIndicator = NO;
        _CarpVideoCollectionView.showsHorizontalScrollIndicator = NO;
        _CarpVideoCollectionView.delegate = self;
        _CarpVideoCollectionView.dataSource = self;
        _CarpVideoCollectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoCollectionViewHeaderClick)];
        [_CarpVideoCollectionView.mj_header beginRefreshing];
    }
    return _CarpVideoCollectionView;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.isCarpVideo ? self.CarpVideoDataArr.count : 0;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideocatagoryCollectionViewCell * pandaCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CarpVideocatagoryCollectionViewCell" forIndexPath:indexPath];

    pandaCell.carpVideoModel =  self.CarpVideoDataArr[indexPath.row];
    return pandaCell;
}
#pragma mark--JRWaterFallLayoutDelegate
- (CGFloat)waterFallLayout:(JRWaterFallLayout *)waterFallLayout heightForItemAtIndex:(NSUInteger)index width:(CGFloat)width
{
    CarpVideoCatagoryModel * cataModel = self.CarpVideoDataArr[index];
    return  cataModel.CarpCellHeight;
    
}
- (CGFloat)columnMarginOfWaterFallLayout:(JRWaterFallLayout *)waterFallLayout{
    return RealWidth(15);
}
- (CGFloat)rowMarginOfWaterFallLayout:(JRWaterFallLayout *)waterFallLayout{
    return  RealWidth(15);
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
  
}
- (NSUInteger)columnCountOfWaterFallLayout:(JRWaterFallLayout *)waterFallLayout{
    return 2;
}
-(void)CarpVideoCollectionViewHeaderClick{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        weakSelf.isCarpVideo = YES;
        [weakSelf.CarpVideoCollectionView reloadData];
        [weakSelf.CarpVideoCollectionView.mj_header endRefreshing];
    });
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
