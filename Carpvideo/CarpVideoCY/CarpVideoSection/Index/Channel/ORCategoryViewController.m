//
//  ORCategoryViewController.m
//  OrangeVideo
//
//  Created by chenyuan on 2021/1/20.
//

#import "ORCategoryViewController.h"

#define kItemWidth (kScreenWidth - 15 * 2 - 10 * 2)/3.0
#define kItemHeight kItemWidth

@interface ORCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong) UIView *backView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *iconImageView;

@end

@implementation ORCollectionViewCell

#pragma mark - LifeCycle

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = gnh_color_c;
        self.layer.cornerRadius = 10.0f;
        self.layer.masksToBounds = YES;
        self.clipsToBounds = YES;
        
        UIView *backView = [UIView ly_ViewWithColor:gnh_color_b];
        [self.contentView addSubview:backView];
        [backView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
        }];
        self.backView = backView;
        
        UIImageView *iconImageView = [UIImageView ly_ViewWithColor:UIColor.clearColor];
        [self.contentView addSubview:iconImageView];
        [iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(22.0f);
            make.centerX.equalTo(self.contentView);
            make.size.mas_equalTo(CGSizeMake(35.0f, 35.0f));
        }];
        self.iconImageView = iconImageView;
        
        UILabel *titleLabel = [UILabel ly_LabelWithTitle:@"" font:zy_mediumSystemFont15 titleColor:gnh_color_f];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(iconImageView.mas_bottom).offset(6.5f);
            make.centerX.equalTo(self.contentView);
        }];
        self.titleLabel = titleLabel;
    }
    
    return [super initWithFrame:frame];
}

- (void)reloadCollectionViewData:(ORChannelMenuDataItem *)dataItem
{
    [self.iconImageView sd_setImageWithURL:dataItem.icon.urlWithString];
    self.titleLabel.text = dataItem.name;
}

@end

@interface ORCategoryViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) UICollectionView *collectionView; // ???????????????

@end

@implementation ORCategoryViewController

#pragma mark - LifeCycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupUI];
    
    [self setupData];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark - setupUI

- (void)setupUI
{
    UILabel *titleLabel = [UILabel ly_LabelWithTitle:@"??????" font:zy_blodFontSize17 titleColor:gnh_color_k];
    [self.view addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(ORKitMacros.statusBarHeight + 15.0f);
        make.left.equalTo(self.view).offset(13.0f);
    }];
    
    UIButton *closeButton = [UIButton ly_ButtonWithNormalImageName:@"carpVideo_com_clous_icon" selecteImageName:@"carpVideo_com_clous_icon" target:self selector:@selector(closeAction:)];
    [self.view addSubview:closeButton];
    [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(-9.5f);
        make.centerY.equalTo(titleLabel);
    }];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    collectionView.backgroundColor = gnh_color_c;
    [collectionView registerClass:[ORCollectionViewCell class] forCellWithReuseIdentifier:@"cellId"];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [self.view addSubview:collectionView];
    [collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_offset(ORKitMacros.statusBarHeight + 59.5f);
        make.bottom.equalTo(self.view);
        make.left.right.equalTo(self.view).inset(15.0f);
    }];
    self.collectionView = collectionView;
}

- (void)setupData
{
    self.navigationItem.title = @"??????";
    self.view.backgroundColor = gnh_color_c;
    
    self.fd_prefersNavigationBarHidden = YES;
}

#pragma mark - ButtonAction

- (void)closeAction:(UIButton *)btn
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UICollectionView Delegate & dataSource

//??????section??????
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

//??????section???item??????
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ORCollectionViewCell *cell = (ORCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    
    if (self.data.count) {
        ORChannelMenuDataItem *dataItem = (ORChannelMenuDataItem *)[self.data mdf_safeObjectAtIndex:indexPath.row];
        [cell reloadCollectionViewData:dataItem];
    }
    
    return cell;
}

//????????????item?????????
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(kItemWidth, kItemHeight);
}

//????????????item???UIEdgeInsets
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsZero;
}

//????????????item????????????
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}

//????????????item????????????
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}

//??????item??????
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.categoryCompleteHandel) {
        if (self.data.count) {
            ORChannelMenuDataItem *dataItem = (ORChannelMenuDataItem *)[self.data mdf_safeObjectAtIndex:indexPath.row];
            self.categoryCompleteHandel(dataItem);
            
            [self.navigationController popViewControllerAnimated:YES];
        }
    }
}


@end
