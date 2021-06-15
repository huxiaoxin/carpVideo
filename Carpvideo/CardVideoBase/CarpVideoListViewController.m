//
//  CarpVideoListViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoListViewController.h"
#import "CarpVideoLogoinViewController.h"
@interface CarpVideoListViewController ()

@end

@implementation CarpVideoListViewController
-(void)CarpVideoShowLoginVc{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CarpVideoLogoinViewController * carologinVc = [[CarpVideoLogoinViewController alloc]init];
        UINavigationController * carpLoNav = [UINavigationController rootVC:carologinVc translationScale:YES];
        [self  presentViewController:carpLoNav animated:YES completion:nil];
    });
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    self.gk_navLineHidden = YES;
    self.view.backgroundColor = LGDViewBJColor;
    _CarpVideoTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT - GK_STATUSBAR_NAVBAR_HEIGHT - GK_SAFEAREA_BTM) style:UITableViewStylePlain];
    _CarpVideoTableView.delegate = self;
    _CarpVideoTableView.dataSource = self;
    _CarpVideoTableView.backgroundView = nil;
    _CarpVideoTableView.showsVerticalScrollIndicator=NO;
    _CarpVideoTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _CarpVideoTableView.separatorColor = [UIColor clearColor];
    _CarpVideoTableView.backgroundColor = LGDViewBJColor;
    _CarpVideoTableView.estimatedSectionHeaderHeight = 0;
    _CarpVideoTableView.estimatedSectionFooterHeight = 0;
    [self.view addSubview:_CarpVideoTableView];
    // Do any additional setup after loading the view.
}
- (BOOL)shouldAutorotate {
    // 只支持竖屏
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}
#pragma mark- 委托部分

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.000f;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.00f;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return nil;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
