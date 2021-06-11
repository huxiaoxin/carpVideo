//
//  CarpVideoMineViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoMineViewController.h"
#import "CarpVideoMineTableViewCell.h"
#import "CarpVideoMineHeaderView.h"
#import "CarpVideoMySendZoneViewController.h"
#import "CarpVieoSugestionViewController.h"
#import "CarpVideoAboutusViewController.h"
#import "CarpVideoKefuViewController.h"
#import "CarpVideoAboutusViewController.h"
#import "CarpVideoMyInfoViewController.h"
@interface CarpVideoMineViewController ()<CarpVideoMineHeaderViewDelegate>
@property(nonatomic,strong) NSMutableArray * CarpMineDataArr;
@property(nonatomic,strong) CarpVideoMineHeaderView * CarpMineHeader;
@end

@implementation CarpVideoMineViewController
- (NSMutableArray *)CarpMineDataArr{
    if (!_CarpMineDataArr) {
        _CarpMineDataArr = [NSMutableArray arrayWithArray:@[@"意见反馈",@"关于我们",@"清除缓存",@"客服中心",@"版本号",@"退出登录"]];
    }
    return _CarpMineDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gk_navigationBar.hidden = YES;
    [_CarpVideoTableView setFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_TABBAR_HEIGHT)];
    _CarpVideoTableView.tableHeaderView = self.CarpMineHeader;
    
    // Do any additional setup after loading the view.
}
- (CarpVideoMineHeaderView *)CarpMineHeader{
    if (!_CarpMineHeader) {
        _CarpMineHeader = [[CarpVideoMineHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(185)+GK_SAFEAREA_TOP)];
        _CarpMineHeader.delegate = self;
    }
    return _CarpMineHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoMineTableViewCell * carpMineCell = [CarpVideoMineTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    [carpMineCell CarpVideoMineTableViewCellConfigDatasoure:self.CarpMineDataArr indexPath:indexPath];
    return carpMineCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(50);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        CarpVieoSugestionViewController * CarpVc = [[CarpVieoSugestionViewController alloc]init];
        CarpVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:CarpVc animated:YES];
    }else if (indexPath.row == 1){
        CarpVideoAboutusViewController  * carbAoutVc = [[CarpVideoAboutusViewController alloc]init];
        carbAoutVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:carbAoutVc animated:YES];
        
    }else if (indexPath.row == 2){
        [self CarpVideoClearMemorySize];
    }else if (indexPath.row == 3){
        CarpVideoKefuViewController * carpVideokefuVc = [[CarpVideoKefuViewController alloc]init];
        carpVideokefuVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:carpVideokefuVc animated:YES];
    }
}
#pragma mark--CarpVideoMineHeaderViewDelegate
-(void)CarpVideoMineHeaderViewBtnDidClickIndex:(NSInteger)btnIndex{
    if (btnIndex == 0) {
        CarpVideoMySendZoneViewController * CarpMySendVc = [[CarpVideoMySendZoneViewController alloc]init];
        CarpMySendVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:CarpMySendVc animated:YES];
    }else if (btnIndex == 1){
        CarpVideoAboutusViewController * CarpVcAboutusVc = [[CarpVideoAboutusViewController alloc]init];
        CarpVcAboutusVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:CarpVcAboutusVc animated:YES];
    }else if (btnIndex == 2){
        
    }else if (btnIndex == 3){
        [self CarpVideoShowLoginVc];
    }
}
-(void)CarpVideoMineHeaderViewTapInfoClicks{
    CarpVideoMyInfoViewController * CarpVideoInfo = [[CarpVideoMyInfoViewController alloc]init];
    CarpVideoInfo.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:CarpVideoInfo animated:YES];
}
- (void)CarpVideoClearMemorySize{
    NSString*cachePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory,NSUserDomainMask,YES)objectAtIndex:0];
    NSArray*files = [[NSFileManager defaultManager]subpathsAtPath:cachePath];
    for(NSString *p in files){
        NSError*error;
        
        NSString*path = [cachePath stringByAppendingString:[NSString stringWithFormat:@"/%@",p]];
        
        if([[NSFileManager defaultManager]fileExistsAtPath:path])
        {
            BOOL isRemove = [[NSFileManager defaultManager]removeItemAtPath:path error:&error];
            if(isRemove) {
                [LCProgressHUD showSuccess:@"清除成功"];
                [_CarpVideoTableView reloadData];
            }else{
                
            }
        }
    }
}/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
