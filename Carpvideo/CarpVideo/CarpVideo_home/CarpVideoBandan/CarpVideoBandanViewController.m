//
//  CarpVideoBandanViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoBandanViewController.h"
#import "CarpVieoBangdanHeaderView.h"
#import "CarpVideoBangdanTableViewCell.h"
#import "CarpVideoDetailViewController.h"
@interface CarpVideoBandanViewController ()
@property(nonatomic,strong) CarpVieoBangdanHeaderView * CarpHeader;
@property(nonatomic,strong) NSMutableArray            * CarpVideoDataArr;
@end

@implementation CarpVideoBandanViewController
- (NSMutableArray *)CarpVideoDataArr{
    if (!_CarpVideoDataArr) {
        _CarpVideoDataArr = [NSMutableArray array];
    }
    return _CarpVideoDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    
    [_CarpVideoTableView setFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM)];
    _CarpVideoTableView.tableHeaderView = self.CarpHeader;
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoBandanHeaderClicks)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    // Do any additional setup after loading the view.
}
-(void)CarpVideoBandanHeaderClicks{
    [LCProgressHUD showLoading:@""];
    NSArray * dataArr = [WHC_ModelSqlite query:[CarpVideoHomeModels class]];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.7* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.CarpVideoDataArr.count > 0) {
            [weakSelf.CarpVideoDataArr removeAllObjects];
        }
        [LCProgressHUD hide];
        weakSelf.CarpVideoDataArr = dataArr.mutableCopy;
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
    });
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CarpVideoDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoBangdanTableViewCell * CarpVideoCell = [CarpVideoBangdanTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    CarpVideoCell.carpModel = self.CarpVideoDataArr[indexPath.row];
    return CarpVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(160);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoDetailViewController * carpVideoDetailVc = [[CarpVideoDetailViewController alloc]init];
    carpVideoDetailVc.hidesBottomBarWhenPushed = YES;
    carpVideoDetailVc.carpMoel = self.CarpVideoDataArr[indexPath.row];
    [self.navigationController pushViewController:carpVideoDetailVc animated:YES];
}
- (CarpVieoBangdanHeaderView *)CarpHeader{
    if (!_CarpHeader) {
        _CarpHeader = [[CarpVieoBangdanHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(155)+GK_SAFEAREA_TOP)];
    }
    return _CarpHeader;
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle =  GKNavigationBarBackStyleBlack;
        configure.titleColor = [UIColor blackColor];
    }];
}
- (UIStatusBarStyle)preferredStatusBarStyle {
if (@available(iOS 13.0, *)) {
  return UIStatusBarStyleLightContent;
    
} else {
    return UIStatusBarStyleLightContent;
}
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
