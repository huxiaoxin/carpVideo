//
//  CarpVideoMessageViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoMessageViewController.h"
#import "CarpVideoMessageHeaderView.h"
#import "CarpVideoMessageTableViewCell.h"
#import "CarpVideoNotificationViewController.h"
#import "CarpVideoKefuViewController.h"
#import "CarpVideoZanViewController.h"
#import "CarpVideoComentViewController.h"
#import "CarpVideoMySendZoneViewController.h"
#import "carpVideoMessageModel.h"
#import "carpVideoMessageDetailViewController.h"
@interface CarpVideoMessageViewController ()
@property(nonatomic,strong) CarpVideoMessageHeaderView * CarpHeaderView;
@property(nonatomic,strong) NSMutableArray            * CarpVideoDataArr;
@end

@implementation CarpVideoMessageViewController
- (NSMutableArray *)CarpVideoDataArr{
    if (!_CarpVideoDataArr) {
        _CarpVideoDataArr = [NSMutableArray array];
    }
    return _CarpVideoDataArr;
}
-(void)CarpVideoLoginSuccedNotifiCation{
    [self carpVideoLoadData];
}
-(void)viewDidLoad{
    [super viewDidLoad];
    self.gk_navTitle = @"消息";
    self.view.backgroundColor = [UIColor whiteColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(CarpVideoLoginSuccedNotifiCation) name:@"CarpVideoLoginSuccedNotifiCation" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(CarpVideoLoginSuccedNotifiCation) name:@"CarpVideoLoginOutActon" object:nil];

    [_CarpVideoTableView setBackgroundColor:[UIColor whiteColor]];
    [_CarpVideoTableView setFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_TABBAR_HEIGHT)];
    _CarpVideoTableView.tableHeaderView = self.CarpHeaderView;
    
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoMessageHeaderClicks)];
    [self carpVideoLoadData];
}
-(void)carpVideoLoadData{
    NSArray * dataArr = [WHC_ModelSqlite query:[carpVideoMessageModel class]];
    
    MJWeakSelf;
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.CarpVideoDataArr.count > 0) {
            [weakSelf.CarpVideoDataArr removeAllObjects];
        }
        [LCProgressHUD hide];
        if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
            LYEmptyView * emtyView = [LYEmptyView emptyActionViewWithImage:[UIImage imageNamed:@""] titleStr:@"未登录" detailStr:nil btnTitleStr:@"去登录" target:self action:@selector(gotoLoginAction)];
            self->_CarpVideoTableView.ly_emptyView = emtyView;
        }else{
            weakSelf.CarpVideoDataArr = dataArr.mutableCopy;

        }
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
    });
}
-(void)CarpVideoMessageHeaderClicks{
    
    NSArray * dataArr = [WHC_ModelSqlite query:[carpVideoMessageModel class]];
    
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.CarpVideoDataArr.count > 0) {
            [weakSelf.CarpVideoDataArr removeAllObjects];
        }
        if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
            LYEmptyView * emtyView = [LYEmptyView emptyActionViewWithImage:[UIImage imageNamed:@""] titleStr:@"未登录" detailStr:nil btnTitleStr:@"去登录" target:self action:@selector(gotoLoginAction)];
            self->_CarpVideoTableView.ly_emptyView = emtyView;
        }else{
            weakSelf.CarpVideoDataArr = dataArr.mutableCopy;

        }
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
    });
    
}
-(void)gotoLoginAction{
    [self CarpVideoShowLoginVc];
}
- (CarpVideoMessageHeaderView *)CarpHeaderView{
    if (!_CarpHeaderView) {
        MJWeakSelf;
        _CarpHeaderView = [[CarpVideoMessageHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(80)) Configugration:^(NSInteger index) {
            if (index == 0) {
                if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
                    [self CarpVideoShowLoginVc];
                    return;
                }

                CarpVideoNotificationViewController * CarpVideoNotiVc = [[CarpVideoNotificationViewController alloc]init];
                CarpVideoNotiVc.hidesBottomBarWhenPushed = YES;
                [weakSelf.navigationController pushViewController:CarpVideoNotiVc animated:YES];
            }else if (index == 1){
                if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
                    [self CarpVideoShowLoginVc];
                    return;
                }
                CarpVideoKefuViewController * CarpVideoKefuVc = [[CarpVideoKefuViewController alloc]init];
                CarpVideoKefuVc.hidesBottomBarWhenPushed = YES;
                [weakSelf.navigationController pushViewController:CarpVideoKefuVc animated:YES];
            }else if (index == 2){
                if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
                    [self CarpVideoShowLoginVc];
                    return;
                }

                CarpVideoZanViewController * carpZanvc = [[CarpVideoZanViewController alloc]init];
                carpZanvc.hidesBottomBarWhenPushed = YES;
                [weakSelf.navigationController pushViewController:carpZanvc animated:YES];
            }else if (index == 3){
                if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
                    [self CarpVideoShowLoginVc];
                    return;
                }

                CarpVideoComentViewController * carpComentVc =  [[CarpVideoComentViewController alloc]init];
                carpComentVc.hidesBottomBarWhenPushed = YES;
                [weakSelf.navigationController pushViewController:carpComentVc animated:YES];
            }

        }];
        
    }
    return _CarpHeaderView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CarpVideoDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoMessageTableViewCell * CarpMessageCell = [CarpVideoMessageTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    CarpMessageCell.carpModel = self.CarpVideoDataArr[indexPath.row];
    return CarpMessageCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(53);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    carpVideoMessageDetailViewController * CarpVidoDetailVc = [[carpVideoMessageDetailViewController alloc]init];
    CarpVidoDetailVc.carpessModel = self.CarpVideoDataArr[indexPath.row];
    CarpVidoDetailVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:CarpVidoDetailVc animated:YES];
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
