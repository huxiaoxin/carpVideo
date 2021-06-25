

#import "CarpVideoMyInfoEditViewController.h"
#import "UITextField+AddPlaceholder.h"
@interface CarpVideoMyInfoEditViewController ()
@property(nonatomic,strong) UITextField * CarpVideoTextField;
@end

@implementation CarpVideoMyInfoEditViewController

-(void)CarpVideoCopmmitBtnClick{
    if (_CarpVideoTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"没有修改任何内容"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[NSUserDefaults standardUserDefaults] setObject:self->_CarpVideoTextField.text forKey:@"CarpvideoName"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [LCProgressHUD showSuccess:@"修改成功"];
        if (weakSelf.seltecdInfoBlock) {
            weakSelf.seltecdInfoBlock();
        }
        [self.navigationController popViewControllerAnimated:YES];
    });
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (self.seltecdInfoBlock) {
        self.seltecdInfoBlock();
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"修改信息";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIView * CarpVideoCopmmitView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, K(80), K(60))];
    UIButton * CarpVideoCopmmitBtn = [[UIButton alloc]initWithFrame:CGRectMake(K(20), K(12), K(40), K(20))];
    [CarpVideoCopmmitBtn setTitle:@"提交" forState:UIControlStateNormal];
    [CarpVideoCopmmitBtn setTitleColor:LGDBLackColor forState:UIControlStateNormal];
    CarpVideoCopmmitBtn.titleLabel.font =[UIFont systemFontOfSize:14];
    [CarpVideoCopmmitBtn addTarget:self action:@selector(CarpVideoCopmmitBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [CarpVideoCopmmitView addSubview:CarpVideoCopmmitBtn];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:CarpVideoCopmmitView];
    
    UIView * CarpVideoMyContentView = [[UIView alloc]initWithFrame:CGRectMake(K(15), NaviH+K(15), SCREEN_Width-K(30), K(40))];
    CarpVideoMyContentView.backgroundColor = LGDLightGaryColor;
    CarpVideoMyContentView.layer.cornerRadius =K(5);
    CarpVideoMyContentView.layer.masksToBounds = YES;
    [self.view addSubview:CarpVideoMyContentView];
    
    UITextField * CarpVideoTextField = [[UITextField alloc]initWithFrame:CGRectMake(K(10), 0, SCREEN_Width-K(40), K(40))];
    CarpVideoTextField.backgroundColor = LGDLightGaryColor;
    CarpVideoTextField.layer.cornerRadius =K(5);
    CarpVideoTextField.layer.masksToBounds = YES;
    [CarpVideoTextField addPlaceholders:[UIFont systemFontOfSize:14] holderStr:@"输入昵称" holderColor:LGDGaryColor];
    [CarpVideoMyContentView addSubview:CarpVideoTextField];
    _CarpVideoTextField=  CarpVideoTextField;
    
    UILabel  * CarpVideoTpislb = [[UILabel alloc]initWithFrame:CGRectMake(K(15), CGRectGetMaxY(CarpVideoMyContentView.frame)+K(10), SCREEN_Width-K(30), K(14))];
    CarpVideoTpislb.textColor = LGDGaryColor;
    CarpVideoTpislb.font =[UIFont systemFontOfSize:12];
    [self.view addSubview:CarpVideoTpislb];
    
    
    NSTextAttachment * CarpAttment = [[NSTextAttachment alloc]init];
    CarpAttment.image = [UIImage imageNamed:@"tishi"];
    CarpAttment.bounds = CGRectMake(0, -2, K(14), K(14));
    NSAttributedString * CarpAttbute = [NSAttributedString attributedStringWithAttachment:CarpAttment];
    NSMutableAttributedString * mutablAtt = [[NSMutableAttributedString alloc]initWithString:@" 最多输入15个字符，字母开头，设置后不能修改"];
    [mutablAtt insertAttributedString:CarpAttbute atIndex:0];
    CarpVideoTpislb.attributedText = mutablAtt;
    // Do any additional setup after loading the view.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CarpVideoTextField becomeFirstResponder];
    });
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
