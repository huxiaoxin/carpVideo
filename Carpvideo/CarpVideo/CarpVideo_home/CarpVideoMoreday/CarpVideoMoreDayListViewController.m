//
//  CarpVideoMoreDayListViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoMoreDayListViewController.h"
#import "CaroVideoDayListCollectionViewCell.h"
#import "CarpVideoDetailViewController.h"
@interface CarpVideoMoreDayListViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property(nonatomic,strong) UICollectionView * CarpVideoMoreCollectionView;
@property(nonatomic,strong) NSMutableArray  * CarpVideoDataArr;
@end

@implementation CarpVideoMoreDayListViewController
- (NSMutableArray *)CarpVideoDataArr{
    if (!_CarpVideoDataArr) {
        _CarpVideoDataArr = [NSMutableArray array];
    }
    return _CarpVideoDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"每日推荐";
    [self.view addSubview:self.CarpVideoMoreCollectionView];
    // Do any additional setup after loading the view.
}
- (UICollectionView *)CarpVideoMoreCollectionView{
    if (!_CarpVideoMoreCollectionView) {
        UICollectionViewFlowLayout * carpLayout = [[UICollectionViewFlowLayout alloc]init];
        carpLayout.itemSize =  CGSizeMake(RealWidth(160), RealWidth(120));
        carpLayout.sectionInset =  UIEdgeInsetsMake(RealWidth(10), RealWidth(16), 0, RealWidth(16));
        _CarpVideoMoreCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_SAFEAREA_BTM) collectionViewLayout:carpLayout];
        _CarpVideoMoreCollectionView.delegate = self;
        _CarpVideoMoreCollectionView.dataSource = self;
        _CarpVideoMoreCollectionView.showsVerticalScrollIndicator = NO;
        _CarpVideoMoreCollectionView.showsHorizontalScrollIndicator = NO;
        _CarpVideoMoreCollectionView.backgroundColor = [UIColor clearColor];
        _CarpVideoMoreCollectionView.mj_header =[MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoheaderClicks)];
        [_CarpVideoMoreCollectionView.mj_header beginRefreshing];
    }
    return _CarpVideoMoreCollectionView;
}
-(void)CarpVideoheaderClicks{
    NSArray * dataArr = [WHC_ModelSqlite query:[CarpVideoHomeModels class]];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        if (weakSelf.CarpVideoDataArr.count > 0) {
            [weakSelf.CarpVideoDataArr removeAllObjects];
        }
        if (dataArr.count > 10) {
            weakSelf.CarpVideoDataArr = [dataArr subarrayWithRange:NSMakeRange(0, 9)].mutableCopy;

        }else{
            weakSelf.CarpVideoDataArr = dataArr.mutableCopy;
        }
        [self->_CarpVideoMoreCollectionView reloadData];
        [self->_CarpVideoMoreCollectionView.mj_header endRefreshing];
    });
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.CarpVideoDataArr.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CaroVideoDayListCollectionViewCell * CarpVideoCell = [CaroVideoDayListCollectionViewCell creatTheCollectView:collectionView AndTheIndexPath:indexPath];
    CarpVideoCell.carModel = self.CarpVideoDataArr[indexPath.row];
    return CarpVideoCell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoDetailViewController * carpDetailVc = [[CarpVideoDetailViewController alloc]init];
    carpDetailVc.carpMoel = self.CarpVideoDataArr[indexPath.row];
    carpDetailVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:carpDetailVc animated:YES];
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
