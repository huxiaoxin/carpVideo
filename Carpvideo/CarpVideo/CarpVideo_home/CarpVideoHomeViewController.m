//
//  CarpVideoHomeViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoHomeViewController.h"
#import "CarpVideoHomeTableViewCell.h"
#import "CarpVideoHomeHeaderView.h"
#import "CarpVideoMoreDayListViewController.h"
#import "CarpMoreHomeViewController.h"
#import "CarpVideoSearchViewController.h"
#import "CarpVideoBandanViewController.h"
#import "CarpVideoHomenewsModel.h"
#import "PandaHotnewsSizeTool.h"
#import "CarpVideoHomeNewsDetailViewController.h"
#import "CarpVideoNewsListViewController.h"
#import "CarpVideoAcotityViewController.h"
#import "CarpVieoAdviceViewController.h"
#import "CarpVideoDetailViewController.h"
#import <PYSearch-umbrella.h>
@interface CarpVideoHomeViewController ()<CarpVideoHomeHeaderViewDelegate,PYSearchViewControllerDelegate,CarpVideoHomeTableViewCellDelegate>
@property(nonatomic,strong) CarpVideoHomeHeaderView * carpVideoHeader;
@property(nonatomic,strong) NSMutableArray * CarpVideoHomeDataArr;
@property(nonatomic,copy) NSArray * CarpVideoHeaderDataArr;
@property(nonatomic,copy) NSArray * CarpVieeobananrDataArr;
@end

@implementation CarpVideoHomeViewController
- (NSMutableArray *)CarpVideoHomeDataArr{
    if (!_CarpVideoHomeDataArr) {
        _CarpVideoHomeDataArr = [NSMutableArray array];
    }
    return _CarpVideoHomeDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    [_CarpVideoTableView setFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_TABBAR_HEIGHT)];
    _CarpVideoTableView.tableHeaderView = self.carpVideoHeader;
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarpVideoTableViewHeaderClicks)];
    [self CarpVideoTableViewHeaderClicks];
    
}
-(void)CarpVideoTableViewHeaderClicks{
    
    [LCProgressHUD showLoading:@""];
    NSArray * CarpVideoDataArr = [WHC_ModelSqlite query:[CarpVideoHomeModels class]];
    NSDictionary * dictionary =   [self getJsonDataJsonname:@"CarpVideoFIlds"];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSArray * PandaHoemNewsArr =[[[dictionary objectForKey:@"result"] objectForKey:@"result"] objectForKey:@"list"];
        NSMutableArray * PandaHoemTempArr= [[NSMutableArray alloc]init];
        for (int index = 0 ; index < 3; index ++) {
            NSDictionary * PandaHoemDic = [PandaHoemNewsArr objectAtIndex:index];
            CarpVideoHomenewsModel * PandaHoemitem = [CarpVideoHomenewsModel BaseinitWithDic:PandaHoemDic];
            if (![PandaHoemitem.imgUrl containsString:@"https://interface.sina.cn/wap_api/video_location.d.html"]) {
                if (![PandaHoemitem.imgUrl containsString:@"https://n.sinaimg.cn/default/2fb77759/20151125/320X320.png"]) {
                    CGSize PandaSize = [PandaHotnewsSizeTool getImageSizeWithURL:PandaHoemitem.imgUrl];
                    PandaHoemitem.height = PandaSize.height;
                    PandaHoemitem.width = PandaSize.width;
                    [PandaHoemTempArr addObject:PandaHoemitem];
                }
                
            }
            
        }
        [LCProgressHUD hide];
        if (CarpVideoDataArr.count > 5) {
            weakSelf.CarpVideoHeaderDataArr =  [CarpVideoDataArr subarrayWithRange:NSMakeRange(0, 4)];
            weakSelf.carpVideoHeader.VideoDataArr = [CarpVideoDataArr subarrayWithRange:NSMakeRange(0, 4)];
            weakSelf.CarpVideoHomeDataArr = PandaHoemTempArr;
        }else{
            weakSelf.CarpVideoHeaderDataArr = CarpVideoDataArr;
            weakSelf.carpVideoHeader.VideoDataArr = CarpVideoDataArr;
            weakSelf.CarpVideoHomeDataArr  = PandaHoemTempArr;
        }
        NSMutableArray * tempBanararr = [NSMutableArray array];
        NSMutableArray * tempBannaImgArr = [NSMutableArray array];
        NSMutableArray * tempBannaTitleArr = [NSMutableArray array];
        NSMutableArray * tempModelbanr = [NSMutableArray array];
        if (CarpVideoDataArr.count > 11) {
            for (int i = 7 ; i < 9 ; i ++) {
                CarpVideoHomeModels * mdoel = CarpVideoDataArr[i];
                [tempModelbanr addObject:mdoel];
                [tempBannaImgArr addObject:mdoel.carpVideoImgThub];
                [tempBannaTitleArr addObject:mdoel.carpVideoHomeName];
            }
        }
    
        weakSelf.CarpVieeobananrDataArr = tempModelbanr.copy;
        [tempBanararr addObject:tempBannaImgArr];
        [tempBanararr addObject:tempBannaTitleArr];
        weakSelf.carpVideoHeader.BanarArr = tempBanararr.copy;
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
        
    });
    
    
}
- (id)getJsonDataJsonname:(NSString *)jsonname
{
    NSString *path = [[NSBundle mainBundle] pathForResource:jsonname ofType:@"json"];
    NSData *jsonData = [[NSData alloc] initWithContentsOfFile:path];
    NSError *error;
    id jsonObj = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    if (!jsonData || error) {
        return nil;
    } else {
        return jsonObj;
    }
}
-(CarpVideoHomeHeaderView *)carpVideoHeader{
    if (!_carpVideoHeader) {
        _carpVideoHeader = [[CarpVideoHomeHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(500))];
        _carpVideoHeader.delegate = self;
    }
    return _carpVideoHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CarpVideoHomeDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoHomeTableViewCell * carpVideoCell = [CarpVideoHomeTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    carpVideoCell.carpNewsModel = self.CarpVideoHomeDataArr[indexPath.row];
    carpVideoCell.delegate = self;
    carpVideoCell.tag = indexPath.row;
    return carpVideoCell;
}
-(void)CarpVideoHomeTableViewCellDidSeltecdWithCellIndex:(NSInteger)CellIndex{
    CarpVideoHomenewsModel * carpModel = self.CarpVideoHomeDataArr[CellIndex];
    CarpVideoHomeNewsDetailViewController * CarpVideoDetailVc = [[CarpVideoHomeNewsDetailViewController alloc]init];
    CarpVideoDetailVc.hidesBottomBarWhenPushed = YES;
    CarpVideoDetailVc.carpNewsModel =carpModel;
    [self.navigationController pushViewController:CarpVideoDetailVc animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(180);
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return RealWidth(35);
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * Header = [UIView new];
    Header.backgroundColor = [UIColor clearColor];
    
    UIView * Contetnheader = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), 0, GK_SCREEN_WIDTH-RealWidth(30), RealWidth(35))];
    Contetnheader.backgroundColor = [UIColor whiteColor];
    [Header addSubview:Contetnheader];
    [Contetnheader acs_radiusWithRadius:RealWidth(5) corner:UIRectCornerTopLeft | UIRectCornerTopRight];
    
    UILabel * CarpVideoDayTitle = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(10), RealWidth(200), RealWidth(20))];
    CarpVideoDayTitle.font = KBlFont(16);
    CarpVideoDayTitle.textColor = LGDBLackColor;
    [Contetnheader addSubview:CarpVideoDayTitle];
    NSString * hotText  = @"精选文章 ";
    NSTextAttachment * attment = [[NSTextAttachment alloc]init];
    attment.image = [UIImage imageNamed:@""];
    attment.bounds = CGRectMake(0, 0, 50/1.5, 20/1.5);
