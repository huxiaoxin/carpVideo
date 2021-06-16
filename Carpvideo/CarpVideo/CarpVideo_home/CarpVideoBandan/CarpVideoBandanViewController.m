//
//  CarpVideoBandanViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoBandanViewController.h"
#import "CarpVieoBangdanHeaderView.h"
#import "CarpVideoBangdanTableViewCell.h"
@interface CarpVideoBandanViewController ()
@property(nonatomic,strong) CarpVieoBangdanHeaderView * CarpHeader;
@end

@implementation CarpVideoBandanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    
    [_CarpVideoTableView setFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM)];
    _CarpVideoTableView.tableHeaderView = self.CarpHeader;
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoBangdanTableViewCell * CarpVideoCell = [CarpVideoBangdanTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    return CarpVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(160);
}
- (CarpVieoBangdanHeaderView *)CarpHeader{
    if (!_CarpHeader) {
        _CarpHeader = [[CarpVieoBangdanHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(155)+GK_SAFEAREA_TOP)];
    }
    return _CarpHeader;
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle =  GKNavigationBarBackStyleBlack;
        configure.titleColor = [UIColor blackColor];
    }];
}
- (UIStatusBarStyle)preferredStatusBarStyle {
if (@available(iOS 13.0, *)) {
  return UIStatusBarStyleLightContent;
    
} else {
    return UIStatusBarStyleLightContent;
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
