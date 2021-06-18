
#import "PandaMsgDetailViewController.h"
#import "CarpVideoKefuTableViewCell.h"
#import "FilmChatZoneChatDetailToolsView.h"
#import "carpVideoMessageDetailModel.h"
@interface PandaMsgDetailViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView * PandaMsgDetasilTableView;
@property(nonatomic,strong) NSMutableArray * PandaMsgDataList;
@property(nonatomic,strong) FilmChatZoneChatDetailToolsView  * PandaMsgSendtoolView;
@end

@implementation PandaMsgDetailViewController
-(NSMutableArray *)PandaMsgDataList{
    if (!_PandaMsgDataList) {
        _PandaMsgDataList = [NSMutableArray array];
    }
    return _PandaMsgDataList;
}
-(FilmChatZoneChatDetailToolsView *)PandaMsgSendtoolView{
    if (!_PandaMsgSendtoolView) {
        MJWeakSelf;
        _PandaMsgSendtoolView = [[FilmChatZoneChatDetailToolsView alloc]initWithFrame:CGRectMake(0, SCREEN_Height-RealWidth(65), SCREEN_Width, RealWidth(60)) witheTextViewBlokc:^(UITextView * _Nonnull textView) {
            
            [LCProgressHUD showLoading:@""];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [LCProgressHUD hide];
                carpVideoMessageDetailModel  * models = [[carpVideoMessageDetailModel alloc]init];
                models.msgname = textView.text;
                models.userID = self.pandModel.ChatID;
                models.msgisMe = YES;
                models.imgUrl = @"https://p.qqan.com/up/2021-4/16194921988015974.jpg";
                models.CellHeight = 0 ;
                
                [weakSelf.PandaMsgDataList addObject:models];
                [WHC_ModelSqlite insert:models];
                NSArray * arr =   [WHC_ModelSqlite query:[carpVideoMessageModel class] where:[NSString stringWithFormat:@"ChatID ='%ld'",(long)self.pandModel.ChatID]];
                if (arr.count == 0) {
                    carpVideoMessageModel * listModl  = [[carpVideoMessageModel alloc]init];
                    listModl.ChatID = self.pandModel.ChatID;
                    listModl.imgurl = self.pandModel.imgurl;
                    listModl.topname = self.pandModel.topname;
                    listModl.time = [self getCurrentTimes];
                    listModl.content = textView.text;
                    [WHC_ModelSqlite insert:listModl];
                }else{
                    [WHC_ModelSqlite update:[carpVideoMessageModel class] value:[NSString stringWithFormat:@"content = '%@'",textView.text] where:[NSString stringWithFormat:@"ChatID ='%ld'",(long)self.pandModel.ChatID]];
                }
                [weakSelf.PandaMsgDetasilTableView reloadData];
                [weakSelf.PandaMsgDetasilTableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:weakSelf.PandaMsgDataList.count-1 inSection:0]
                                                               animated:YES
                                                         scrollPosition:UITableViewScrollPositionMiddle];
                textView.text = nil;
            });
 
        }];
    }
    return _PandaMsgSendtoolView;
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
    self.gk_navTitle  = self.pandModel.topname;
    [self.view addSubview:self.PandaMsgDetasilTableView];
    [self.view addSubview:self.PandaMsgSendtoolView];
    // Do any additional setup after loading the view.
}
-(UITableView *)PandaMsgDetasilTableView{
    if (!_PandaMsgDetasilTableView) {
        _PandaMsgDetasilTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, SCREEN_Width, SCREEN_Height-RealWidth(65)) style:UITableViewStylePlain];
        _PandaMsgDetasilTableView.backgroundColor = [UIColor clearColor];
        _PandaMsgDetasilTableView.delegate = self;
        _PandaMsgDetasilTableView.dataSource = self;
        _PandaMsgDetasilTableView.showsVerticalScrollIndicator = NO;
        _PandaMsgDetasilTableView.showsHorizontalScrollIndicator = NO;
        _PandaMsgDetasilTableView.separatorStyle =  UITableViewCellSelectionStyleNone;
        _PandaMsgDetasilTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaMsgDetasilTableViewClicks)];
        [_PandaMsgDetasilTableView.mj_header beginRefreshing];
    }
    return _PandaMsgDetasilTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaMsgDataList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaMsgDetailIdnetifer = @"CarpVideoKefuTableViewCell";
    CarpVideoKefuTableViewCell * PandaMsgCell = [tableView dequeueReusableCellWithIdentifier:PandaMsgDetailIdnetifer];
    if (PandaMsgCell == nil) {
        PandaMsgCell = [[CarpVideoKefuTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaMsgDetailIdnetifer];
    }
    PandaMsgCell.carpDetalMoel = self.PandaMsgDataList[indexPath.row];
    return PandaMsgCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    carpVideoMessageDetailModel * listModel  =self.PandaMsgDataList[indexPath.row];
    return listModel.CellHeight;
}
-(void)PandaMsgDetasilTableViewClicks{
    MJWeakSelf;
    NSArray  * dataArr = [WHC_ModelSqlite query:[carpVideoMessageDetailModel class] where:[NSString stringWithFormat:@"userID = '%@'",[NSString stringWithFormat:@"%ld",self.pandModel.ChatID]]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.PandaMsgDataList.count > 0) {
            [weakSelf.PandaMsgDataList removeAllObjects];
        }
        weakSelf.PandaMsgDataList  = dataArr.mutableCopy;
        [weakSelf.PandaMsgDetasilTableView reloadData];
        [weakSelf.PandaMsgDetasilTableView.mj_header endRefreshing];
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