//    NSAttributedString * attbute = [NSAttributedString attributedStringWithAttachment:attment];
    NSMutableAttributedString * muatbuAtt = [[NSMutableAttributedString alloc]initWithString:hotText];
//    [muatbuAtt insertAttributedString:attbute atIndex:hotText.length];
    CarpVideoDayTitle.attributedText = muatbuAtt;
    
    
    UIButton * CarpVideoMoreBtn   = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetWidth(Contetnheader.frame)-RealWidth(50), CGRectGetMidY(CarpVideoDayTitle.frame)-RealWidth(10), RealWidth(50), RealWidth(20))];
    [CarpVideoMoreBtn setTitleColor:LGDLightBLackColor forState:UIControlStateNormal];
    CarpVideoMoreBtn.titleLabel.font = [UIFont systemFontOfSize:font(13)];
    [CarpVideoMoreBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, -25, 0, 25)];
    [CarpVideoMoreBtn setImageEdgeInsets:UIEdgeInsetsMake(0, 25, 0, -25)];
    [CarpVideoMoreBtn setTitle:@"更多" forState:UIControlStateNormal];
    [CarpVideoMoreBtn setImage:[UIImage imageNamed:@"youbian-small"] forState:UIControlStateNormal];
    [CarpVideoMoreBtn addTarget:self action:@selector(CarpVideoMoreBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [Contetnheader addSubview:CarpVideoMoreBtn];
    
    
    return Header;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoHomeNewsDetailViewController * CarpVideoDetailVc = [[CarpVideoHomeNewsDetailViewController alloc]init];
    CarpVideoDetailVc.hidesBottomBarWhenPushed = YES;
    CarpVideoDetailVc.carpNewsModel = self.CarpVideoHomeDataArr[indexPath.row];
    [self.navigationController pushViewController:CarpVideoDetailVc animated:YES];
}
-(void)CarpVideoMoreBtnClick{
    CarpVideoNewsListViewController  * carpListVc =  [[CarpVideoNewsListViewController alloc]init];
    carpListVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:carpListVc animated:YES];
}
#pragma mark--CarpVideoHomeHeaderViewDelegate
-(void)CarpVideoHomeHeaderViewSearchAction{
    PYSearchViewController * carpSearchVc = [PYSearchViewController searchViewControllerWithHotSearches:@[@"招魂3",@"人之怒",@"007:无暇赴死",@"黑寡妇",@"电锯惊魂9"] searchBarPlaceholder:@"快速搜索"];
    carpSearchVc.searchBar.backgroundColor = [UIColor whiteColor];
    carpSearchVc.delegate = self;
    carpSearchVc.hotSearchStyle  = PYHotSearchStyleARCBorderTag;
    UITableView *baseSearchTableView =  [carpSearchVc valueForKey:@"baseSearchTableView"];
    [baseSearchTableView setFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_SAFEAREA_BTM)];
    UINavigationController * PandaRootVc = [UINavigationController rootVC:carpSearchVc];
    PandaRootVc.navigationBar.barTintColor = LGDViewBJColor;
    [self presentViewController:PandaRootVc animated:YES completion:^{
        
    }];
}
- (void)searchViewController:(PYSearchViewController *)searchViewController
      didSearchWithSearchBar:(UISearchBar *)searchBar
                  searchText:(NSString *)searchText{
    NSInteger searchID;
    if ([searchText isEqualToString:@"速度与激情9"]) {
        searchID  = 0;
    }else if ([searchText isEqualToString:@"人之怒"]){
        searchID  = 17;
    }else if ([searchText isEqualToString:@"007:无暇赴死"]){
        searchID  = 22;
    }else if ([searchText isEqualToString:@"黑寡妇"]){
        searchID  = 20;
    }else {
        searchID  = 21;
    }
    MJWeakSelf;
    [searchViewController dismissViewControllerAnimated:NO completion:^{
        CarpVideoSearchViewController * pandaSearchVc = [[CarpVideoSearchViewController alloc]init];
        pandaSearchVc.CarpSearText = searchText;
        pandaSearchVc.CarpSearID = searchID;
        pandaSearchVc.hidesBottomBarWhenPushed = YES;
        [weakSelf.navigationController pushViewController:pandaSearchVc animated:YES];
    }];
}
-(void)CarpVideoHomeHeaderViewMoreDayAction{
    CarpVideoMoreDayListViewController * carpVideoVc = [[CarpVideoMoreDayListViewController alloc]init];
    carpVideoVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:carpVideoVc animated:YES];
}
-(void)CarpVideoHomeHeaderViewWithbtnIndex:(NSInteger)btnIndex{
    if (btnIndex == 0) {
        [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
            configure.backStyle =  GKNavigationBarBackStyleWhite;
            configure.titleColor = [UIColor whiteColor];
        }];
        CarpVideoBandanViewController * carpbandaVc = [[CarpVideoBandanViewController alloc]init];
        carpbandaVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:carpbandaVc animated:YES];
    }else if (btnIndex == 1){
        CarpVieoAdviceViewController * carpVideoAdviceVc =  [[CarpVieoAdviceViewController alloc]init];
        carpVideoAdviceVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:carpVideoAdviceVc animated:YES];
    }else if (btnIndex == 2){
        CarpVideoNewsListViewController  * carpListVc =  [[CarpVideoNewsListViewController alloc]init];
        carpListVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:carpListVc animated:YES];
    }else if (btnIndex == 3){
        CarpVideoAcotityViewController  * carpVideoVc = [[CarpVideoAcotityViewController alloc]init];
        carpVideoVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:carpVideoVc animated:YES];
    }
    
}
-(void)CarpVideoHomeHeaderViewWitBanarDidIndex:(NSInteger)banarIndex{
    CarpVideoHomeModels * carpModel  =self.CarpVieeobananrDataArr[banarIndex];
    
    CarpVideoDetailViewController * carpDetailVc = [[CarpVideoDetailViewController alloc]init];
    carpDetailVc.carpMoel = carpModel;
    carpDetailVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:carpDetailVc animated:YES];
    
}
-(void)CarpVideoHomeHeaderViewCollectionDidSelecWith:(CarpVideoHomeModels *)mdoel{
    CarpVideoDetailViewController * carpDetailVc = [[CarpVideoDetailViewController alloc]init];
    carpDetailVc.carpMoel = mdoel;
    carpDetailVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:carpDetailVc animated:YES];
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
