//
//  CarpVideoDetailViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoDetailViewController.h"
#import "CarpVideoDetailHeaderView.h"
#import "CarpVideoDetailTableViewCell.h"
#import "carpVideoRemneAdviceModel.h"
#import "CarpVideoJBLitsViewController.h"
#import <XHInputView-umbrella.h>
@interface CarpVideoDetailViewController ()<CarpVideoDetailHeaderViewDelegate,CarpVideoDetailTableViewCellDelegate>
@property(nonatomic,strong) CarpVideoDetailHeaderView * CarpVideoHeader;
@property(nonatomic,strong) NSMutableArray * CarpVideoDataSoure;
@property(nonatomic,strong) UIButton       * CarpSendComentBtn;
@end

@implementation CarpVideoDetailViewController
- (NSMutableArray *)CarpVideoDataSoure{
    if (!_CarpVideoDataSoure) {
        _CarpVideoDataSoure   = [NSMutableArray array];
    }
    return _CarpVideoDataSoure;
}
- (UIButton *)CarpSendComentBtn{
    if (!_CarpSendComentBtn) {
        _CarpSendComentBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpSendComentBtn setBackgroundColor:[UIColor whiteColor]];
        [_CarpSendComentBtn setTitle:@"发送评论" forState:UIControlStateNormal];
        _CarpSendComentBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CarpSendComentBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        _CarpSendComentBtn.layer.cornerRadius = RealWidth(15);
        [_CarpSendComentBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        [_CarpSendComentBtn addTarget:self action:@selector(CarpSendComentBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_CarpSendComentBtn setFrame:CGRectMake(RealWidth(40), GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM-RealWidth(40), GK_SCREEN_WIDTH-RealWidth(80), RealWidth(30))];
        [_CarpSendComentBtn viewShadowPathWithColor:LGDMianColor shadowOpacity:0.5 shadowRadius:RealWidth(5) shadowPathType:LeShadowPathAround shadowPathWidth:RealWidth(5)];
    }
    return _CarpSendComentBtn;
}
-(void)CarpSendComentBtnClick{

    MJWeakSelf;
    [XHInputView showWithStyle:InputViewStyleDefault configurationBlock:^(XHInputView *inputView) {
        inputView.sendButtonBackgroundColor = LGDMianColor;
        inputView.sendButtonCornerRadius = RealWidth(5);
    } sendBlock:^BOOL(NSString *text) {
        if (text.length > 0) {
            [weakSelf CarpVideoSendComentWith:text];
            return YES;
        }else{
            [LCProgressHUD showInfoMsg:@"请输入内容~"];
            return NO;
        }
    }];

}
-(void)CarpVideoSendComentWith:(NSString *)comenttext{
    if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        [self CarpVideoShowLoginVc];
        return;
    }
    [LCProgressHUD showLoading:@""];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"评论成功"];
        carpVideoRemneAdviceModel * carpMentModel = [[carpVideoRemneAdviceModel alloc]init];
        carpMentModel.imgurl = @"";
        carpMentModel.name = [CarpVideoLoginVideModelTool CarpVideoLogonViewModel_userName];
        carpMentModel.FilmID = weakSelf.carpMoel.caprVideHome_ID;
        carpMentModel.ComentID = 555;
        carpMentModel.CellHeight = 0;
        carpMentModel.content = comenttext;
        carpMentModel.StarNum =5;
        [WHC_ModelSqlite insert:carpMentModel];
        [weakSelf.CarpVideoDataSoure addObject:carpMentModel];
        [_CarpVideoTableView reloadData];

    });
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    _CarpVideoTableView.frame = CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM-RealWidth(40));
    // Do any additional setup after loading the view.
    [LCProgressHUD showLoading:@""];
    self->_CarpVideoTableView.tableHeaderView = self.CarpVideoHeader;
    [self.view addSubview:self.CarpSendComentBtn];
    MJWeakSelf;
    NSArray * dataArr = [WHC_ModelSqlite query:[carpVideoRemneAdviceModel class] where:[NSString stringWithFormat:@"FilmID = '%ld'",self.carpMoel.caprVideHome_ID]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        _CarpVideoHeader.carMoell = self.carpMoel;
        weakSelf.CarpVideoDataSoure = dataArr.mutableCopy;
        if (weakSelf.CarpVideoDataSoure.count == 0) {
            LYEmptyView * emtyView = [LYEmptyView emptyViewWithImage:nil titleStr:@"暂无数据" detailStr:@"需要你的火力支持～"];
            self->_CarpVideoTableView.ly_emptyView = emtyView;
        }
        [self->_CarpVideoTableView reloadData];
        [weakSelf CarpSendComentBtnClick];
    });
    
    self->_CarpVideoHeader.haederBlock = ^(CGFloat headerHeight) {
        weakSelf.CarpVideoHeader.height = headerHeight;
        self->_CarpVideoTableView.tableHeaderView = weakSelf.CarpVideoHeader;
    };
}
- (CarpVideoDetailHeaderView *)CarpVideoHeader{
    if (!_CarpVideoHeader) {
        _CarpVideoHeader = [[CarpVideoDetailHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(0))];
        _CarpVideoHeader.delegate = self;
    }
    return _CarpVideoHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CarpVideoDataSoure.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoDetailTableViewCell * carpVideoCell = [CarpVideoDetailTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    carpVideoCell.carHotModel = self.CarpVideoDataSoure[indexPath.row];
    carpVideoCell.tag = indexPath.row;
    carpVideoCell.delegate = self;
    return carpVideoCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    carpVideoRemneAdviceModel * caroModel = self.CarpVideoDataSoure[indexPath.row];
    return caroModel.CellHeight;
}
#pragma marlk--CarpVideoDetailHeaderViewDelegate
-(void)CarpVideoDetailHeaderViewWithColltecd:(CarpVideoCatagoryBtn *)btn{
    if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        [self CarpVideoShowLoginVc];
        return;
    }
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.carpMoel.carpVideo_isCollected =  !self.carpMoel.carpVideo_isCollected;
        [LCProgressHUD showSuccess:self.carpMoel.carpVideo_isCollected ? @"收藏成功" :@"取消收藏"];
    btn.CarpVideoThubImgView.image = [UIImage imageNamed:self.carpMoel.carpVideo_isCollected ? @"like-seltecd" : @"like_nomal"];
        [WHC_ModelSqlite update:[CarpVideoHomeModels class] value:[NSString stringWithFormat:@"PandaMoview_isCollected ='%@'",@(self.carpMoel.carpVideo_isCollected)] where:[NSString stringWithFormat:@"caprVideHome_ID = '%ld'",self.carpMoel.caprVideHome_ID]];
        
    });
}
-(void)CarpVideoDetailTableViewCellDidSeltecdWithBtnIndex:(NSInteger)btnIndex cellIndex:(NSInteger)CellIndex{
    carpVideoRemneAdviceModel * carpMoel = self.CarpVideoDataSoure[CellIndex];
    if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        [self CarpVideoShowLoginVc];
        return;;
    }
    
    if (btnIndex == 0) {
        //举报
        CarpVideoJBLitsViewController * carpJBVc =[[CarpVideoJBLitsViewController alloc]init];
        carpJBVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:carpJBVc animated:YES];
    }else{
        //拉黑
        
        
        UIAlertController * alterVc = [UIAlertController alertControllerWithTitle:@"温馨提示" message:[NSString stringWithFormat:@"你要拉黑用户（%@）发布的评论吗？",carpMoel.name] preferredStyle:UIAlertControllerStyleAlert];
        
        MJWeakSelf;
        UIAlertAction * sureAction  = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
            [LCProgressHUD showLoading:@""];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [LCProgressHUD showSuccess:@"拉黑成功"];
                [weakSelf.CarpVideoDataSoure removeObject:carpMoel];
                [self->_CarpVideoTableView reloadData];
                [WHC_ModelSqlite delete:[carpVideoRemneAdviceModel class] where:[NSString stringWithFormat:@"ComentID = '%ld'",carpMoel.ComentID]];
                
            });
            
        }];
        
        
        UIAlertAction * cancleAction  =[UIAlertAction actionWithTitle:@"再想想" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alterVc addAction:cancleAction];
        [alterVc addAction:sureAction];

        [self presentViewController:alterVc animated:YES completion:nil];
        
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
