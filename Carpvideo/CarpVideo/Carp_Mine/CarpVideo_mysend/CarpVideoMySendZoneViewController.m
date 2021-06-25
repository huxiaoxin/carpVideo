//
//  CarpVideoMySendZoneViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoMySendZoneViewController.h"

@interface CarpVideoMySendZoneViewController ()

@end

@implementation CarpVideoMySendZoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title  = @"我的发布";
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showInfoMsg:@"暂无数据"];
        LYEmptyView  * lyemtyview = [LYEmptyView emptyActionViewWithImage:[UIImage imageNamed:@"zanwushuju"] titleStr:@"暂无数据" detailStr:@"" btnTitleStr:@"去发布" target:self action:@selector(CarpVideoMySendZoneVHeaderClicks)];
        lyemtyview.actionBtnCornerRadius = RealWidth(5);
        lyemtyview.actionBtnTitleColor = [UIColor whiteColor];
        lyemtyview.actionBtnBackGroundColor = LGDMianColor;
        self->_CarpVideoTableView.ly_emptyView = lyemtyview;
    });
    
    // Do any additional setup after loading the view.
}
-(void)CarpVideoMySendZoneVHeaderClicks{
//    [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];
//    self.tabBarController.selectedIndex = 2;
    
    [AppDelegate shareDelegate].CarpVideoTabbar.selectedIndex = 2;
    
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
