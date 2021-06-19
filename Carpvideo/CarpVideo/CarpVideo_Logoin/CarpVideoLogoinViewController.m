

#import "CarpVideoLogoinViewController.h"
#import "CarpVideoAboutusViewController.h"
#import "UITextField+AddPlaceholder.h"
@interface CarpVideoLogoinViewController ()
{
    NSTimer *    _CarpVideoTimer;
    NSInteger  _CarpVideoNums;
    
}
@property(nonatomic,strong) UITextField * CarpVideoPhoneNumsTextField;
@property(nonatomic,strong) UITextField * CarpVideoPasswordTextField;
@property(nonatomic,strong) UIButton * CarpVideoCodebtn;
@end

@implementation CarpVideoLogoinViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _CarpVideoNums = 60;
    self.view.backgroundColor = [UIColor whiteColor];
    self.gk_navBarAlpha = 0;
    UIButton *  CarpVideoJumpBtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    [CarpVideoJumpBtn setTitle:@"跳过" forState:UIControlStateNormal];
    CarpVideoJumpBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    [CarpVideoJumpBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
    [CarpVideoJumpBtn addTarget:self action:@selector(CarpVideoJumpBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.gk_navItemRightSpace = RealWidth(20);
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:CarpVideoJumpBtn];
    
    UIImageView * LogoImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(20), NaviH+RealWidth(30), RealWidth(36), RealWidth(36))];
    LogoImgView.layer.cornerRadius = RealWidth(18);
    LogoImgView.layer.masksToBounds = YES;
    LogoImgView.image = [UIImage imageNamed:@"whiteLogo"];
    [self.view addSubview:LogoImgView];
    
    UILabel * CarpVideoTpislb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(LogoImgView.frame)+RealWidth(20), RealWidth(250), RealWidth(20))];
    CarpVideoTpislb.textColor = LGDMianColor;
    CarpVideoTpislb.font = [UIFont boldSystemFontOfSize:20];
    CarpVideoTpislb.text = @"欢迎使用";
    [self.view addSubview:CarpVideoTpislb];
    
    UILabel * CarpVideoSubTpislb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(CarpVideoTpislb.frame)+RealWidth(10), RealWidth(250), RealWidth(13))];
    CarpVideoSubTpislb.textColor = LGDLightBLackColor;
    CarpVideoSubTpislb.font = [UIFont systemFontOfSize:13];
    CarpVideoSubTpislb.text = @"未注册时输入手机号即注册成功";
    [self.view addSubview:CarpVideoSubTpislb];
    
    
    UIView * CarpVideoInputView  = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(CarpVideoSubTpislb.frame)+RealWidth(20), SCREEN_Width-RealWidth(40), RealWidth(90))];
    CarpVideoInputView.layer.borderColor = LGDLightBLackColor.CGColor;
    CarpVideoInputView.layer.borderWidth = 0.5;
    CarpVideoInputView.layer.cornerRadius = RealWidth(5);
    CarpVideoInputView.layer.masksToBounds = YES;
    [self.view addSubview:CarpVideoInputView];
    
    UIView *  verline = [[UIView alloc]initWithFrame:CGRectMake(0, RealWidth(45), CGRectGetWidth(CarpVideoInputView.frame), 0.5)];
    verline.backgroundColor = LGDLightBLackColor;
    [CarpVideoInputView addSubview:verline];
    
    UIImageView * phoneImg =[self CarpVideimgConfigWithName:[UIImage imageNamed:@"shouji"] imgFrame:CGRectMake(RealWidth(15), RealWidth(13.5), RealWidth(18), RealWidth(18))];
    [CarpVideoInputView addSubview:phoneImg];
    
    UIImageView * codeImg =[self CarpVideimgConfigWithName:[UIImage imageNamed:@"yanzhengma"] imgFrame:CGRectMake(RealWidth(15), RealWidth(13.5)+CGRectGetMaxY(verline.frame), RealWidth(18), RealWidth(18))];
    [CarpVideoInputView addSubview:codeImg];
    
    
    UITextField * CarpVideoPhoneNumsTextField = [[UITextField alloc]initWithFrame:CGRectMake(CGRectGetMaxX(phoneImg.frame)+RealWidth(10), 0, CGRectGetWidth(CarpVideoInputView.frame)-CGRectGetMaxX(phoneImg.frame)-RealWidth(10), RealWidth(45))];
    CarpVideoPhoneNumsTextField.keyboardType = UIKeyboardTypeNumberPad;
    CarpVideoPhoneNumsTextField.font = [UIFont systemFontOfSize:16];
    CarpVideoPhoneNumsTextField.textColor = LGDBLackColor;
    CarpVideoPhoneNumsTextField.clearButtonMode = UITextFieldViewModeAlways;
    [CarpVideoPhoneNumsTextField addPlaceholders:[UIFont systemFontOfSize:13] holderStr:@"手机号" holderColor:LGDGaryColor];
    [CarpVideoInputView addSubview:CarpVideoPhoneNumsTextField];
    _CarpVideoPhoneNumsTextField =  CarpVideoPhoneNumsTextField;
    
    
    UITextField * CarpVideoPasswordTextField = [[UITextField alloc]initWithFrame:CGRectMake(CGRectGetMaxX(phoneImg.frame)+RealWidth(10), CGRectGetMaxY(verline.frame), CGRectGetWidth(CarpVideoInputView.frame)-CGRectGetMaxX(phoneImg.frame)-RealWidth(10+80), RealWidth(45))];
    CarpVideoPasswordTextField.keyboardType = UIKeyboardTypeDefault;
    CarpVideoPasswordTextField.font = [UIFont systemFontOfSize:16];
    CarpVideoPasswordTextField.textColor = LGDBLackColor;
    CarpVideoPasswordTextField.clearButtonMode = UITextFieldViewModeAlways;
    [CarpVideoPasswordTextField addPlaceholders:[UIFont systemFontOfSize:13] holderStr:@"验证码或密码" holderColor:LGDGaryColor];
    [CarpVideoInputView addSubview:CarpVideoPasswordTextField];
    _CarpVideoPasswordTextField = CarpVideoPasswordTextField;
    
    
    UIButton * CarpVideoCodebtn = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetWidth(CarpVideoInputView.frame)-RealWidth(80), CGRectGetMaxY(verline.frame), RealWidth(80), RealWidth(45))];
    CarpVideoCodebtn.titleLabel.font = [UIFont systemFontOfSize:13];
    [CarpVideoCodebtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
    [CarpVideoCodebtn addTarget:self action:@selector(CarpVideoCodebtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [CarpVideoCodebtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    [CarpVideoInputView addSubview:CarpVideoCodebtn];
    _CarpVideoCodebtn = CarpVideoCodebtn;
    
    
    
    UIButton * CarpVideoLoginBtn = [[UIButton alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(CarpVideoInputView.frame)+RealWidth(30), SCREEN_Width-RealWidth(40), RealWidth(40))];
    [CarpVideoLoginBtn setBackgroundColor:LGDMianColor];
    CarpVideoLoginBtn.layer.cornerRadius = RealWidth(5);
    CarpVideoLoginBtn.layer.masksToBounds = YES;
    [CarpVideoLoginBtn setTitle:@"登录" forState:UIControlStateNormal];
    CarpVideoLoginBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    CarpVideoLoginBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [CarpVideoLoginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [CarpVideoLoginBtn addTarget:self action:@selector(CarpVideoLoginBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:CarpVideoLoginBtn];
    
    
    UILabel * CarpVideoPrivatelb =[[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(CarpVideoLoginBtn.frame)+RealWidth(20), SCREEN_Width, RealWidth(15))];
    CarpVideoPrivatelb.textAlignment = NSTextAlignmentCenter;
    CarpVideoPrivatelb.font = [UIFont systemFontOfSize:13];
    CarpVideoPrivatelb.userInteractionEnabled = YES;
    [self.view addSubview:CarpVideoPrivatelb];
    NSString * Str1 = @"登录或注册，即代表你同意";
    NSString *Str2 = @"<用户使用协议>";
    NSMutableAttributedString * attbute = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"%@%@",Str1,Str2]];
    [attbute addAttribute:NSForegroundColorAttributeName value:LGDGaryColor range:NSMakeRange(0, Str1.length)];
    [attbute addAttribute:NSForegroundColorAttributeName value:LGDMianColor range:NSMakeRange(Str1.length, Str2.length)];
    CarpVideoPrivatelb.attributedText = attbute;
    
    UITapGestureRecognizer * privaterTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(PrivateTapClick)];
    [CarpVideoPrivatelb addGestureRecognizer:privaterTap];
}
-(void)CarpVideoCodebtnClick:(UIButton *)codeBtn{
    if (_CarpVideoPhoneNumsTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    if (_CarpVideoPhoneNumsTextField.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showInfoMsg:@"发送成功"];
        self->_CarpVideoTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(CarpVidegetCodeCloicks) userInfo:nil repeats:YES];
        [self->_CarpVideoTimer fire];
        
    });
    
}
-(void)CarpVidegetCodeCloicks{
    _CarpVideoNums--;
    _CarpVideoCodebtn.enabled = NO;
    [_CarpVideoCodebtn setTitle:[NSString stringWithFormat:@"%lds后可重发",(long)_CarpVideoNums] forState:UIControlStateNormal];
    if (_CarpVideoNums == 0) {
        [_CarpVideoTimer invalidate];
        [_CarpVideoCodebtn setTitle:[NSString stringWithFormat:@"重新获取"] forState:UIControlStateNormal];
        _CarpVideoCodebtn.enabled = YES;
    }
    
}
-(void)CarpVideoLoginBtnClick{
    
    if (_CarpVideoPhoneNumsTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    if (_CarpVideoPhoneNumsTextField.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
    if (_CarpVideoPasswordTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入验证码或密码"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if ([weakSelf.CarpVideoPhoneNumsTextField.text isEqualToString:@"18958021939"] && [weakSelf.CarpVideoPasswordTextField.text isEqualToString:@"6850"]) {
            [CarpVideoLoginVideModelTool CarpVideoLoginViewModel_loginSucced];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"CarpVideoLoginSuccedNotifiCation" object:nil];
            [LCProgressHUD showSuccess:@"登录成功"];
            [weakSelf dismissViewControllerAnimated:YES completion:nil];
        }else{
            [LCProgressHUD showInfoMsg:@"密码错误"];
        }
        
    });
    
}
-(void)PrivateTapClick{
    CarpVideoAboutusViewController * privateVc = [[CarpVideoAboutusViewController alloc]init];
    privateVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:privateVc animated:YES];
}
-(UIImageView *)CarpVideimgConfigWithName:(UIImage *)imgNamestr imgFrame:(CGRect)imgFrame{
    UIImageView * img = [[UIImageView alloc]initWithFrame:imgFrame];
    img.image =  imgNamestr;
    return img;
}
-(UILabel *)CarpVideiholderlbWithConfig:(NSString *)lbstr lbFrame:(CGRect)lbFrame{
    UILabel * lb =[[UILabel alloc]initWithFrame:lbFrame];
    lb.text = lbstr;
    lb.textColor =  LGDLightGaryColor;
    lb.font = [UIFont systemFontOfSize:13];
    return lb;
}
-(void)CarpVideoJumpBtnClick{
    [self dismissViewControllerAnimated:YES completion:nil];
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


