//
//  CarpVideoNotifiCationDetailViewController.m
//
//
//  Created by zjlk03 on 2021/4/26.
//

#import "CarpVideoNotifiCationDetailViewController.h"

@interface CarpVideoNotifiCationDetailViewController ()

@end

@implementation CarpVideoNotifiCationDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.gk_navTitle = @"详情";
    
    UILabel * CarpVideoTopTitle = [[UILabel alloc]initWithFrame:CGRectMake(0, NaviH+K(10), SCREEN_Width, K(18))];
    CarpVideoTopTitle.textAlignment = NSTextAlignmentCenter;
    CarpVideoTopTitle.font = [UIFont systemFontOfSize:K(15)];
    CarpVideoTopTitle.text=  @"关于6月29号鲤鱼视频维护公告";
    [self.view addSubview:CarpVideoTopTitle];
    
    CGRect CarpVideoDetailRect = [@"尊敬的用户，您好～！\n因服务器升级需要，鲤鱼视频将于2021年6月29号服务器停机进行升级，届时app将无法访问大概有半个小时左右，还请大家稍安伪造等待一下，感谢各位的配合与支持，谢谢～" cxl_sizeWithMoreString:[UIFont systemFontOfSize:14] maxWidth:SCREEN_Width-K(20)];
    UILabel * CarpVideoDetailb =[[UILabel alloc]initWithFrame:CGRectMake(K(10), CGRectGetMaxY(CarpVideoTopTitle.frame)+K(10), CarpVideoDetailRect.size.width, CarpVideoDetailRect.size.height)];
    CarpVideoDetailb.numberOfLines = 0;
    CarpVideoDetailb.font = [UIFont systemFontOfSize:14];
    CarpVideoDetailb.textColor = LGDLightBLackColor;
    CarpVideoDetailb.text = @"尊敬的用户，您好～！\n因服务器升级需要，，鲤鱼视频将于2021年6月25号服务器停机进行升级，届时app将无法访问大概有半个小时左右，还请大家稍安伪造等待一下，感谢各位的配合与支持，谢谢～";
    [self.view addSubview:CarpVideoDetailb];
    
    UILabel *  CarpVideoBtomlb = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_Width-K(130), CGRectGetMaxY(CarpVideoDetailb.frame)+K(10), K(120), K(14))];
    CarpVideoBtomlb.textAlignment = NSTextAlignmentRight;
    CarpVideoBtomlb.font = [UIFont systemFontOfSize:12];
    CarpVideoBtomlb.textColor =LGDLightBLackColor;
    CarpVideoBtomlb.text = @"鲤鱼视频";
    [self.view addSubview:CarpVideoBtomlb];
    
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

