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
@interface CarpVideoHomeViewController ()<CarpVideoHomeHeaderViewDelegate>
@property(nonatomic,strong) CarpVideoHomeHeaderView * carpVideoHeader;
@end

@implementation CarpVideoHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    [_CarpVideoTableView setFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_TABBAR_HEIGHT)];
    _CarpVideoTableView.tableHeaderView = self.carpVideoHeader;
    
}
-(CarpVideoHomeHeaderView *)carpVideoHeader{
    if (!_carpVideoHeader) {
        _carpVideoHeader = [[CarpVideoHomeHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(500))];
        _carpVideoHeader.delegate = self;
    }
    return _carpVideoHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoHomeTableViewCell * carpVideoCell = [CarpVideoHomeTableViewCell createCellWithTheTableView:tableView AndTheIndexPath:indexPath];
    
    return carpVideoCell;
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
-(void)CarpVideoMoreBtnClick{
    CarpMoreHomeViewController * CarpMorehomeVc =[[CarpMoreHomeViewController alloc]init];
    CarpMorehomeVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:CarpMorehomeVc animated:YES];
}
#pragma mark--CarpVideoHomeHeaderViewDelegate
-(void)CarpVideoHomeHeaderViewSearchAction{
    CarpVideoSearchViewController * CarpSearchVc = [[CarpVideoSearchViewController alloc]init];
    CarpSearchVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:CarpSearchVc animated:YES];
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
        
    }else if (btnIndex == 2){
        
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
