//
//  CarpVieoAdviceViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVieoAdviceViewController.h"
#import "CarpVideoAdViceTableViewCell.h"
#import "CarpVideoDetailViewController.h"
@interface CarpVieoAdviceViewController ()<CarpVideoAdViceTableViewCellDelegate>
@property(nonatomic,strong) NSMutableArray * dataArr;
@end

@implementation CarpVieoAdviceViewController
- (NSMutableArray *)dataArr{
    if (!_dataArr) {
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"热门推荐";
    self.view.backgroundColor = [UIColor whiteColor];
    _CarpVideoTableView.frame = CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM);
    [_CarpVideoTableView setBackgroundColor:[UIColor whiteColor]];
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVieoAdviceHeaderClicks)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoAdViceTableViewCell * CarpVideoCell = [CarpVideoAdViceTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    CarpVideoCell.delegate = self;
    CarpVideoCell.tag = indexPath.row;
    CarpVideoCell.carpMoel =  self.dataArr[indexPath.row];
    return CarpVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(170);
}
-(void)CarpVieoAdviceHeaderClicks{
    MJWeakSelf;
    NSArray * dataArr = [WHC_ModelSqlite query:[CarpVideoHomeModels class]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.dataArr.count > 0) {
            [weakSelf.dataArr removeAllObjects];
        }
        weakSelf.dataArr = dataArr.mutableCopy;
        [_CarpVideoTableView reloadData];
        [_CarpVideoTableView.mj_header endRefreshing];
    });
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoDetailViewController * caropDetailVc = [[CarpVideoDetailViewController alloc]init];
    caropDetailVc.hidesBottomBarWhenPushed = YES;
    caropDetailVc.carpMoel = self.dataArr[indexPath.row];
    [self.navigationController pushViewController:caropDetailVc animated:YES];
}
-(void)CarpVideoAdViceTableViewCellWriteActionWithIndex:(NSInteger)CellIndex{
    if ([ORAccountComponent checkLogin:YES]) {

    CarpVideoDetailViewController * caropDetailVc = [[CarpVideoDetailViewController alloc]init];
    caropDetailVc.hidesBottomBarWhenPushed = YES;
    caropDetailVc.carpMoel = self.dataArr[CellIndex];
    caropDetailVc.isShowInput = YES;
        [self.navigationController pushViewController:caropDetailVc animated:YES];}
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
