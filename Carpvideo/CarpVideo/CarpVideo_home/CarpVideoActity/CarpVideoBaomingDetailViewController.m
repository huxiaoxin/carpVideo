

#import "CarpVideoBaomingDetailViewController.h"
#import "UITextField+AddPlaceholder.h"
@interface CarpVideoBaomingDetailViewController ()
@property(nonatomic,strong) UIButton    * carpVideoJiaruBtn;
@property(nonatomic,strong) UITextField * carpVideoJiaruTextField;
@property(nonatomic,strong) UITextField * carpVideoJiaruTextField1;
@property(nonatomic,strong) UITextField * carpVideoJiaruTextField2;
@property(nonatomic,strong) UITextField * carpVideoJiaruTextField3;
@end

@implementation CarpVideoBaomingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"报名详情";
    //
    UIView * carpVideoJiaruFirdView = [[UIView alloc]initWithFrame:CGRectMake(0, NaviH+K(10), SCREEN_Width, K(80))];
    carpVideoJiaruFirdView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:carpVideoJiaruFirdView];
    
    UIImageView * carpVideoJiaruthubmgVew =[[UIImageView alloc]initWithFrame:CGRectMake(K(15), K(10), K(60), K(60))];
    carpVideoJiaruthubmgVew.layer.cornerRadius = K(5);
    carpVideoJiaruthubmgVew.layer.masksToBounds = YES;
    [carpVideoJiaruFirdView addSubview:carpVideoJiaruthubmgVew];
    [carpVideoJiaruthubmgVew sd_setImageWithURL:[NSURL URLWithString:self.carpselMoel.carpVideoThub]];
    UILabel * pandaJonitToplb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(carpVideoJiaruthubmgVew.frame)+K(10), K(10), SCREEN_Width-CGRectGetMaxX(carpVideoJiaruthubmgVew.frame)-K(20), K(60))];
    pandaJonitToplb.numberOfLines =  0;
    pandaJonitToplb.textColor = LGDLightBLackColor;
    pandaJonitToplb.font = [UIFont systemFontOfSize:13];
    pandaJonitToplb.text = self.carpselMoel.title;
    [carpVideoJiaruFirdView addSubview:pandaJonitToplb];
    
    
    
    UIView * carpVideoJiaruBtomView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(carpVideoJiaruFirdView.frame)+K(10), SCREEN_Width, K(160))];
    carpVideoJiaruBtomView.backgroundColor=  [UIColor whiteColor];
    [self.view addSubview:carpVideoJiaruBtomView];
    
    
    UILabel * pandaRealNamelb=  [self carpVideoJbianjitexWittviaotsm:@"真实姓名:" lbFrame:CGRectMake(K(10), 0, K(100), K(40))];
    [carpVideoJiaruBtomView addSubview:pandaRealNamelb];
    
    UITextField * carpVideoJiaruTextField = [self carpVideoJbianjitextFuekdWithHOkders:@"请输入真实姓名" FieldFrame:CGRectMake(CGRectGetMaxX(pandaRealNamelb.frame), 0, SCREEN_Width-CGRectGetMaxX(pandaRealNamelb.frame), K(40))];
    [carpVideoJiaruBtomView addSubview:carpVideoJiaruTextField];
    _carpVideoJiaruTextField = carpVideoJiaruTextField;
    
    UILabel * pandaCompanylb=  [self carpVideoJbianjitexWittviaotsm:@"公司名称:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaRealNamelb.frame), K(100), K(40))];
    [carpVideoJiaruBtomView addSubview:pandaCompanylb];
    
    UITextField * carpVideoJiaruTextField1 = [self carpVideoJbianjitextFuekdWithHOkders:@"请输入公司名称" FieldFrame:CGRectMake(CGRectGetMaxX(pandaRealNamelb.frame), CGRectGetMaxY(pandaRealNamelb.frame), SCREEN_Width-CGRectGetMaxX(pandaCompanylb.frame), K(40))];
    [carpVideoJiaruBtomView addSubview:carpVideoJiaruTextField1];
    _carpVideoJiaruTextField1 = carpVideoJiaruTextField1;
    
    
    UILabel * pandaphonelb=  [self carpVideoJbianjitexWittviaotsm:@"联系电话:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaCompanylb.frame), K(100), K(40))];
    [carpVideoJiaruBtomView addSubview:pandaphonelb];
    
    UITextField * carpVideoJiaruTextField2 = [self carpVideoJbianjitextFuekdWithHOkders:@"请输入手机号" FieldFrame:CGRectMake(CGRectGetMaxX(pandaCompanylb.frame), CGRectGetMaxY(pandaCompanylb.frame), SCREEN_Width-CGRectGetMaxX(pandaphonelb.frame), K(40))];
    [carpVideoJiaruBtomView addSubview:carpVideoJiaruTextField2];
    _carpVideoJiaruTextField2 = carpVideoJiaruTextField2;
    
    
    UILabel * carpVideoJiaruPlahodlelb=  [self carpVideoJbianjitexWittviaotsm:@"备注:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaphonelb.frame), K(100), K(40))];
    [carpVideoJiaruBtomView addSubview:carpVideoJiaruPlahodlelb];
    
    UITextField * carpVideoJiaruTextField3 = [self carpVideoJbianjitextFuekdWithHOkders:@"如有特殊需求可填写在这儿" FieldFrame:CGRectMake(CGRectGetMaxX(pandaphonelb.frame), CGRectGetMaxY(pandaphonelb.frame), SCREEN_Width-CGRectGetMaxX(carpVideoJiaruPlahodlelb.frame), K(40))];
    [carpVideoJiaruBtomView addSubview:carpVideoJiaruTextField3];
    _carpVideoJiaruTextField3=  carpVideoJiaruTextField3;
    

    
    [self.view addSubview:self.carpVideoJiaruBtn];
    // Do any additional setup after loading the view.
}
-(void)carpVideoJiaruBtnClick{
    if (_carpVideoJiaruTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请填写真实姓名"];
        return;
    }
    if (_carpVideoJiaruTextField1.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请填写公司名称"];
        return;
    }
    if (_carpVideoJiaruTextField2.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    
    if (_carpVideoJiaruTextField2.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
        [LCProgressHUD showLoading:@""];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [LCProgressHUD showSuccess:@"报名成功，请注意查收手机短信"];
        [WHC_ModelSqlite update:[carpVideoAcitytyModel class] value:[NSString stringWithFormat:@"isBaoming ='%@'",@(YES)] where:[NSString stringWithFormat:@"LoactionID ='%ld'",self.carpselMoel.LoactionID]];
            [self.navigationController popToRootViewControllerAnimated:YES];
        });
}
- (UIButton *)carpVideoJiaruBtn{
    if (!_carpVideoJiaruBtn) {
        _carpVideoJiaruBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, SCREEN_Height-K(50), SCREEN_Width-K(0), K(50))];
        [_carpVideoJiaruBtn setBackgroundColor: LGDMianColor];
        [_carpVideoJiaruBtn setTitle:@"立即参与" forState:UIControlStateNormal];
        [_carpVideoJiaruBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _carpVideoJiaruBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _carpVideoJiaruBtn.titleLabel.font = [UIFont systemFontOfSize:K(15)];
        [_carpVideoJiaruBtn addTarget:self action:@selector(carpVideoJiaruBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _carpVideoJiaruBtn;
}

-(UILabel *)carpVideoJbianjitexWittviaotsm:(NSString *)titleStr lbFrame:(CGRect)lbFrame{
    NSString * configStr = [NSString stringWithFormat:@"  %@",titleStr];
    UILabel * lb = [[UILabel alloc]initWithFrame:lbFrame];
    lb.textColor = LGDLightBLackColor;
    NSTextAttachment  * attment = [[NSTextAttachment alloc]init];
    attment.image = [UIImage imageNamed:@"xiaoxihongdian"];
    attment.bounds = CGRectMake(0, 0, K(10), K(10));
    NSAttributedString * attbu = [NSAttributedString attributedStringWithAttachment:attment];
    NSMutableAttributedString * lbAttb  =[[NSMutableAttributedString alloc]initWithString:configStr];
    [lbAttb addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, configStr.length)];
    [lbAttb insertAttributedString:attbu atIndex:0];
    lb.attributedText = lbAttb;
    return lb;
}
-(UITextField *)carpVideoJbianjitextFuekdWithHOkders:(NSString *)holdStr FieldFrame:(CGRect)FieldFRame{
    
    UITextField * Filed = [[UITextField alloc]initWithFrame:FieldFRame];
    [Filed addPlaceholders:[UIFont systemFontOfSize:12] holderStr:holdStr holderColor:LGDGaryColor];
    Filed.textColor = LGDBLackColor;
    Filed.font = [UIFont systemFontOfSize:14];
    Filed.clearButtonMode = UITextFieldViewModeAlways;
    return Filed;
}
-(void)viewWillDisappear:(BOOL)animated{
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle = GKNavigationBarBackStyleWhite;
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

