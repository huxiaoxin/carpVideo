
#import "carpVideoMessageDetailViewController.h"
#import "CarpVideoKefuTableViewCell.h"
#import "FilmChatZoneChatDetailToolsView.h"
#import "carpVideoMessageDetailModel.h"
@interface carpVideoMessageDetailViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView * carpMessageTableView;
@property(nonatomic,strong) NSMutableArray * carpMessageDataSoure;
@property(nonatomic,strong) FilmChatZoneChatDetailToolsView  * carpMessageToolsView;
@end

@implementation carpVideoMessageDetailViewController
-(NSMutableArray *)carpMessageDataSoure{
    if (!_carpMessageDataSoure) {
        _carpMessageDataSoure = [NSMutableArray array];
    }
    return _carpMessageDataSoure;
}
-(FilmChatZoneChatDetailToolsView *)carpMessageToolsView{
    if (!_carpMessageToolsView) {
        MJWeakSelf;
        _carpMessageToolsView = [[FilmChatZoneChatDetailToolsView alloc]initWithFrame:CGRectMake(0, SCREEN_Height-RealWidth(65), SCREEN_Width, RealWidth(60)) witheTextViewBlokc:^(UITextView * _Nonnull textView) {
            
            [LCProgressHUD showLoading:@""];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [LCProgressHUD hide];
                carpVideoMessageDetailModel  * models = [[carpVideoMessageDetailModel alloc]init];
                models.msgname = textView.text;
                models.userID = self.carpessModel.ChatID;
                models.msgisMe = YES;
                models.imgUrl = @"https://img2.woyaogexing.com/2021/06/19/4e16cecbec4145c4b10e52bb0b50fd17!400x400.jpeg";
                models.CellHeight = 0 ;
                
                [weakSelf.carpMessageDataSoure addObject:models];
                [WHC_ModelSqlite insert:models];
                NSArray * arr =   [WHC_ModelSqlite query:[carpVideoMessageModel class] where:[NSString stringWithFormat:@"ChatID ='%ld'",(long)self.carpessModel.ChatID]];
                if (arr.count == 0) {
                    carpVideoMessageModel * listModl  = [[carpVideoMessageModel alloc]init];
                    listModl.ChatID = self.carpessModel.ChatID;
                    listModl.imgurl = self.carpessModel.imgurl;
                    listModl.topname = self.carpessModel.topname;
                    listModl.time = [self getCurrentTimes];
                    listModl.content = textView.text;
                    [WHC_ModelSqlite insert:listModl];
                }else{
                    [WHC_ModelSqlite update:[carpVideoMessageModel class] value:[NSString stringWithFormat:@"content = '%@'",textView.text] where:[NSString stringWithFormat:@"ChatID ='%ld'",(long)self.carpessModel.ChatID]];
                }
                [weakSelf.carpMessageTableView reloadData];
                [weakSelf.carpMessageTableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:weakSelf.carpMessageDataSoure.count-1 inSection:0]
                                                               animated:YES
                                                         scrollPosition:UITableViewScrollPositionMiddle];
                textView.text = nil;
            });
 
        }];
    }
    return _carpMessageToolsView;
}
-(NSString*)getCurrentTimes{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate *datenow = [NSDate date];
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    return currentTimeString;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title  = self.carpessModel.topname;
    [self.view addSubview:self.carpMessageTableView];
    [self.view addSubview:self.carpMessageToolsView];
    // Do any additional setup after loading the view.
}
-(UITableView *)carpMessageTableView{
    if (!_carpMessageTableView) {
        _carpMessageTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, SCREEN_Width, SCREEN_Height-RealWidth(65)) style:UITableViewStylePlain];
        _carpMessageTableView.backgroundColor = [UIColor clearColor];
        _carpMessageTableView.delegate = self;
        _carpMessageTableView.dataSource = self;
        _carpMessageTableView.showsVerticalScrollIndicator = NO;
        _carpMessageTableView.showsHorizontalScrollIndicator = NO;
        _carpMessageTableView.separatorStyle =  UITableViewCellSeparatorStyleNone;
        _carpMessageTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(carpMessageTableViewClicks)];
        [_carpMessageTableView.mj_header beginRefreshing];
    }
    return _carpMessageTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.carpMessageDataSoure.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * carpMessgaIdentiets = @"CarpVideoKefuTableViewCell";
    CarpVideoKefuTableViewCell * carpMessgaCell = [tableView dequeueReusableCellWithIdentifier:carpMessgaIdentiets];
    if (carpMessgaCell == nil) {
        carpMessgaCell = [[CarpVideoKefuTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:carpMessgaIdentiets];
    }
    carpMessgaCell.carpDetalMoel = self.carpMessageDataSoure[indexPath.row];
    return carpMessgaCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    carpVideoMessageDetailModel * listModel  =self.carpMessageDataSoure[indexPath.row];
    return listModel.CellHeight;
}
-(void)carpMessageTableViewClicks{
    MJWeakSelf;
    NSArray  * dataArr = [WHC_ModelSqlite query:[carpVideoMessageDetailModel class] where:[NSString stringWithFormat:@"userID = '%@'",[NSString stringWithFormat:@"%ld",self.carpessModel.ChatID]]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.carpMessageDataSoure.count > 0) {
            [weakSelf.carpMessageDataSoure removeAllObjects];
        }
        weakSelf.carpMessageDataSoure  = dataArr.mutableCopy;
        [weakSelf.carpMessageTableView reloadData];
        [weakSelf.carpMessageTableView.mj_header endRefreshing];
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


