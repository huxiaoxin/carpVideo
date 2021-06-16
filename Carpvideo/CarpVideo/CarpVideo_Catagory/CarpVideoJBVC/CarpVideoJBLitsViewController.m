
#import "CarpVideoJBLitsViewController.h"
#import "WindwoundwarningTabeCell.h"
#import "WindwoundWarningModel.h"
@interface CarpVideoJBLitsViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) NSMutableArray * windwoundWarninngDataArr;
@property(nonatomic,assign) BOOL  ZXCBookWarninng;
@end

@implementation CarpVideoJBLitsViewController
-(NSMutableArray *)windwoundWarninngDataArr{
    if (!_windwoundWarninngDataArr) {
        _windwoundWarninngDataArr= [[NSMutableArray alloc]init];
        WindwoundWarningModel * windwoundWarninngitem = [[WindwoundWarningModel alloc]init];
        windwoundWarninngitem.WindwoundState  = NO;
        windwoundWarninngitem.windwoundText = @"内容太水,太垃圾";
        [_windwoundWarninngDataArr addObject:windwoundWarninngitem];
        
        WindwoundWarningModel * windwoundWarninngitem2 = [[WindwoundWarningModel alloc]init];
        windwoundWarninngitem2.WindwoundState  = NO;
        windwoundWarninngitem2.windwoundText = @"低俗、传播色情";
        [_windwoundWarninngDataArr addObject:windwoundWarninngitem2];
        
        
        WindwoundWarningModel * windwoundWarninngitem3 = [[WindwoundWarningModel alloc]init];
        windwoundWarninngitem3.WindwoundState  = NO;
        windwoundWarninngitem3.windwoundText = @"未经授权侵犯品牌";
        [_windwoundWarninngDataArr addObject:windwoundWarninngitem3];
        
        
        WindwoundWarningModel * windwoundWarninngitem4 = [[WindwoundWarningModel alloc]init];
        windwoundWarninngitem4.WindwoundState  = NO;
        windwoundWarninngitem4.windwoundText = @"违禁品传播";
        [_windwoundWarninngDataArr addObject:windwoundWarninngitem4];
        
        WindwoundWarningModel * windwoundWarninngitem5 = [[WindwoundWarningModel alloc]init];
        windwoundWarninngitem5.WindwoundState  = NO;
        windwoundWarninngitem5.windwoundText = @"其他";
        [_windwoundWarninngDataArr addObject:windwoundWarninngitem5];
        
        
        
    }
    return _windwoundWarninngDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"举报";
    self.ZXCBookWarninng  =NO;
    self.view.backgroundColor = [UIColor whiteColor];
    _CarpVideoTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(windwoundWarnHeaderActions)];
    [_CarpVideoTableView.mj_header beginRefreshing];
    
    self.view.backgroundColor = LGDLightGaryColor;
    
    UIView * windwoundWarninMoreView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, K(35))];
    windwoundWarninMoreView.backgroundColor = LGDLightGaryColor;
    
    UILabel * windwoundWarninMorelb = [[UILabel alloc]initWithFrame:CGRectMake(K(15), K(0), K(200), K(35))];
    windwoundWarninMorelb.font = [UIFont systemFontOfSize:12];
    windwoundWarninMorelb.textColor = [UIColor grayColor];
    windwoundWarninMorelb.text = @"可以选择多项";
    [windwoundWarninMoreView addSubview:windwoundWarninMorelb];
    _CarpVideoTableView.tableHeaderView = windwoundWarninMoreView;
    
    
    UIView * windwoundWarnincommteiView  = [[UIView alloc]initWithFrame:CGRectMake(0, 0, K(80), K(40))];
    
    UIButton * windwoundWarninbtn  =[[UIButton alloc]initWithFrame:CGRectMake(K(20), K(10), K(40), K(20))];
    [windwoundWarninbtn setTitle:@"提交" forState:UIControlStateNormal];
    [windwoundWarninbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    windwoundWarninbtn.titleLabel.font = [UIFont systemFontOfSize:13];
    [windwoundWarninbtn addTarget:self action:@selector(windwoundWarninbtnClick) forControlEvents:UIControlEventTouchUpInside];
    [windwoundWarnincommteiView addSubview:windwoundWarninbtn];
    
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:windwoundWarnincommteiView];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ZXCBookWarninng ? self.windwoundWarninngDataArr.count : 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * windwoundWarninIDentifers =  @"WindwoundwarningTabeCell";
    WindwoundwarningTabeCell * windwoundWarninICell = [tableView dequeueReusableCellWithIdentifier:windwoundWarninIDentifers];
    if (windwoundWarninICell == nil) {
        windwoundWarninICell = [[WindwoundwarningTabeCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:windwoundWarninIDentifers];
    }
    windwoundWarninICell.windwoundItem = self.windwoundWarninngDataArr[indexPath.row];
    return windwoundWarninICell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return K(50);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    WindwoundWarningModel * windwoundWarniitem = self.windwoundWarninngDataArr[indexPath.row];
    windwoundWarniitem.WindwoundState = !windwoundWarniitem.WindwoundState;
    [_CarpVideoTableView reloadData];
}
-(void)windwoundWarnHeaderActions{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        weakSelf.ZXCBookWarninng = YES;
        [self->_CarpVideoTableView reloadData];
        [self->_CarpVideoTableView.mj_header endRefreshing];
    });
}
-(void)windwoundWarninbtnClick{
    int windwoundWarIndex = 0;
    for (WindwoundWarningModel * windwoundWarniitem in self.windwoundWarninngDataArr) {
        if (windwoundWarniitem.WindwoundState) {
            windwoundWarIndex+=1;
        }
    }
    if (windwoundWarIndex == 0) {
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


