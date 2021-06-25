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
    self.navigationItem.title = @"编辑资料";
    
    UIButton * CarpVideooutBtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    [CarpVideooutBtn setFrame:CGRectMake(RealWidth(50), GK_SCREEN_HEIGHT-RealWidth(100), GK_SCREEN_WIDTH-RealWidth(100), RealWidth(40))];
    CarpVideooutBtn.titleLabel.font = KBlFont(14);
    CarpVideooutBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [CarpVideooutBtn setTitle:@"退出登录" forState:UIControlStateNormal];
    [CarpVideooutBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [CarpVideooutBtn  setBackgroundColor:LGDMianColor];
    CarpVideooutBtn.layer.cornerRadius = RealWidth(5);
    CarpVideooutBtn.layer.masksToBounds = YES;
    [CarpVideooutBtn addTarget:self action:@selector(CarpVideooutBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:CarpVideooutBtn];
    // Do any additional setup after loading the view.
}
-(void)CarpVideooutBtnClick{
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"CarpVideoLoginOutActon" object:nil];
        [LCProgressHUD hide];
        [CarpVideoLoginVideModelTool CarpVideoLoginViewModel_loginOut];
        [self.navigationController popViewControllerAnimated:YES];
    });
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoMyinfoTableViewCell * CarpVideoCell = [CarpVideoMyinfoTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    [CarpVideoCell CarpVideoMyinfoTableViewCellConfiguarWithIndexPath:indexPath];
    CarpVideoCell.carpVideouserNamelb.text = [CarpVideoLoginVideModelTool CarpVideoLogonViewModel_userName];
    return CarpVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(50);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        [LCProgressHUD showInfoMsg:@"暂不支持修改头像！"];
    }else{
        CarpVideoMyInfoEditViewController * CarpInfoVc  = [[CarpVideoMyInfoEditViewController alloc]init];
        CarpInfoVc.seltecdInfoBlock = ^{
            [_CarpVideoTableView reloadData];
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
