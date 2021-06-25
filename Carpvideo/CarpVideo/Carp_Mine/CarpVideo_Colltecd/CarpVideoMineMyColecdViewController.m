//
//  CarpVideoMineMyColecdViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/16.
//

#import "CarpVideoMineMyColecdViewController.h"
#import "CarpVideoAcityTableViewCell.h"
#import "CarpVideoActityDetailViewController.h"
#import "carpVideoAcitytyModel.h"
@interface CarpVideoMineMyColecdViewController ()<CarpVideoAcityTableViewCellDelegate>
@property(nonatomic,strong) NSMutableArray * CarpVideoDataArr;
@end

@implementation CarpVideoMineMyColecdViewController
- (NSMutableArray *)CarpVideoDataArr{
    if (!_CarpVideoDataArr) {
        _CarpVideoDataArr = [NSMutableArray array];
    }
    return _CarpVideoDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的收藏";
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoActityHeaderClicks)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CarpVideoDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoAcityTableViewCell * CaroVideoCell = [CarpVideoAcityTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    CaroVideoCell.carpModel = self.CarpVideoDataArr[indexPath.row];
    CaroVideoCell.tag = indexPath.row;
    CaroVideoCell.delegate = self;
    return CaroVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(170);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle = GKNavigationBarBackStyleWhite;
    }];
    CarpVideoActityDetailViewController * caropVideoDetailVc = [[CarpVideoActityDetailViewController alloc]init];
    caropVideoDetailVc.carpselMoel = self.CarpVideoDataArr[indexPath.row];
    [self.navigationController pushViewController:caropVideoDetailVc animated:YES];
}
-(void)CarpVideoActityHeaderClicks{
    MJWeakSelf;
    NSArray * dataArr = [WHC_ModelSqlite query:[carpVideoAcitytyModel class] where:[NSString stringWithFormat:@"isCollted = '%@'",@(YES)]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.CarpVideoDataArr.count > 0) {
            [weakSelf.CarpVideoDataArr removeAllObjects];
        }
        weakSelf.CarpVideoDataArr = dataArr.mutableCopy;
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
    });
}
#pragma mark--CarpVideoAcityTableViewCellDelegate
-(void)CarpVideoAcityTableViewCellWithIndex:(NSInteger)cellIndex{
    carpVideoAcitytyModel * carpModel = self.CarpVideoDataArr[cellIndex];
    CarpVideoActityDetailViewController * carpDetailVc = [[CarpVideoActityDetailViewController alloc]init];
    carpDetailVc.carpselMoel = carpModel;
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

