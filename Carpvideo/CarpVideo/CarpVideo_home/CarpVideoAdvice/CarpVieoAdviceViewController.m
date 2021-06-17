//
//  CarpVieoAdviceViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVieoAdviceViewController.h"
#import "CarpVideoAdViceTableViewCell.h"
@interface CarpVieoAdviceViewController ()<CarpVideoAdViceTableViewCellDelegate>

@end

@implementation CarpVieoAdviceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"热门推荐";
    self.view.backgroundColor = [UIColor whiteColor];
    [_CarpVideoTableView setBackgroundColor:[UIColor whiteColor]];
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVieoAdviceHeaderClicks)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoAdViceTableViewCell * CarpVideoCell = [CarpVideoAdViceTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    CarpVideoCell.delegate = self;
    CarpVideoCell.tag = indexPath.row;
    return CarpVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(170);
}
-(void)CarpVieoAdviceHeaderClicks{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [_CarpVideoTableView.mj_header endRefreshing];
    });
}
-(void)CarpVideoAdViceTableViewCellWriteActionWithIndex:(NSInteger)CellIndex{
    
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
