//
//  AppDelegate+SafeApp.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "AppDelegate+SafeApp.h"
#import "CarpVideoCatagoryModel.h"
#import "CarpVideoCatagoryDetailModel.h"
@implementation AppDelegate (SafeApp)
+(void)AppDelegateConfiguartionsafe{
    [self CarpVideoConfigerCAtagroyMoels];
    [self CarpVideoCatagoryDetailModelConfigs];
}
+(void)CarpVideoConfigerCAtagroyMoels{
    
    NSMutableArray * tempArr = [NSMutableArray array];
    CarpVideoCatagoryModel * catagroyModel   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel.imgIcon = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
    catagroyModel.userlocation = @"浙江 杭州";
    catagroyModel.userName = @"PeterGY";
    catagroyModel.title = @"之前一直传闻不断的《老友记重聚特辑》，随着正式预告片的推出终于被实锤。特辑播出之前，我再一次打开《老友记》，不禁自问这部剧为何能一直吸引我。";
    catagroyModel.imgs = @[@"https://img3.doubanio.com/view/thing_review/l/public/p6034860.jpg",@"https://img9.doubanio.com/view/thing_review/l/public/p6054775.jpg",@"https://img1.doubanio.com/view/thing_review/l/public/p6054837.jpg"];
    catagroyModel.likeNums = 12;
    catagroyModel.viewsNum = 121;
    catagroyModel.shareNums = 0;
    catagroyModel.isLike = NO;
    catagroyModel.isVideo = YES;
    catagroyModel.isFallow = NO;
    catagroyModel.userID = 0;
    catagroyModel.videoTime = @"02:11";
    catagroyModel.videoUrl = @"https://vt1.doubanio.com/202106151339/5a3d337a1e644e2130f1431df016f621/view/movie/M/402760011.mp4";
    catagroyModel.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel];
    
    
    CarpVideoCatagoryModel * catagroyModel1   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel1.imgIcon = @"https://img2.doubanio.com/icon/u124812731-41.jpg";
    catagroyModel1.userlocation = @"浙江 诸暨";
    catagroyModel1.userName = @"女神的秋裤";
    catagroyModel1.title = @"有沃伦夫妇打底，看起来很正统，很有《招魂》系列的样子，但没有底蕴。故事并没有交代清楚，逻辑也比较弱，恐怖桥段比较温和，内容上没什么创新，也没了沃伦夫妇相濡以沫的真挚情感。总体像一部打小怪的番外。";
    catagroyModel1.imgs = @[@"https://img9.doubanio.com/view/photo/l/public/p2654626314.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2654626315.jpg",@"https://img2.doubanio.com/view/photo/l/public/p2654626313.jpg",@"https://img2.doubanio.com/view/photo/l/public/p2648542041.jpg"];
    catagroyModel1.likeNums = 10;
    catagroyModel1.viewsNum = 134;
    catagroyModel1.shareNums = 1;
    catagroyModel1.isLike = NO;
    catagroyModel1.isVideo = NO;
    catagroyModel1.isFallow = NO;
    catagroyModel1.userID = 1;
    catagroyModel1.videoTime = @"";
    catagroyModel1.videoUrl = @"";
    catagroyModel1.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel1];
    
    
    CarpVideoCatagoryModel * catagroyModel2   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel2.imgIcon = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
    catagroyModel2.userlocation = @"浙江 绍兴";
    catagroyModel2.userName = @"辣手修猫";
    catagroyModel2.title = @"比预期的好太多，诡异的气氛拿捏的非常出色，网大第一部能拿得出手的鬼吹灯。";
    catagroyModel2.imgs = @[@"https://img9.doubanio.com/view/photo/l/public/p2655992384.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2655992695.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2655992696.jpg"];
    catagroyModel2.likeNums = 341;
    catagroyModel2.viewsNum = 12;
    catagroyModel2.shareNums = 1;
    catagroyModel2.isLike = NO;
    catagroyModel2.isVideo = NO;
    catagroyModel2.isFallow = NO;
    catagroyModel2.userID = 2;
    catagroyModel2.videoTime = @"";
    catagroyModel2.videoUrl = @"";
    catagroyModel2.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel2];
    
    
    
    CarpVideoCatagoryModel * catagroyModel3   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel3.imgIcon = @"https://img9.doubanio.com/icon/u206276962-5.jpg";
    catagroyModel3.userlocation = @"浙江 金华";
    catagroyModel3.userName = @"Allen艾伦艾伦";
    catagroyModel3.title = @"就只好奇郭富城和Roy是什么关系？ Roy他俩会不会是同性恋，之后借前妻晓雪的肚子生了儿子？？？有人站队吗？";
    catagroyModel3.imgs = @[@"https://img1.doubanio.com/view/photo/l/public/p2579398778.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2579398776.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2579398774.jpg",@"https://img2.doubanio.com/view/photo/l/public/p2579398772.jpg"];
    catagroyModel3.likeNums = 321;
    catagroyModel3.viewsNum = 53;
    catagroyModel3.shareNums = 1;
    catagroyModel3.isLike = NO;
    catagroyModel3.isVideo = YES;
    catagroyModel3.isFallow = NO;
    catagroyModel3.userID = 3;
    catagroyModel3.videoTime = @"02:03";
    catagroyModel3.videoUrl = @"https://vt1.doubanio.com/202106151747/22ee522b6feddba919e037b316ae08e0/view/movie/M/402740945.mp4";
    catagroyModel3.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel3];
    
    
    
    
    
    BOOL catagory_Succed = [[NSUserDefaults standardUserDefaults] boolForKey:@"CarpVideoCatagoryModel"];
    if (catagory_Succed == NO) {
    BOOL  catagoryIsSucded = [WHC_ModelSqlite inserts:tempArr.copy];
    [[NSUserDefaults standardUserDefaults] setBool:catagoryIsSucded forKey:@"CarpVideoCatagoryModel"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
+(void)CarpVideoCatagoryDetailModelConfigs{
    NSMutableArray * tempArr = [NSMutableArray array];
    CarpVideoCatagoryDetailModel * catagoryModel = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel.time  = @"周三";
    catagoryModel.userImgurl = @"https://img1.doubanio.com/icon/u46090931-17.jpg";
    catagoryModel.userNameText = @"溪水边宁静天";
    catagoryModel.catagoryID = 0;
    catagoryModel.comentID = 0;
    catagoryModel.Content = @"会在国内上吗？！！我的天，语言组织能力失败。老友记是我友情的乌托邦！最低迷的时候也是老友记陪伴度过的。真的很期待！！";
    catagoryModel.CellHeight = 0;
    [tempArr addObject:catagoryModel];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel1 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel1.time  = @"周三";
    catagoryModel1.userImgurl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    catagoryModel1.userNameText = @"vitan again";
    catagoryModel1.catagoryID = 0;
    catagoryModel1.comentID = 2;
    catagoryModel1.Content = @"从官方的宣发来看，到时出镜的还会有第七位老友珍妮丝，甘瑟，杰克&朱迪（没错他们还在），理查德（对的他也在）。以及贝克汉姆，丁日，老鳖等一众明星和导演（塞这么多人，最后一丝丝1小时剧情续集的幻想也破灭了?。行吧，还是得看）";
    catagoryModel1.CellHeight = 0;
    [tempArr addObject:catagoryModel1];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel2 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel2.time  = @"周一";
    catagoryModel2.userImgurl = @"https://img2.doubanio.com/icon/u135321211-2.jpg";
    catagoryModel2.userNameText = @"bigbye";
    catagoryModel2.catagoryID = 1;
    catagoryModel2.comentID = 3;
    catagoryModel2.Content = @"哪里恐怖了？没有温子仁这就一爱情动作片，邪恶力量式单元剧，毫无技术含量也毫无新意。然而不管温子仁拍不拍，该系列性癖都是病弱帕翠克&黑化帕翠克，帕翠克被人追&帕翠克追人。";
    catagoryModel2.CellHeight = 0;
    [tempArr addObject:catagoryModel2];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel3 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel3.time  = @"周一";
    catagoryModel3.userImgurl = @"https://img1.doubanio.com/icon/u183679667-39.jpg";
    catagoryModel3.userNameText = @"梵顿Kirin";
    catagoryModel3.catagoryID = 1;
    catagoryModel3.comentID = 4;
    catagoryModel3.Content = @"格局放大了后很明显不如前两部。惊吓部分很弱，几乎可以忽略，剧情也稍逊色，打破诅咒的方式有点突然(敷衍)。 但是制作还算精良，查案/黑魔法(算是吧)/魂穿这三方面的设定有被爽到。 对比上半年其他大部分恐影，《招魂3》很明显还是胜出了不少。 这样的爱情谁不想要呢？ 降低了期待值后还是愿意给一个四星。";
    catagoryModel3.CellHeight = 0;
    [tempArr addObject:catagoryModel3];
    
    
    
    CarpVideoCatagoryDetailModel * catagoryModel4 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel4.time  = @"周一";
    catagoryModel4.userImgurl = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
    catagoryModel4.userNameText = @"眠眠睡得香";
    catagoryModel4.catagoryID = 2;
    catagoryModel4.comentID = 5;
    catagoryModel4.Content = @"看了大家的讨论，二刷后，想出了一个理论，给大家参考。 老赵是黄皮子猎人，说明他不害怕黄皮子，可能在之前，追踪黄皮子的时候，发现了地下的黄皮子庙，老赵发现墙上的壁画能够复活死人，条件是用活人献祭，老赵的女儿死了，老赵刚好发现在阴宅遮半天的女儿，于是杀了她给黄皮... ";
    catagoryModel4.CellHeight = 0;
    [tempArr addObject:catagoryModel4];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel5 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel5.time  = @"周五";
    catagoryModel5.userImgurl = @"https://img2.doubanio.com/icon/u214329473-2.jpg";
    catagoryModel5.userNameText = @"如果我喺陈奕迅";
    catagoryModel5.catagoryID = 3;
    catagoryModel5.comentID = 5;
    catagoryModel5.Content = @"看预告片的第一反应，就是有点像借鉴了《看不见的客人》+《寄生虫》这两部电影";
    catagoryModel5.CellHeight = 0;
    [tempArr addObject:catagoryModel5];
    
    
    
    CarpVideoCatagoryDetailModel * catagoryModel6 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel6.time  = @"周五";
    catagoryModel6.userImgurl = @"https://img3.doubanio.com/icon/u50803810-20.jpg";
    catagoryModel6.userNameText = @"Whateverwillbe";
    catagoryModel6.catagoryID = 3;
    catagoryModel6.comentID = 6;
    catagoryModel6.Content = @"和寄生虫全方位相似，包括中途响起的配乐…… 不可能是巧合吧";
    catagoryModel6.CellHeight = 0;
    [tempArr addObject:catagoryModel6];
    
    
    BOOL catagory_Succed = [[NSUserDefaults standardUserDefaults] boolForKey:@"CarpVideoCatagoryDetailModel"];
    if (catagory_Succed == NO) {
    BOOL   catagoryIsSucded = [WHC_ModelSqlite inserts:tempArr.copy];
    [[NSUserDefaults standardUserDefaults] setBool:catagoryIsSucded forKey:@"CarpVideoCatagoryDetailModel"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
@end
