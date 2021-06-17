//
//  CarpVideoDetailViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoDetailViewController.h"
#import "CarpVideoDetailHeaderView.h"
#import "CarpVideoDetailTableViewCell.h"
@interface CarpVideoDetailViewController ()
@property(nonatomic,strong) CarpVideoDetailHeaderView * CarpVideoHeader;

@end

@implementation CarpVideoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    _CarpVideoTableView.frame = CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM);
    _CarpVideoTableView.tableHeaderView = self.CarpVideoHeader;
    // Do any additional setup after loading the view.
}
- (CarpVideoDetailHeaderView *)CarpVideoHeader{
    if (!_CarpVideoHeader) {
        _CarpVideoHeader = [[CarpVideoDetailHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(600))];
    }
    return _CarpVideoHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoDetailTableViewCell * carpVideoCell = [CarpVideoDetailTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];

    return carpVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(140);
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
