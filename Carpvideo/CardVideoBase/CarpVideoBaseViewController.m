//
//  CarpVideoBaseViewController.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoBaseViewController.h"
#import "CarpVideoLogoinViewController.h"
@interface CarpVideoBaseViewController ()

@end

@implementation CarpVideoBaseViewController
-(void)CarpVideoShowLoginVc{

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CarpVideoLogoinViewController * carologinVc = [[CarpVideoLogoinViewController alloc]init];
        UINavigationController * carpLoNav = [UINavigationController rootVC:carologinVc translationScale:YES];
        [self  presentViewController:carpLoNav animated:YES completion:nil];
    });

}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = LGDViewBJColor;
//    self.gk_navLineHidden =  YES;
    // Do any additional setup after loading the view.
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
