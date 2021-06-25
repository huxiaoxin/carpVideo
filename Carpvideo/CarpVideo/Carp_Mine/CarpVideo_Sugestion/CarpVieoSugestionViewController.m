//
//  CarpVieoSugestionViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVieoSugestionViewController.h"
#import "CarpVideoSugestionHeaderView.h"
#import "CarpVideoSugestionModel.h"
@interface CarpVieoSugestionViewController ()
@property(nonatomic,strong) CarpVideoSugestionHeaderView * carpVideoHeader;
@end

@implementation CarpVieoSugestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"意见反馈";
    [_CarpVideoTableView setFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_SAFEAREA_BTM-RealWidth(45+15))];
    _CarpVideoTableView.tableHeaderView = self.carpVideoHeader;
    // Do any additional setup after loading the view.
//    UIButton * CarpVideoCommitBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [CarpVideoCommitBtn setBackgroundColor:LGDMianColor];
//    CarpVideoCommitBtn.layer.cornerRadius = RealWidth(5);
//    CarpVideoCommitBtn.layer.masksToBounds = YES;
//    [CarpVideoCommitBtn setTitle:@"提交" forState:UIControlStateNormal];
//    [CarpVideoCommitBtn addTarget:self action:@selector(CarpVideoCommitBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:CarpVideoCommitBtn];
//
    

    
    

    UIButton * CarpVideoCommiteBtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    [CarpVideoCommiteBtn setFrame:CGRectMake(RealWidth(30), GK_SCREEN_HEIGHT-RealWidth(50)-GK_SAFEAREA_TOP, GK_SCREEN_WIDTH-RealWidth(60), RealWidth(40))];
    [CarpVideoCommiteBtn setBackgroundColor:LGDMianColor];
    [CarpVideoCommiteBtn setTitle:@"提交" forState:UIControlStateNormal];
    CarpVideoCommiteBtn.titleLabel.textAlignment  = NSTextAlignmentCenter;
    [CarpVideoCommiteBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    CarpVideoCommiteBtn.layer.cornerRadius = RealWidth(5);
    CarpVideoCommiteBtn.layer.masksToBounds = YES;
    CarpVideoCommiteBtn.titleLabel.font = KBlFont(15);
    CarpVideoCommiteBtn.titleLabel.textAlignment= NSTextAlignmentCenter;
    [CarpVideoCommiteBtn addTarget:self action:@selector(CarpVideoCommiteBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:CarpVideoCommiteBtn];
    
    
    
    
}
-(void)CarpVideoCommiteBtnClick{
    if ([ORAccountComponent checkLogin:YES]) {
    
    if (_carpVideoHeader.CarpVideoContentTextView.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请简要说明下原因"];
        return;
    }
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"感谢您的反馈"];
        [self.navigationController popViewControllerAnimated:YES];
    });
    }
}
- (CarpVideoSugestionHeaderView *)carpVideoHeader{
    if (!_carpVideoHeader) {
        _carpVideoHeader = [[CarpVideoSugestionHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(330))];
        
    }
    return _carpVideoHeader;
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
