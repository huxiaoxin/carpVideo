//
//  CarpVideoCenterBtnViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoCenterBtnViewController.h"
#import "CarpVideoCenterBtnTableViewCell.h"
#import "CarpVideoCenterBtnHeaderView.h"
#import "LKSavedeleteBtnView.h"
@interface CarpVideoCenterBtnViewController ()
@property(nonatomic,strong) CarpVideoCenterBtnHeaderView * carpVideoHeader;
@property(nonatomic,strong) LKSavedeleteBtnView          * CarpBtnVBtomView;
@end

@implementation CarpVideoCenterBtnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"发布动态";
    [_CarpVideoTableView setFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_TABBAR_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-RealWidth(110))];
    _CarpVideoTableView.tableHeaderView = self.carpVideoHeader;
    [self.view addSubview:self.CarpBtnVBtomView];
    
    MJWeakSelf;
    _carpVideoHeader.currentHeightBlock = ^(CGFloat currentHeight) {
        //NSLog(@"tableviewHeaderHeight:%f",currentHeight);
        weakSelf.carpVideoHeader.height = currentHeight;
        self->_CarpVideoTableView.tableHeaderView = weakSelf.carpVideoHeader;
    };
}
- (LKSavedeleteBtnView *)CarpBtnVBtomView{
    if (!_CarpBtnVBtomView) {
        MJWeakSelf;
        _CarpBtnVBtomView = [[LKSavedeleteBtnView alloc]initWithFrame:CGRectMake(0, GK_SCREEN_HEIGHT-GK_TABBAR_HEIGHT-RealWidth(105), GK_SCREEN_WIDTH, RealWidth(105)) configurationBtnClick:^(NSInteger index) {
            if (index == 0) {
                
            }else{
                [weakSelf.carpVideoHeader CarpVideoCenterBtnHeaderViewResetData];
            }
        }];
    }
    return _CarpBtnVBtomView;
}
-(CarpVideoCenterBtnHeaderView *)carpVideoHeader{
    if (!_carpVideoHeader) {
        _carpVideoHeader = [[CarpVideoCenterBtnHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(500))];
    }
    return _carpVideoHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoCenterBtnTableViewCell * carpVideoCell = [CarpVideoCenterBtnTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    
    return carpVideoCell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoCenterBtnTableViewCell * CarpCell = [tableView cellForRowAtIndexPath:indexPath];
  UILabel * CarpVideoRightlb =   [CarpCell valueForKey:@"CarpVideoRightlb"];
    UIAlertController * CarpAlterVc  = [UIAlertController alertControllerWithTitle:@"请选择" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction * CarpAlterFirstAction = [UIAlertAction actionWithTitle:@"仅自己可见" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [CarpVideoRightlb setText:@"仅自己可见" textColor:[UIColor colorWithHexString:@"#FF6C00"] appendingImg:@"orang_rightIcon" lineSpacing:2];
    }];
    
    UIAlertAction * CarpAlterSecondAction = [UIAlertAction actionWithTitle:@"公开" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [CarpVideoRightlb setText:@"公开" textColor:[UIColor colorWithHexString:@"#FF6C00"] appendingImg:@"orang_rightIcon" lineSpacing:2];

    }];
    
    UIAlertAction * CarpAltercancleAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [CarpAlterVc addAction:CarpAlterFirstAction];
    [CarpAlterVc addAction:CarpAlterSecondAction];
    [CarpAlterVc addAction:CarpAltercancleAction];
    [self presentViewController:CarpAlterVc animated:YES completion:nil];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(45);
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    return RealWidth(10);
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * Header = [UIView new];
    Header.backgroundColor = LGDViewBJColor;
    return Header;
}
-(void)CarpVideoMoreBtnClick{
    
    
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


