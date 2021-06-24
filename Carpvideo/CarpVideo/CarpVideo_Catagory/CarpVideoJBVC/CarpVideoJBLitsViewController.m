
#import "CarpVideoJBLitsViewController.h"
#import "carpVideowarningTabeCell.h"
#import "carpVideoWarningModel.h"
@interface CarpVideoJBLitsViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) NSMutableArray * carpVideoDataArr;
@property(nonatomic,assign) BOOL  CarVideoStatus;
@end

@implementation CarpVideoJBLitsViewController
-(NSMutableArray *)carpVideoDataArr{
    if (!_carpVideoDataArr) {
        _carpVideoDataArr= [[NSMutableArray alloc]init];
        carpVideoWarningModel * CarVideoitmes = [[carpVideoWarningModel alloc]init];
        CarVideoitmes.carpVideoStatus  = NO;
        CarVideoitmes.carpVideoText = @"内容太水,太垃圾";
        [_carpVideoDataArr addObject:CarVideoitmes];
        
        carpVideoWarningModel * CarVideoitmes2 = [[carpVideoWarningModel alloc]init];
        CarVideoitmes2.carpVideoStatus  = NO;
        CarVideoitmes2.carpVideoText = @"低俗、传播色情";
        [_carpVideoDataArr addObject:CarVideoitmes2];
        
        
        carpVideoWarningModel * CarVideoitmes3 = [[carpVideoWarningModel alloc]init];
        CarVideoitmes3.carpVideoStatus  = NO;
        CarVideoitmes3.carpVideoText = @"未经授权侵犯品牌";
        [_carpVideoDataArr addObject:CarVideoitmes3];
        
        
        carpVideoWarningModel * CarVideoitmes4 = [[carpVideoWarningModel alloc]init];
        CarVideoitmes4.carpVideoStatus  = NO;
        CarVideoitmes4.carpVideoText = @"违禁品传播";
        [_carpVideoDataArr addObject:CarVideoitmes4];
        
        carpVideoWarningModel * CarVideoitmes5 = [[carpVideoWarningModel alloc]init];
        CarVideoitmes5.carpVideoStatus  = NO;
        CarVideoitmes5.carpVideoText = @"其他";
        [_carpVideoDataArr addObject:CarVideoitmes5];
        
        
        
    }
    return _carpVideoDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"举报";
    self.CarVideoStatus  =NO;
    self.view.backgroundColor = [UIColor whiteColor];
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CarVideoiHeaderCkucjs)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    
    self.view.backgroundColor = LGDLightGaryColor;
    
    UIView * CarVideoiHeadrMoreView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, K(35))];
    CarVideoiHeadrMoreView.backgroundColor = LGDLightGaryColor;
    
    UILabel * CarVideoiHeadrHikdelb = [[UILabel alloc]initWithFrame:CGRectMake(K(15), K(0), K(200), K(35))];
    CarVideoiHeadrHikdelb.font = [UIFont systemFontOfSize:12];
    CarVideoiHeadrHikdelb.textColor = [UIColor grayColor];
    CarVideoiHeadrHikdelb.text = @"可以选择多项";
    [CarVideoiHeadrMoreView addSubview:CarVideoiHeadrHikdelb];
    _CarpVideoTableView.tableHeaderView = CarVideoiHeadrMoreView;
    
    
    UIView * CarVideoiHeadcomtView  = [[UIView alloc]initWithFrame:CGRectMake(0, 0, K(80), K(40))];
    
    UIButton * CarVideoiHeadcomlBtn  =[[UIButton alloc]initWithFrame:CGRectMake(K(20), K(10), K(40), K(20))];
    [CarVideoiHeadcomlBtn setTitle:@"提交" forState:UIControlStateNormal];
    [CarVideoiHeadcomlBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    CarVideoiHeadcomlBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    [CarVideoiHeadcomlBtn addTarget:self action:@selector(CarVideoiHeadcomlBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [CarVideoiHeadcomtView addSubview:CarVideoiHeadcomlBtn];
    
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:CarVideoiHeadcomtView];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CarVideoStatus ? self.carpVideoDataArr.count : 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * CarVideoiHeadcomIdentifers =  @"carpVideowarningTabeCell";
    carpVideowarningTabeCell * CarVideoiHeadcomICells = [tableView dequeueReusableCellWithIdentifier:CarVideoiHeadcomIdentifers];
    if (CarVideoiHeadcomICells == nil) {
        CarVideoiHeadcomICells = [[carpVideowarningTabeCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CarVideoiHeadcomIdentifers];
    }
    CarVideoiHeadcomICells.carpMdoel = self.carpVideoDataArr[indexPath.row];
    return CarVideoiHeadcomICells;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return K(50);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    carpVideoWarningModel * CarVideoiHeadcModel = self.carpVideoDataArr[indexPath.row];
    CarVideoiHeadcModel.carpVideoStatus = !CarVideoiHeadcModel.carpVideoStatus;
    [_CarpVideoTableView reloadData];
}
-(void)CarVideoiHeaderCkucjs{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        weakSelf.CarVideoStatus = YES;
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
    });
}
-(void)CarVideoiHeadcomlBtnClick{
    int CarVideoiHeadcIndex = 0;
    for (carpVideoWarningModel * CarVideoiHeadcModel in self.carpVideoDataArr) {
        if (CarVideoiHeadcModel.carpVideoStatus) {
            CarVideoiHeadcIndex+=1;
        }
    }
    if (CarVideoiHeadcIndex == 0) {
        [LCProgressHUD showInfoMsg:@"请选择举报类型"];
        return;
    }
    if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        [self CarpVideoShowLoginVc];
        return;
    }
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"感谢支持~,举报结果我们核实后会24h内通知到您"];
        [self.navigationController popViewControllerAnimated:YES];
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


