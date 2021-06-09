//
//  CarpVideoCatagroyViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoCatagroyViewController.h"
#import <SPPageMenu.h>
#import "CarpVideoCatagroySubViewController.h"
@interface CarpVideoCatagroyViewController ()<SPPageMenuDelegate,UIScrollViewDelegate>
{
    SPPageMenu * _pageMenu;
}
@property(nonatomic,strong) UIScrollView * scrollView;
@property (nonatomic, strong) NSMutableArray *myChildViewControllers;

@end

@implementation CarpVideoCatagroyViewController
- (NSMutableArray *)myChildViewControllers{
    if (!_myChildViewControllers) {
        _myChildViewControllers = [NSMutableArray array];
    }
    return _myChildViewControllers;
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    self.gk_navItemRightSpace = RealWidth(15);
   
     NSArray *dataArr = @[@"关注",@"动态"];
    SPPageMenu *pageMenu = [SPPageMenu pageMenuWithFrame:CGRectMake(120, 0, GK_SCREEN_WIDTH-240, RealWidth(25)) trackerStyle:SPPageMenuTrackerStyleRoundedRect];
    pageMenu.layer.borderWidth = 1;
    pageMenu.layer.borderColor = LGDMianColor.CGColor;
    pageMenu.layer.cornerRadius = RealWidth(25) * 0.5;
    [pageMenu setItems:dataArr selectedItemIndex:1];
    pageMenu.unSelectedItemTitleColor = LGDMianColor;
    pageMenu.tracker.backgroundColor = LGDMianColor;
    pageMenu.permutationWay = SPPageMenuPermutationWayNotScrollAdaptContent;
    pageMenu.dividingLine.hidden = YES;
    pageMenu.delegate = self;
    pageMenu.bridgeScrollView = self.scrollView;

    self.gk_navTitleView = pageMenu;
    _pageMenu = pageMenu;
    [self.view addSubview:self.scrollView];

    
    NSArray *controllerClassNames = [NSArray arrayWithObjects:@"CarpVideoCatagroySubViewController",@"CarpVideoCatagroySubViewController", nil];
    for (int i = 0; i < dataArr.count; i++) {
        if (controllerClassNames.count > i) {
            CarpVideoCatagroySubViewController *baseVc = [[NSClassFromString(controllerClassNames[i]) alloc] init];
            baseVc.VCIndex =  i;
            [self addChildViewController:baseVc];
            // 控制器本来自带childViewControllers,但是遗憾的是该数组的元素顺序永远无法改变，只要是addChildViewController,都是添加到最后一个，而控制器不像数组那样，可以插入或删除任意位置，所以这里自己定义可变数组，以便插入(删除)(如果没有插入(删除)功能，直接用自带的childViewControllers即可)
            [self.myChildViewControllers addObject:baseVc];
        }
    }
    // pageMenu.selectedItemIndex就是选中的item下标
    if (_pageMenu.selectedItemIndex < self.myChildViewControllers.count) {
        CarpVideoCatagroySubViewController *baseVc = self.myChildViewControllers[_pageMenu.selectedItemIndex];
        [self.scrollView addSubview:baseVc.view];
        baseVc.view.frame = CGRectMake(GK_SCREEN_WIDTH*_pageMenu.selectedItemIndex, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_TABBAR_HEIGHT);
        self.scrollView .contentOffset = CGPointMake(GK_SCREEN_WIDTH*_pageMenu.selectedItemIndex, 0);
        self.scrollView .contentSize = CGSizeMake(dataArr.count*GK_SCREEN_WIDTH, 0);
    }
    
}
#pragma mark - getter
- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_TABBAR_HEIGHT)];
        _scrollView.delegate = self;
        _scrollView.pagingEnabled = YES;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
    }
    return  _scrollView;
}
#pragma mark - SPPageMenu的代理方法

- (void)pageMenu:(SPPageMenu *)pageMenu itemSelectedAtIndex:(NSInteger)index {
    NSLog(@"%zd",index);
}

- (void)pageMenu:(SPPageMenu *)pageMenu itemSelectedFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex {
    NSLog(@"%zd------->%zd",fromIndex,toIndex);

    // 如果该代理方法是由拖拽self.scrollView而触发，说明self.scrollView已经在用户手指的拖拽下而发生偏移，此时不需要再用代码去设置偏移量，否则在跟踪模式为SPPageMenuTrackerFollowingModeHalf的情况下，滑到屏幕一半时会有闪跳现象。闪跳是因为外界设置的scrollView偏移和用户拖拽产生冲突
    if (!self.scrollView.isDragging) { // 判断用户是否在拖拽scrollView
        // 如果fromIndex与toIndex之差大于等于2,说明跨界面移动了,此时不动画.
        if (labs(toIndex - fromIndex) >= 2) {
            [self.scrollView setContentOffset:CGPointMake(GK_SCREEN_WIDTH * toIndex, 0) animated:NO];
        } else {
            [self.scrollView setContentOffset:CGPointMake(GK_SCREEN_WIDTH * toIndex, 0) animated:YES];
        }
    }

    if (self.myChildViewControllers.count <= toIndex) {return;}

    UIViewController *targetViewController = self.myChildViewControllers[toIndex];
    // 如果已经加载过，就不再加载
    if ([targetViewController isViewLoaded]) return;

    targetViewController.view.frame = CGRectMake(GK_SCREEN_WIDTH * toIndex, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_TABBAR_HEIGHT);
    [_scrollView addSubview:targetViewController.view];

}
-(void)CarpVideoRightBtnClick{
    
    
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
