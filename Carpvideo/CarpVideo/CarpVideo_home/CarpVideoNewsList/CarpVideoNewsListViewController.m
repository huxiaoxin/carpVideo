
#import "CarpVideoNewsListViewController.h"
#import "PandaHotNewsLayoutTool.h"
#import "PandaHotNewsCollectionCell.h"
#import "CarpVideoHomenewsModel.h"
#import "PandaHotnewsSizeTool.h"
#import "CarpVideoHomeNewsDetailViewController.h"
@interface CarpVideoNewsListViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,LMHWaterFallLayoutDeleaget>
@property(nonatomic,strong) UICollectionView * PandaHoemCollectionView;
@property(nonatomic,strong) NSMutableArray * PandaHoemDataArr;
@end

@implementation CarpVideoNewsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"影视资讯";
    [self.view addSubview:self.PandaHoemCollectionView];
    [_PandaHoemCollectionView registerClass:[PandaHotNewsCollectionCell class] forCellWithReuseIdentifier:@"PandaHotNewsCollectionCell"];
    // Do any additional setup after loading the view.
}
-(UICollectionView *)PandaHoemCollectionView{
    if (!_PandaHoemCollectionView) {
        PandaHotNewsLayoutTool * PandaHoemLayout = [[PandaHotNewsLayoutTool alloc]init];
        PandaHoemLayout.delegate = self;
        _PandaHoemCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-NaviH-GK_SAFEAREA_BTM) collectionViewLayout:PandaHoemLayout];
        _PandaHoemCollectionView.backgroundColor = [UIColor clearColor];
        _PandaHoemCollectionView.delegate = self;
        _PandaHoemCollectionView.dataSource = self;
        _PandaHoemCollectionView.showsVerticalScrollIndicator = NO;
        _PandaHoemCollectionView.showsHorizontalScrollIndicator = NO;
        _PandaHoemCollectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaHoemNewsHeaderClicks)];
        [_PandaHoemCollectionView.mj_header beginRefreshing];
    }
    return _PandaHoemCollectionView;
}
#pragma mark UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PandaHotNewsCollectionCell * PandaHoemCell  = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaHotNewsCollectionCell" forIndexPath:indexPath];
    PandaHoemCell.pandaNewsitem = self.PandaHoemDataArr[indexPath.row];
    return PandaHoemCell;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    self.PandaHoemCollectionView.mj_footer.hidden = self.PandaHoemDataArr.count == 0;
    return  self.PandaHoemDataArr.count;
}
- (CGFloat)waterFallLayout:(PandaHotNewsLayoutTool *)waterFallLayout heightForItemAtIndexPath:(NSUInteger)indexPath itemWidth:(CGFloat)itemWidth{
    CarpVideoHomenewsModel * PandaHoemitem = self.PandaHoemDataArr[indexPath];
    return itemWidth*PandaHoemitem.height/PandaHoemitem.width+K(100);
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    CarpVideoHomeNewsDetailViewController * PandaHoemNewsDetailVc = [[CarpVideoHomeNewsDetailViewController alloc]init];
    PandaHoemNewsDetailVc.carpNewsModel = self.PandaHoemDataArr[indexPath.row];
    [self.navigationController pushViewController:PandaHoemNewsDetailVc animated:YES];
}
- (CGFloat)rowMarginInWaterFallLayout:(PandaHotNewsLayoutTool *)waterFallLayout{
    return K(20);
}
- (NSUInteger)columnCountInWaterFallLayout:(PandaHotNewsLayoutTool *)waterFallLayout{
    return 2;
}
-(void)PandaHoemNewsHeaderClicks{
    NSDictionary * dictionary =   [self getJsonDataJsonname:@"CarpVideoFIlds"];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSArray * PandaHoemNewsArr =[[[dictionary objectForKey:@"result"] objectForKey:@"result"] objectForKey:@"list"];
        NSMutableArray * PandaHoemTempArr= [[NSMutableArray alloc]init];
        for (NSDictionary * PandaHoemDic in PandaHoemNewsArr) {
            CarpVideoHomenewsModel * PandaHoemitem = [CarpVideoHomenewsModel BaseinitWithDic:PandaHoemDic];
            if (![PandaHoemitem.imgUrl containsString:@"https://interface.sina.cn/wap_api/video_location.d.html"]) {
                if (![PandaHoemitem.imgUrl containsString:@"https://n.sinaimg.cn/default/2fb77759/20151125/320X320.png"]) {
                    CGSize PandaSize = [PandaHotnewsSizeTool getImageSizeWithURL:PandaHoemitem.imgUrl];
                    PandaHoemitem.height = PandaSize.height;
                    PandaHoemitem.width = PandaSize.width;
                    [PandaHoemTempArr addObject:PandaHoemitem];
                }
                
            }
        }
        weakSelf.PandaHoemDataArr = PandaHoemTempArr;
        [weakSelf.PandaHoemCollectionView reloadData];
        [weakSelf.PandaHoemCollectionView.mj_header endRefreshing];
        
    });
    
}
- (id)getJsonDataJsonname:(NSString *)jsonname
{
    NSString *path = [[NSBundle mainBundle] pathForResource:jsonname ofType:@"json"];
    NSData *jsonData = [[NSData alloc] initWithContentsOfFile:path];
    NSError *error;
    id jsonObj = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    if (!jsonData || error) {
        return nil;
    } else {
        return jsonObj;
    }
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


