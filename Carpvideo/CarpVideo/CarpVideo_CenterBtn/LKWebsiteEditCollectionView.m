//
//  LKWebsiteEditCollectionView.m
//  cltios
//
//  Created by zjlk03 on 2021/5/26.
//

#import "LKWebsiteEditCollectionView.h"
#import "LKWebsiteEditCollectionViewCell.h"
#import "LKWebsiteEditModel.h"
#import "ZBWPhotosManager.h"
#import <GKPhotoBrowser-umbrella.h>
#import "MBImagePicker.h"
@interface LKWebsiteEditCollectionView ()<UICollectionViewDelegate,UICollectionViewDataSource,LKWebsiteEditCollectionViewCellDelegate>
@property(nonatomic,strong) UICollectionView * LkCollectionView;
@property(nonatomic,assign) CGSize             itemSize;
@property(nonatomic,assign) BOOL               ShowdisplayLine;
@end
@implementation LKWebsiteEditCollectionView
-(void)LKWebsiteEditCollectionViewResetData{
    [self.LKWebsiteDataSoure removeAllObjects];
    
    LKWebsiteEditModel * editModel = [[LKWebsiteEditModel alloc]init];
    editModel.imgName = [UIImage imageNamed:@"edit_photo_video_icon"];
    editModel.isEdit = NO;
    [_LKWebsiteDataSoure addObject:editModel];
    [self.LkCollectionView reloadData];
    [self lkWebsiteupdeView];

}
- (NSMutableArray *)LKWebsiteDataSoure{
    if (!_LKWebsiteDataSoure) {
        _LKWebsiteDataSoure = [NSMutableArray array];
        LKWebsiteEditModel * editModel = [[LKWebsiteEditModel alloc]init];
        editModel.imgName = [UIImage imageNamed:@"edit_photo_video_icon"];
        editModel.isEdit = NO;
        [_LKWebsiteDataSoure addObject:editModel];
    }
    return _LKWebsiteDataSoure;
}
-(instancetype)initWithFrame:(CGRect)frame withItemSize:(CGSize)itemSize isShowDisplayline:(BOOL)isShow{
    if (self = [super initWithFrame:frame]) {
        self.ShowdisplayLine =  isShow;
        self.itemSize = itemSize;
        [self addSubview:self.LkCollectionView];
        [_LkCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self);
        }];
    }
    return self;
}
-(UICollectionView *)LkCollectionView{
    if (!_LkCollectionView) {
        UICollectionViewFlowLayout * LkwebLayout = [[UICollectionViewFlowLayout alloc]init];
        LkwebLayout.minimumLineSpacing = RealWidth(5);
        LkwebLayout.minimumInteritemSpacing = RealWidth(5);
        LkwebLayout.sectionInset =  UIEdgeInsetsMake(0, RealWidth(5), 0, RealWidth(5));
        LkwebLayout.itemSize = CGSizeMake(self.itemSize.width-RealWidth(0), self.itemSize.height-RealWidth(0));
        _LkCollectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:LkwebLayout];
        _LkCollectionView.delegate = self;
        _LkCollectionView.dataSource = self;
        _LkCollectionView.showsVerticalScrollIndicator = NO;
        _LkCollectionView.showsHorizontalScrollIndicator  = NO;
        _LkCollectionView.backgroundColor = [UIColor clearColor];
    }
    return _LkCollectionView;
}
#pragma mark--UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.LKWebsiteDataSoure.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    LKWebsiteEditCollectionViewCell * LKwebCell = [LKWebsiteEditCollectionViewCell creatTheCollectView:collectionView AndTheIndexPath:indexPath];
    LKwebCell.editModel = self.LKWebsiteDataSoure[indexPath.row];
    LKwebCell.delegate =self;
    LKwebCell.tag = indexPath.row;
    return LKwebCell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    LKWebsiteEditModel * editModel = self.LKWebsiteDataSoure[indexPath.row];
    if (editModel.isEdit) {
        //图片浏览
        NSMutableArray * photos = [NSMutableArray array];
        [self.LKWebsiteDataSoure enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            LKWebsiteEditCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([LKWebsiteEditCollectionViewCell class]) forIndexPath:[NSIndexPath indexPathWithIndex:idx]];
            LKWebsiteEditModel * editModel = (LKWebsiteEditModel*)obj;
            if (editModel.isEdit) {
                GKPhoto * photo = [GKPhoto new];
                photo.image =editModel.imgName;
                photo.sourceImageView =cell.LKThubImgView;
                [photos addObject:photo];
            }
        }];
        
        UIViewController * RootVc = [AppDelegate shareDelegate].window.rootViewController.gk_visibleViewControllerIfExist;
        GKPhotoBrowser *browser = [GKPhotoBrowser photoBrowserWithPhotos:photos currentIndex:indexPath.row];
        browser.showStyle = GKPhotoBrowserShowStylePush;
        browser.hideStyle = GKPhotoBrowserHideStyleZoom;
        [browser showFromVC:RootVc];
    }else{
    [self LKEditShowAlterVc];
    }
    

}
-(void)LKEditShowAlterVc{
    UIViewController * RootVc = [AppDelegate shareDelegate].window.rootViewController.gk_visibleViewControllerIfExist;
    UIAlertController * lkalter = [UIAlertController alertControllerWithTitle:@"请选择" message:@"" preferredStyle:UIAlertControllerStyleActionSheet];
    
    MJWeakSelf;
    UIAlertAction * lkPhotoAction = [UIAlertAction actionWithTitle:@"相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [ZBWPhotosManager showPhotosManager:RootVc withMaxImageCount:10 withAlbumArray:^(NSMutableArray<ZBWPhotoModel *> * _Nonnull albumArray) {

        [albumArray enumerateObjectsUsingBlock:^(ZBWPhotoModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            LKWebsiteEditModel * websiteModel = [[LKWebsiteEditModel alloc]init];
            websiteModel.imgName =  obj.highDefinitionImage;
            websiteModel.isEdit = YES;
            [weakSelf.LKWebsiteDataSoure insertObject:websiteModel atIndex:weakSelf.LKWebsiteDataSoure.count -1];
        }];
        [weakSelf lkWebsiteupdeView];
    }];
    }];
    UIAlertAction * lkCameraAction = [UIAlertAction actionWithTitle:@"相机" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIViewController * Lkc = [AppDelegate shareDelegate].window.rootViewController;
        [Lkc pickImageWithCamerCompletionHandler:^(NSData *imageData, UIImage *image) {
            LKWebsiteEditModel  * editModel = [[LKWebsiteEditModel alloc]init];
            editModel.imgName =  image;
            editModel.isEdit = YES;
            [weakSelf.LKWebsiteDataSoure insertObject:editModel atIndex:weakSelf.LKWebsiteDataSoure.count-1];
            [weakSelf lkWebsiteupdeView];
        }];
        
    }];
    UIAlertAction * lkVideoAction = [UIAlertAction actionWithTitle:@"视频" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction * lkCancleAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [lkalter addAction:lkPhotoAction];
    [lkalter addAction:lkCameraAction];
//    [lkalter addAction:lkVideoAction];
    [lkalter addAction:lkCancleAction];
    [[AppDelegate shareDelegate].window.rootViewController  presentViewController:lkalter animated:YES completion:nil];
}
-(void)lkWebsiteupdeView{
    [self setNeedsLayout];
    [self layoutIfNeeded];
   [self.LkCollectionView reloadData];
    if (self.currentViewHeightBlock) {
     ///取余结果：3 一行3个
    NSUInteger result = self.LKWebsiteDataSoure.count % 3;
    NSUInteger row = 0;///多少行
    if (result == 0) {
    row = self.LKWebsiteDataSoure.count/3;///行数计算
    }else{
   row = self.LKWebsiteDataSoure.count/3 + 1;
    }
    NSUInteger margin;
    if (self.ShowdisplayLine) {
        margin = RealWidth(10);
    }else{
        margin = 0;
    }
    self.currentViewHeightBlock(self.LkCollectionView.collectionViewLayout.collectionViewContentSize.height-row*margin);
    }
}
#pragma mark--LKWebsiteEditCollectionViewCellDelegate
-(void)LKWebsiteEditCollectionViewCellDidDeleteImgViewWithCellIndex:(NSInteger)cellIndex{
    LKWebsiteEditModel * editModel = self.LKWebsiteDataSoure[cellIndex];
    if (editModel.isEdit) {
        [self.LKWebsiteDataSoure removeObject:editModel];
        [self lkWebsiteupdeView];
    }
 
}
@end
