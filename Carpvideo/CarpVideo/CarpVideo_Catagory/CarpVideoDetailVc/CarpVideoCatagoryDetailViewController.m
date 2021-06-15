//
//  CarpVideoCatagoryDetailViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "CarpVideoCatagoryDetailViewController.h"
#import "CarpVideoCatagoryDetailHeader.h"
#import "CarpVideoCatagoryDetailTableViewCell.h"
#import "CarpVideoCatagoryComentDetailView.h"
#import "CarpVideoCatagoryDetailModel.h"
@interface CarpVideoCatagoryDetailViewController ()
@property(nonatomic,strong)CarpVideoCatagoryDetailHeader * carpVideoDetailHeader;
@property(nonatomic,strong) CarpVideoCatagoryComentDetailView * carpVideoSendView;
@property(nonatomic,strong) NSMutableArray  * CaroVideoDataArr;
@end

@implementation CarpVideoCatagoryDetailViewController
- (NSMutableArray *)CaroVideoDataArr{
    if (!_CaroVideoDataArr) {
        _CaroVideoDataArr = [NSMutableArray array];
    }
    return _CaroVideoDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"详情";
    self.view.backgroundColor = [UIColor whiteColor];
    _CarpVideoTableView.backgroundColor =[UIColor whiteColor];
    _CarpVideoTableView.tableHeaderView = self.carpVideoDetailHeader;
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoTableViewHeaderClicks)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    
    [self.view addSubview:self.carpVideoSendView];
    _CarpVideoTableView.frame = CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM-RealWidth(60)-GK_STATUSBAR_NAVBAR_HEIGHT);
    [_carpVideoSendView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(self.view);
        make.bottom.mas_equalTo(-GK_SAFEAREA_BTM-RealWidth(10));
        make.height.mas_equalTo(RealWidth(50));
    }];
    // Do any additional setup after loading the view.
}
-(void)CarpVideoTableViewHeaderClicks{
    MJWeakSelf;
    NSArray * dataArr = [WHC_ModelSqlite query:[CarpVideoCatagoryDetailModel class] where:[NSString stringWithFormat:@"catagoryID ='%ld'",self.catagoryModel.userID]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.CaroVideoDataArr.count > 0) {
            [weakSelf.CaroVideoDataArr removeAllObjects];
        }
        weakSelf.CaroVideoDataArr = dataArr.mutableCopy;
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
    });
}
- (CarpVideoCatagoryComentDetailView *)carpVideoSendView{
    if (!_carpVideoSendView) {
        MJWeakSelf;
        _carpVideoSendView = [[CarpVideoCatagoryComentDetailView alloc]initWithFrame:CGRectZero CoementTextSendConfiguar:^(NSString * _Nonnull text) {
            
        }];
        _carpVideoSendView.backgroundColor = [UIColor whiteColor];

    }
    return _carpVideoSendView;
}
- (CarpVideoCatagoryDetailHeader *)carpVideoDetailHeader{
    if (!_carpVideoDetailHeader) {
        _carpVideoDetailHeader = [[CarpVideoCatagoryDetailHeader alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(250)) cobfigerationModel:self.catagoryModel];
    }
    return _carpVideoDetailHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CaroVideoDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoCatagoryDetailTableViewCell * CarpVideoCell = [CarpVideoCatagoryDetailTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    CarpVideoCell.dertailModel = self.CaroVideoDataArr[indexPath.row];
    return CarpVideoCell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return RealWidth(40);
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * Header = [UIView new];
    Header.backgroundColor = LGDViewBJColor;
    UIView * SubView = [UIView new];
    SubView.backgroundColor = [UIColor whiteColor];
    [Header addSubview:SubView];
    [SubView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(RealWidth(10), 0, 0, 0));
    }];
    
    
    UIImageView * FirstImgView = [UIImageView new];
//    FirstImgView.backgroundColor = LGDMianColor;
    [FirstImgView sd_setImageWithURL:[NSURL URLWithString:@"https://img9.doubanio.com/icon/u53035470-6.jpg"]];
    FirstImgView.layer.cornerRadius = RealWidth(9);
    FirstImgView.layer.masksToBounds = YES;
    [SubView addSubview:FirstImgView];
    
    [FirstImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.inset(RealWidth(15));
        make.size.mas_equalTo(CGSizeMake(RealWidth(18), RealWidth(18)));
        make.centerY.mas_equalTo(SubView.mas_centerY);
    }];
    
    UIImageView * SecondImgView = [UIImageView new];
//    SecondImgView.backgroundColor = LGDMianColor;
    [SecondImgView sd_setImageWithURL:[NSURL URLWithString:@"https://img9.doubanio.com/icon/u79448236-14.jpg"]];

    SecondImgView.layer.cornerRadius = RealWidth(9);
    SecondImgView.layer.masksToBounds = YES;
    [SubView addSubview:SecondImgView];
    [SecondImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(FirstImgView.mas_centerX).offset(RealWidth(5));
        make.size.mas_equalTo(CGSizeMake(RealWidth(18), RealWidth(18)));
        make.centerY.mas_equalTo(SubView.mas_centerY);
    }];
    
    UIImageView * ThreeImgView = [UIImageView new];
//    ThreeImgView.backgroundColor = LGDMianColor;
    [ThreeImgView sd_setImageWithURL:[NSURL URLWithString:@"https://img2.doubanio.com/icon/u186231898-3.jpg"]];
    ThreeImgView.layer.cornerRadius = RealWidth(9);
    ThreeImgView.layer.masksToBounds = YES;
    [SubView addSubview:ThreeImgView];
    [ThreeImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(SecondImgView.mas_centerX).offset(RealWidth(5));
        make.size.mas_equalTo(CGSizeMake(RealWidth(18), RealWidth(18)));
        make.centerY.mas_equalTo(SubView.mas_centerY);
    }];
    
    UILabel * Tipslb =  [UILabel new];
    Tipslb.textColor = LGDGaryColor;
    Tipslb.font = [UIFont systemFontOfSize:12];
    Tipslb.text = [NSString stringWithFormat:@"%ld人浏览过",(long)self.catagoryModel.viewsNum];
    [SubView addSubview:Tipslb];
    [Tipslb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(ThreeImgView.mas_right).offset(RealWidth(4));
        make.centerY.mas_equalTo(SubView.mas_centerY);
    }];
    return Header;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoCatagoryDetailModel * detailModel = self.CaroVideoDataArr[indexPath.row];
    return detailModel.CellHeight;
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