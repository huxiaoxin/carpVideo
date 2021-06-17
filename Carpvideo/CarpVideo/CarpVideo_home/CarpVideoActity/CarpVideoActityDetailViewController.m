//
//  CarpVideoActityDetailViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoActityDetailViewController.h"
#import "CarpVideoActityDetailHeader.h"
#import "CarpVideoAcittyDetailFooter.h"
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
    _CarpVideoTableView.tableHeaderView = self.carpHeader;
    _CarpVideoTableView.tableFooterView = self.CarpFooter;
    // Do any additional setup after loading the view.
    [self.view addSubview:self.CarpCollectibtn];
    [self.view addSubview:self.CaroBaominBtn];
}
- (CarpVideoAcittyDetailFooter *)CarpFooter{
    if (!_CarpFooter) {
        _CarpFooter = [[CarpVideoAcittyDetailFooter alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(300))];
    }
    return _CarpFooter;
}
- (CarpVideoActityDetailHeader *)carpHeader{
    if (!_carpHeader) {
        _carpHeader = [[CarpVideoActityDetailHeader alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(280)+GK_SAFEAREA_TOP)];
        
    }
    return _carpHeader;
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
