//
//  CarpVideoNotificationViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoNotificationViewController.h"
#import "CarpVideoNotiCationTableViewCell.h"
#import "CarpVideoNotifiCationDetailViewController.h"
@interface CarpVideoNotificationViewController ()
@property(nonatomic,assign) BOOL  isLoads;
@end

@implementation CarpVideoNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isLoads =  NO;
    self.gk_navTitle = @"我的消息";
    
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoNotificationHeaderClicks)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    // Do any additional setup after loading the view.
}
-(void)CarpVideoNotificationHeaderClicks{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        weakSelf.isLoads = YES;
        [_CarpVideoTableView.mj_header endRefreshing];
        [_CarpVideoTableView reloadData];
    });
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.isLoads ? 1 : 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoNotiCationTableViewCell * CarpCell = [CarpVideoNotiCationTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    return CarpCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(100);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoNotifiCationDetailViewController * NotiFicationDetailVc = [[CarpVideoNotifiCationDetailViewController alloc]init];
    NotiFicationDetailVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:NotiFicationDetailVc animated:YES];
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
