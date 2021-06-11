//
//  CarpVideoZanViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoZanViewController.h"

@interface CarpVideoZanViewController ()

@end

@implementation CarpVideoZanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"点赞消息";
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.7 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        _CarpVideoTableView.ly_emptyView = [LYEmptyView emptyViewWithImage:[UIImage imageNamed:@"zanwushuju"] titleStr:@"暂无数据" detailStr:@"建议多去发布动态～"];
    });
    // Do any additional setup after loading the view.
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
