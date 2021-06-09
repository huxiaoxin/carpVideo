//
//  CarpVideoMessageViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoMessageViewController.h"
#import "CarpVideoMessageHeaderView.h"
#import "CarpVideoMessageTableViewCell.h"
@interface CarpVideoMessageViewController ()
@property(nonatomic,strong) CarpVideoMessageHeaderView * CarpHeaderView;

@end

@implementation CarpVideoMessageViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.gk_navTitle = @"消息";
    self.view.backgroundColor = [UIColor whiteColor];

    [_CarpVideoTableView setBackgroundColor:[UIColor whiteColor]];
    [_CarpVideoTableView setFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_TABBAR_HEIGHT)];
    _CarpVideoTableView.tableHeaderView = self.CarpHeaderView;
}
- (CarpVideoMessageHeaderView *)CarpHeaderView{
    if (!_CarpHeaderView) {
        _CarpHeaderView = [[CarpVideoMessageHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(80))];
    }
    return _CarpHeaderView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoMessageTableViewCell * CarpMessageCell = [CarpVideoMessageTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    return CarpMessageCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(53);
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
