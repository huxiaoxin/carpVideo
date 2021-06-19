//
//  CarpVideoActityDetailViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoActityDetailViewController.h"
#import "CarpVideoActityDetailHeader.h"
#import "CarpVideoAcittyDetailFooter.h"
#import "CarpVideoBaomingDetailViewController.h"
@interface CarpVideoActityDetailViewController ()
@property(nonatomic,strong) CarpVideoActityDetailHeader * carpHeader;
@property(nonatomic,strong) CarpVideoAcittyDetailFooter * CarpFooter;
@property(nonatomic,strong) UIButton *  CarpCollectibtn;
@property(nonatomic,strong) UIButton * CaroBaominBtn;
@end

@implementation CarpVideoActityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    self.view.backgroundColor = [UIColor whiteColor];
    [_CarpVideoTableView setFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM)];
    // Do any additional setup after loading the view.

    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        _CarpVideoTableView.tableHeaderView = self.carpHeader;
        _CarpVideoTableView.tableFooterView = self.CarpFooter;
        MJWeakSelf;
        _carpHeader.headerBlock = ^(CGFloat headerHeight) {
            weakSelf.carpHeader.height = headerHeight;
            self->_CarpVideoTableView.tableHeaderView = weakSelf.carpHeader;
        };
        
        _CarpFooter.footerBlock = ^(CGFloat fotterHeight) {
            weakSelf.CarpFooter.height = fotterHeight;
            _CarpVideoTableView.tableFooterView = weakSelf.CarpFooter;
        };

        _CarpFooter.carpModel = self.carpselMoel;
        _carpHeader.carpModel = self.carpselMoel;
        [self.view addSubview:self.CarpCollectibtn];
        [self.view addSubview:self.CaroBaominBtn];
        if ([CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
            _CarpCollectibtn.selected = self.carpselMoel.isCollted;
            _CaroBaominBtn.selected = self.carpselMoel.isBaoming;
            
            if (self.carpselMoel.isBaoming) {
                [self.CaroBaominBtn setBackgroundColor:LGDGaryColor];


            }else{
                [self.CaroBaominBtn setBackgroundColor:LGDMianColor];

            }
        }else{
            _CarpCollectibtn.selected = NO;
            _CaroBaominBtn.selected = NO;
        }


    });

    
    
    
    
    
}
- (UIButton *)CarpCollectibtn{
    if (!_CarpCollectibtn) {
        _CarpCollectibtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CarpCollectibtn setBackgroundColor:LGDBlueColor];
        [_CarpCollectibtn setTitle:@"收藏" forState:UIControlStateNormal];
        [_CarpCollectibtn setTitle:@"已收藏" forState:UIControlStateSelected];
        _CarpCollectibtn.titleLabel.textColor = [UIColor whiteColor];
        _CarpCollectibtn.titleLabel.font = KBlFont(17);
        _CarpCollectibtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CarpCollectibtn addTarget:self action:@selector(CarpCollectibtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_CarpCollectibtn setFrame:CGRectMake(GK_SCREEN_WIDTH/2-RealWidth(120), GK_SCREEN_HEIGHT-RealWidth(40)-GK_SAFEAREA_BTM, RealWidth(120), RealWidth(36))];
        [_CarpCollectibtn acs_radiusWithRadius:RealWidth(18) corner:UIRectCornerTopLeft | UIRectCornerBottomLeft];
    }
    return _CarpCollectibtn;
}
- (UIButton *)CaroBaominBtn{
    if (!_CaroBaominBtn) {
        _CaroBaominBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_CaroBaominBtn setBackgroundColor:LGDMianColor];
        [_CaroBaominBtn setTitle:@"立即报名" forState:UIControlStateNormal];
        [_CaroBaominBtn setTitle:@"已报名" forState:UIControlStateSelected];
        _CaroBaominBtn.titleLabel.textColor = [UIColor whiteColor];
        _CaroBaominBtn.titleLabel.font = KBlFont(17);
        _CaroBaominBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CaroBaominBtn addTarget:self action:@selector(CaroBaominBtnClikc) forControlEvents:UIControlEventTouchUpInside];
        [_CaroBaominBtn setFrame:CGRectMake(CGRectGetMaxX(_CarpCollectibtn.frame), GK_SCREEN_HEIGHT-RealWidth(40)-GK_SAFEAREA_BTM, RealWidth(120), RealWidth(36))];
        [_CaroBaominBtn acs_radiusWithRadius:RealWidth(18) corner:UIRectCornerTopRight | UIRectCornerBottomRight];
    }
    return _CaroBaominBtn;
}
#pragma mark--收藏
-(void)CarpCollectibtnClick{
    if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        [self CarpVideoShowLoginVc];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.carpselMoel.isCollted  = !self.carpselMoel.isCollted;
    [LCProgressHUD showSuccess:self.carpselMoel.isCollted ? @"已收藏" : @"取消收藏"];
    [WHC_ModelSqlite update:[carpVideoAcitytyModel class] value:[NSString stringWithFormat:@"isCollted ='%@'",@(self.carpselMoel.isCollted)] where:[NSString stringWithFormat:@"LoactionID ='%ld'",self.carpselMoel.LoactionID]];
        self.CarpCollectibtn.selected = self.carpselMoel.isCollted;
    });
    
}
#pragma mark--报名
-(void)CaroBaominBtnClikc{
    
    if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        [self CarpVideoShowLoginVc];
        return;
    }
    
    if (self.carpselMoel.isBaoming) {
        [LCProgressHUD showInfoMsg:@"您已报名～"];
        return;
    }
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle = GKNavigationBarBackStyleBlack;
    }];

    CarpVideoBaomingDetailViewController * baoingDetailVc = [[CarpVideoBaomingDetailViewController alloc]init];
    baoingDetailVc.carpselMoel = self.carpselMoel;
    [self.navigationController pushViewController:baoingDetailVc animated:YES];
    
    
  
    
}
- (CarpVideoAcittyDetailFooter *)CarpFooter{
    if (!_CarpFooter) {
        _CarpFooter = [[CarpVideoAcittyDetailFooter alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(300))];
    }
    return _CarpFooter;
}
- (CarpVideoActityDetailHeader *)carpHeader{
    if (!_carpHeader) {
        _carpHeader = [[CarpVideoActityDetailHeader alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(0)+GK_SAFEAREA_TOP)];
    }
    return _carpHeader;
}
-(void)viewWillDisappear:(BOOL)animated{
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle = GKNavigationBarBackStyleBlack;
    }];

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
