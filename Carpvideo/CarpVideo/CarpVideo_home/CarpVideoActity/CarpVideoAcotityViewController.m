//
//  CarpVideoAcotityViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/16.
//

#import "CarpVideoAcotityViewController.h"
#import "CarpVideoAcityTableViewCell.h"
#import "CarpVideoActityDetailViewController.h"
@interface CarpVideoAcotityViewController ()
@property(nonatomic,strong) NSMutableArray * CarpVideoDataArr;
@end

@implementation CarpVideoAcotityViewController
- (NSMutableArray *)CarpVideoDataArr{
    if (!_CarpVideoDataArr) {
        _CarpVideoDataArr = [NSMutableArray array];
    }
    return _CarpVideoDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"活动列表";
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoActityHeaderClicks)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoAcityTableViewCell * CaroVideoCell = [CarpVideoAcityTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    return CaroVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(170);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoActityDetailViewController * caropVideoDetailVc = [[CarpVideoActityDetailViewController alloc]init];
    [self.navigationController pushViewController:caropVideoDetailVc animated:YES];
}
-(void)CarpVideoActityHeaderClicks{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
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
