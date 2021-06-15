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
#import "CarpVideoCatagoryDetailViewController.h"
#import <AVKit/AVKit.h>
@interface CarpVideoCatagroySubViewController ()<JRWaterFallLayoutDelegate,UICollectionViewDelegate,UICollectionViewDataSource,CarpVideocatagoryCollectionViewCellDelegate>
@property(nonatomic,strong) UICollectionView * CarpVideoCollectionView;
@property(nonatomic,strong) NSMutableArray   * CarpVideoDataArr;
@property(nonatomic,strong) AVPlayerViewController * avPlayer;
@end

@implementation CarpVideoCatagroySubViewController
- (AVPlayerViewController *)avPlayer{
    if (!_avPlayer) {
        _avPlayer = [[AVPlayerViewController alloc]init];
    }
    return _avPlayer;
}
- (NSMutableArray *)CarpVideoDataArr{
    if (!_CarpVideoDataArr) {
        _CarpVideoDataArr = [NSMutableArray array];
    }
    return _CarpVideoDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
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
    return  self.CarpVideoDataArr.count;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideocatagoryCollectionViewCell * pandaCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CarpVideocatagoryCollectionViewCell" forIndexPath:indexPath];
    pandaCell.tag = indexPath.row;
    pandaCell.delegate = self;
    pandaCell.carpVideoModel =  self.CarpVideoDataArr[indexPath.row];
    return pandaCell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoCatagoryDetailViewController * CarpVideoDetailVc = [[CarpVideoCatagoryDetailViewController alloc]init];
    CarpVideoDetailVc.hidesBottomBarWhenPushed = YES;
    CarpVideoDetailVc.catagoryModel = self.CarpVideoDataArr[indexPath.row];
    [self.navigationController pushViewController:CarpVideoDetailVc animated:YES];
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

- (NSUInteger)columnCountOfWaterFallLayout:(JRWaterFallLayout *)waterFallLayout{
    return 2;
}
-(void)CarpVideoCollectionViewHeaderClick{
    MJWeakSelf;
    NSArray * dataArr = [WHC_ModelSqlite  query:[CarpVideoCatagoryModel class]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.CarpVideoDataArr.count > 0) {
            [weakSelf.CarpVideoDataArr removeAllObjects];
        }
        weakSelf.CarpVideoDataArr = dataArr.mutableCopy;
        [weakSelf.CarpVideoCollectionView reloadData];
        [weakSelf.CarpVideoCollectionView.mj_header endRefreshing];
    });
}
#pragma mark--CarpVideocatagoryCollectionViewCellDelegate
//播放视频
-(void)CarpVideocatagoryCollectionViewCellWithPlayVideoIndex:(NSInteger)cellIndex{
    CarpVideoCatagoryModel * catagoryModel = self.CarpVideoDataArr[cellIndex];
    self.avPlayer.player = [[AVPlayer alloc]initWithURL:[NSURL URLWithString:catagoryModel.videoUrl]];
    [self presentViewController:_avPlayer animated:YES completion:nil];
}
//分享
-(void)CarpVideocatagoryCollectionViewCellWithShare:(NSInteger)cellIndex{
    CarpVideoCatagoryModel * catagoryModel = self.CarpVideoDataArr[cellIndex];
    //1.设定分享的内容,比如:
       NSString *shareTitle = catagoryModel.title;
       UIImage *shareImage = [UIImage imageNamed:@"whiteLogo"];
       NSURL *shareUrl = [NSURL URLWithString:@"https://www.iqiyi.com/v_2ffkws0bgr0.html?vfm=2008_aldbd&fv=p_02_01"];
    
       NSArray *activityItems = @[shareTitle,

                                 shareImage,

                                  shareUrl]; // 必须要提供url 才会显示分享标签否则只显示图片
    
       //2.创建分享的控制器
       UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:activityItems applicationActivities:nil];
       //3.设定不想显示的平台和功能
       activityVC.excludedActivityTypes = [self excludetypes];
       //4. 设置操作回调,用户点击 菜单按钮后事件执行完成会回调这个block
       activityVC.completionWithItemsHandler = ^(UIActivityType  _Nullable activityType, BOOL completed, NSArray * _Nullable returnedItems, NSError * _Nullable activityError) {
           if (completed) {
           }else{
               NSLog(@"分享失败");
       [LCProgressHUD showInfoMsg:@"取消分享"];

           }

       };

            //5.显示分享菜单
       [self presentViewController:activityVC animated:YES completion:nil];

}
-(NSArray *)excludetypes{
    NSMutableArray *excludeTypeM = [NSMutableArray arrayWithArray:@[//UIActivityTypePostToFacebook,
    UIActivityTypePostToTwitter,
    UIActivityTypePostToWeibo,
    UIActivityTypeMessage,
    UIActivityTypeMail,
    UIActivityTypePrint,
    UIActivityTypeCopyToPasteboard,
    UIActivityTypeAssignToContact,
    UIActivityTypeSaveToCameraRoll,
    UIActivityTypeAddToReadingList,
    UIActivityTypePostToFlickr,
    UIActivityTypePostToVimeo,
    UIActivityTypePostToTencentWeibo,
    UIActivityTypeAirDrop,
    UIActivityTypeOpenInIBooks]];
    if (@available(iOS 11.0, *)) {
        [excludeTypeM addObject:UIActivityTypeMarkupAsPDF];
    } else {
        // Fallback on earlier versions

    }
    return excludeTypeM;
}
//评论
-(void)CarpVideocatagoryCollectionViewCellWithComent:(NSInteger)cellIndex{
    CarpVideoCatagoryDetailViewController * CarpVideoDetailVc = [[CarpVideoCatagoryDetailViewController alloc]init];
    CarpVideoDetailVc.hidesBottomBarWhenPushed = YES;
    CarpVideoDetailVc.catagoryModel = self.CarpVideoDataArr[cellIndex];
    [self.navigationController pushViewController:CarpVideoDetailVc animated:YES];
}
//点赞
-(void)CarpVideocatagoryCollectionViewCellWithLike:(NSInteger)cellIndex{
    
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
