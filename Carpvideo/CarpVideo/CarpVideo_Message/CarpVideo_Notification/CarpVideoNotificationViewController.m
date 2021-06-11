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

@end

@implementation CarpVideoNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"我的消息";
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
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
