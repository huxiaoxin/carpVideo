//
//  CarpVideoMyInfoViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoMyInfoViewController.h"
#import "CarpVideoMyInfoEditViewController.h"
#import "CarpVideoMyinfoTableViewCell.h"
@interface CarpVideoMyInfoViewController ()

@end

@implementation CarpVideoMyInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"编辑资料";
    
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoMyinfoTableViewCell * CarpVideoCell = [CarpVideoMyinfoTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    [CarpVideoCell CarpVideoMyinfoTableViewCellConfiguarWithIndexPath:indexPath];
    return CarpVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(50);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        
    }else{
        CarpVideoMyInfoEditViewController * CarpInfoVc  = [[CarpVideoMyInfoEditViewController alloc]init];
        CarpInfoVc.seltecdInfoBlock = ^{
            NSLog(@"ssssss");
        };
        CarpInfoVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:CarpInfoVc animated:YES];
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
